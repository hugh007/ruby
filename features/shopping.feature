# language: zh-CN
#| feature          | 功能                 |
#| background       | 背景                 |
#| scenario         | 场景                 |
#| scenario_outline | 场景大纲               |
#| examples         | 例子                 |
#| given            | * / 假如<            |
#| when             | * / 当<             |
#| then             | * / 那么<            |
#| and              | * / 而且<            |
#| but              | * / 但是<            |

场景:  添加商品到购物车
    假如 我已经登录
    当 我将下列商品添加到购物车:
        | product_id        | amount  |
        | 1016732           |   1     |
    那么 购物车里应该有商品:
        | product_id        | amount  |
        | 1016732           |   1     |

  场景: 下单流程
    假如 我已经登录
    而且 我的购物车里有商品:
        | product_id        | amount  |
        | 1016732           |   1     |
    当 我点击结算订单
    而且 选择默认的收货地址
    而且 选择默认的配送方式
    而且 选择付款方式为<货到付款>
    而且 确认订单
    那么 应该提示下单成功
    而且 数据库中生成正确的订单