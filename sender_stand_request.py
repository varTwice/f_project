import configuration
import requests
import data


def post_new_order(body):
    request_new_order = requests.post(configuration.URL_SERVICE + configuration.CREATE_ORDER,  # подставляем полный url
                                      json=body,  # тут тело
                                      headers=data.headers)
    track_order = request_new_order.json()["track"]
    return track_order


def get_order_by_track_number():
    track_number = post_new_order(data.body)
    print(configuration.URL_SERVICE + configuration.CHECK_TRACK_EXIST + str(track_number))
    return requests.get(configuration.URL_SERVICE + configuration.CHECK_TRACK_EXIST + str(track_number),
                        headers=data.headers)


response = get_order_by_track_number()
print(response)
print(response.status_code)
