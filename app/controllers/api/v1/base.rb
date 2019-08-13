module API
    module V1
        class Base < Grape::API
            format :json

            mount API::V1::Graduates
            # mount API::V1::AnotherResource

            # add_swagger_documentation mount_path: '/docs',
            #                       base_path: '/',
            #                       in: 'json',
            #                       security_definitions: {
            #                         api_key: {
            #                           type: 'apiKey',
            #                           name: 'Authorization',
            #                           in: 'header'
            #                         }
            #                       },
            #                       info: { title: 'Api for Client' }
        end
    end
end