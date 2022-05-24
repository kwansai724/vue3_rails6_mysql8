class HomeController < ApplicationController
  def index
    @title = 'Home#index'
    @description = 'トップページ'
    @contents = get_contents
  end

  private

  def get_contents
    {
      outer_links: [
        {
          name: 'Qiitaページ',
          text: 'Qiita',
          url: 'https://qiita.com/t0yohei/items/cd11b15642fbb26f71e2'
        },
        {
          name: 'ソースコード',
          text: 'GitHub',
          url: 'https://github.com/t0yohei/rails-vue3-app'
        }
      ],
    }
  end
end
