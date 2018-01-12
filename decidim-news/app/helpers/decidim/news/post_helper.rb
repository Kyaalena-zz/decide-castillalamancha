# frozen_string_literal: true

module Decidim
  module News
    # Custom helpers used in blogs views
    module PostHelper
      include Decidim::ApplicationHelper
      include Decidim::TranslationsHelper
      include Decidim::ResourceHelper

      # Public: truncates the blog body
      #
      # blog - a Decidim::Blog instance
      # max_length - a number to limit the length of the body
      #
      # Returns the blog's body truncated.
      def post_description(post, max_length = 120)
        link = post_path(post)
        body = translated_attribute(post.content).html_safe
        tail = "... #{link_to(t("read_more", scope: "decidim.news"), link)}".html_safe
        CGI.unescapeHTML html_truncate(body, max_length: max_length, tail: tail)
      end
    end
  end
end
