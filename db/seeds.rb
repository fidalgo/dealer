# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Organization.delete_all
show_room = Organization.create(name: 'BMW AG Showroom', public_name: 'BMW Showroom',
                                organization_type: Organization.organization_types['show_room'],
                                pricing_policy: Organization.pricing_policies['prestige'])

service = Organization.create(name: 'BMW AG Service', public_name: 'BMW Service',
                              organization_type: Organization.organization_types['service'],
                              pricing_policy: Organization.pricing_policies['flexible'])

dealer = Organization.create(name: 'BMW AG Dealer', public_name: 'BMW Dealer',
                             organization_type: Organization.organization_types['dealer'],
                             pricing_policy: Organization.pricing_policies['fixed'])

Model.delete_all
serie_1 = Model.create(name: 'serie_1', model_slug: '1_series', organization: show_room)

serie_2 = Model.create(name: 'serie_2', model_slug: '2_series', organization: service)

serie_2 = Model.create(name: 'serie_3', model_slug: '3_series', organization: dealer)

ModelType.delete_all
ModelType.create(model: serie_1, name: 'bmw_116i', model_type_slug: 'bmw116i',
                 model_type_code: '116i', base_price: 16_000)
ModelType.create(model: serie_1, name: 'bmw_125i', model_type_slug: 'bmw125i',
                 model_type_code: '125i', base_price: 19_000)
