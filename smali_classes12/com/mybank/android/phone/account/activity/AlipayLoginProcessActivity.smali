.class public Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;
.super Lcom/mybank/android/phone/common/component/custom/CustomActivity;
.source "AlipayLoginProcessActivity.java"


# instance fields
.field a:Ljfd;

.field b:Ljava/lang/String;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;

    .prologue
    .line 34
    .line 3248
    invoke-static {}, Ljfu;->a()V

    .line 3249
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;)V
    .locals 10
    .param p0, "x0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;
    .param p1, "x1"    # Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    .line 2114
    iget-object v4, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultCode:Ljava/lang/String;

    .line 2115
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2116
    const-string/jumbo v0, "token"

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->token:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const-string/jumbo v0, ""

    .line 2119
    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->extendMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 2120
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->extendMap:Ljava/util/Map;

    const-string/jumbo v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2122
    const-string/jumbo v1, "alipayCertName"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    :cond_0
    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->extendMap:Ljava/util/Map;

    const-string/jumbo v6, "alipayUserId"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2127
    const-string/jumbo v6, "alipayUserId"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 2131
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    if-eqz v0, :cond_2

    .line 2132
    const-string/jumbo v0, "roleId"

    iget-object v6, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v6, v6, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    :cond_2
    invoke-static {v4}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2136
    const-string/jumbo v0, "225"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "309"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "956"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2137
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "home_url"

    invoke-static {p0, v2}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "accountGuid.html?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljfr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2248
    :cond_4
    :goto_0
    invoke-static {}, Ljfu;->a()V

    .line 2249
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    .line 2232
    :goto_1
    return-void

    .line 2138
    :cond_5
    const-string/jumbo v0, "307"

    invoke-static {v4}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2141
    const-string/jumbo v0, ""

    move v2, v3

    .line 2143
    :goto_2
    iget-object v3, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v3, v3, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->failReason:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 2144
    if-nez v2, :cond_6

    .line 2145
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v0, v0, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->failReason:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2143
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2147
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v0, v0, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->failReason:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2152
    :cond_7
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2157
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "home_url"

    invoke-static {p0, v3}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "failResult.html?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljfr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2153
    :catch_0
    move-exception v2

    .line 2154
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 2159
    :cond_8
    const-string/jumbo v0, "506"

    invoke-static {v4}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2160
    const-string/jumbo v0, "verifyDay"

    iget-object v2, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v2, v2, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->finishDay:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v0, v0, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->failReason:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v0, v0, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->failReason:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2162
    const-string/jumbo v2, "verifyReason"

    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v0, v0, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->failReason:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "home_url"

    invoke-static {p0, v2}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "checkingResult.html?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->mybankRoleInfo:Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;

    iget-object v1, v1, Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;->finishDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljfr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2166
    :cond_a
    const-string/jumbo v0, "425"

    invoke-static {v4}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2167
    invoke-static {p0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyMYBank(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 2169
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->ctuVerifyId:Ljava/lang/String;

    const-string/jumbo v3, "fccustprod_mybankOpenAccount_reapply_register_mobileClient"

    new-instance v5, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;

    invoke-direct {v5, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$6;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    goto/16 :goto_1

    .line 2183
    :cond_b
    const-string/jumbo v0, "404"

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2184
    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultView:Ljava/lang/String;

    const-string/jumbo v3, "\u8054\u7cfb\u5ba2\u670d"

    new-instance v4, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$7;

    invoke-direct {v4, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$7;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    const-string/jumbo v5, "\u8fd4\u56de\u9996\u9875"

    new-instance v6, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$8;

    invoke-direct {v6, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$8;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 2201
    :cond_c
    const-string/jumbo v0, "051"

    iget-object v1, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Ljfr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2202
    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultView:Ljava/lang/String;

    const-string/jumbo v3, "\u8054\u7cfb\u5ba2\u670d"

    new-instance v4, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$9;

    invoke-direct {v4, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$9;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    const-string/jumbo v5, "\u8fd4\u56de\u9996\u9875"

    new-instance v6, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$10;

    invoke-direct {v6, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$10;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 2220
    :cond_d
    iget v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->showType:I

    if-eqz v0, :cond_f

    .line 2223
    iget v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->showType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2224
    iget-object v3, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->d:Ljfs;

    sget v0, Ljfw$d;->tip:I

    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultView:Ljava/lang/String;

    sget v0, Ljfw$d;->sure:I

    .line 2225
    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$2;

    invoke-direct {v7, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$2;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    move-object v8, v2

    move-object v9, v2

    .line 2224
    invoke-virtual/range {v3 .. v9}, Ljfs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 2233
    :cond_e
    iget v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->showType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 2236
    iget v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->showType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 2239
    :cond_f
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/UserLoginResult;->resultView:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    .line 3088
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a:Ljfd;

    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1, v1, p2}, Ljfd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Llgs;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$4;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$4;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    new-instance v2, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$5;

    invoke-direct {v2, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$5;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    invoke-virtual {v0, v1, v2}, Llgs;->a(Llhg;Llhg;)Llgz;

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v3, Ljfd;

    invoke-direct {v3, p0}, Ljfd;-><init>(Ljfe;)V

    iput-object v3, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a:Ljfd;

    .line 45
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 46
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string/jumbo v3, "auth_code"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->b:Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 58
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->b:Ljava/lang/String;

    .line 1065
    iget-object v4, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->a:Ljfd;

    iget-object v5, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;->c:Ljava/util/HashMap;

    .line 2034
    const-string/jumbo v6, ""

    invoke-virtual {v4, p0, v3, v5, v6}, Ljfd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Llgs;

    move-result-object v3

    .line 1065
    new-instance v4, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$1;

    invoke-direct {v4, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$1;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    new-instance v5, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$3;

    invoke-direct {v5, p0}, Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity$3;-><init>(Lcom/mybank/android/phone/account/activity/AlipayLoginProcessActivity;)V

    invoke-virtual {v3, v4, v5}, Llgs;->a(Llhg;Llhg;)Llgz;

    goto :goto_0
.end method
