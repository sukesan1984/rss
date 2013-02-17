require 'feed-normalizer'
require 'pp'

class GetPosts
    @blogs = Blog.all
    @blogs.each do |blog|
      source = blog.url
      feed   = FeedNormalizer::FeedNormalizer.parse(open(source))
      blog_last_update = Time.new();
      feed.entries.each do |entry|
          break if ( entry.last_updated <= blog.last_updated )
          l = entry.last_updated
          l_new_format = Time.new( l.year, l.month, l.day, l.hour, l.min, l.sec )
          blog_last_update = l_new_format if ( l_new_format > blog_last_update )
          @post = Post.new(
              :title        => entry.title,
              :url          => entry.url,
              :description  => entry.description,
              :last_updated => l_new_format,
              :num_click    => 0 )
          @post.save()
      end
      blog.last_updated = blog_last_update
      blog.save()
    end
end
