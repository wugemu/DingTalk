.class public final Lhom;
.super Ljava/lang/Object;
.source "MiniAppUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "MiniAppUtil"

    sput-object v0, Lhom;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lhom;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;ZI)Landroid/util/Pair;
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "enter"    # Z
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "ZI)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 116
    if-eqz p0, :cond_0

    .line 118
    const-string/jumbo v6, "mainTask"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 119
    .local v4, "isMainTask":Z
    if-eqz v4, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 224
    .end local v4    # "isMainTask":Z
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const/4 v3, 0x0

    .line 133
    .local v3, "inputAnim":I
    const/4 v5, 0x0

    .line 134
    .local v5, "outAnim":I
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 161
    const-string/jumbo v1, ""

    .line 162
    .local v1, "ddMode":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 163
    const-string/jumbo v6, "ddMode"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    const-string/jumbo v1, "present"

    .line 171
    :cond_2
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v6, "hybrid_new_anim_full_active"

    invoke-static {v6, v8}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 174
    .local v2, "forceNewAnimation":Z
    const-string/jumbo v6, "present"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 176
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "e_app_launch_animation_mode"

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_a

    .line 178
    :cond_3
    if-nez p2, :cond_6

    .line 179
    if-eqz p1, :cond_5

    .line 180
    sget v3, Lhdn$a;->activity_e_app_slide_bottom_in:I

    .line 181
    sget v5, Lhdn$a;->activity_e_app_slide_up_out:I

    .line 223
    :cond_4
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .local v0, "animPair":Landroid/util/Pair;
    goto :goto_0

    .line 183
    .end local v0    # "animPair":Landroid/util/Pair;
    :cond_5
    sget v3, Lhdn$a;->activity_e_app_slide_up_in:I

    .line 184
    sget v5, Lhdn$a;->activity_e_app_slide_bottom_out:I

    goto :goto_1

    .line 186
    :cond_6
    if-ne p2, v8, :cond_8

    .line 187
    if-eqz p1, :cond_7

    .line 188
    sget v3, Lhdn$a;->activity_e_app_minimize_in:I

    .line 189
    sget v5, Lhdn$a;->activity_e_app_slide_up_out:I

    goto :goto_1

    .line 191
    :cond_7
    sget v3, Lhdn$a;->activity_e_app_slide_up_in:I

    .line 192
    sget v5, Lhdn$a;->activity_e_app_minimize_out:I

    goto :goto_1

    .line 195
    :cond_8
    if-eqz p1, :cond_9

    .line 196
    sget v3, Lhdn$a;->activity_e_app_slide_bottom_in:I

    .line 197
    sget v5, Lhdn$a;->activity_e_app_slide_up_out:I

    goto :goto_1

    .line 199
    :cond_9
    sget v3, Lhdn$a;->activity_e_app_slide_up_in:I

    .line 200
    sget v5, Lhdn$a;->activity_e_app_slide_bottom_out:I

    goto :goto_1

    .line 204
    :cond_a
    if-eqz p1, :cond_b

    .line 205
    sget v3, Lhdn$a;->activity_slide_right_in:I

    .line 206
    sget v5, Lhdn$a;->activity_slide_left_out:I

    goto :goto_1

    .line 208
    :cond_b
    sget v3, Lhdn$a;->activity_slide_left_in:I

    .line 209
    sget v5, Lhdn$a;->activity_slide_right_out:I

    goto :goto_1

    .line 212
    :cond_c
    const-string/jumbo v6, "push"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 214
    if-eqz p1, :cond_d

    .line 215
    sget v3, Lhdn$a;->activity_slide_right_in:I

    .line 216
    sget v5, Lhdn$a;->activity_slide_left_out:I

    goto :goto_1

    .line 218
    :cond_d
    sget v3, Lhdn$a;->activity_slide_left_in:I

    .line 219
    sget v5, Lhdn$a;->activity_slide_right_out:I

    goto :goto_1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 295
    sparse-switch p0, :sswitch_data_0

    .line 312
    const-string/jumbo v0, "error unknown"

    :goto_0
    return-object v0

    .line 297
    :sswitch_0
    const-string/jumbo v0, "no permission"

    goto :goto_0

    .line 299
    :sswitch_1
    const-string/jumbo v0, "is recording"

    goto :goto_0

    .line 301
    :sswitch_2
    const-string/jumbo v0, "save file failed"

    goto :goto_0

    .line 303
    :sswitch_3
    const-string/jumbo v0, "invalid params"

    goto :goto_0

    .line 305
    :sswitch_4
    const-string/jumbo v0, "not in open list"

    goto :goto_0

    .line 307
    :sswitch_5
    const-string/jumbo v0, "no org bind"

    goto :goto_0

    .line 309
    :sswitch_6
    const-string/jumbo v0, "user cancel"

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_0
        0xb -> :sswitch_6
        0xd -> :sswitch_2
        0x4e21 -> :sswitch_1
        0xc351 -> :sswitch_4
        0xc352 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    const/4 v2, 0x0

    .line 382
    if-nez p0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v2

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 387
    .local v0, "page":Liop;
    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 391
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "title":Ljava/lang/String;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 99
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 101
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 102
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 105
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "miniAppId"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 348
    .line 2340
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2341
    const/4 v0, 0x0

    .line 349
    .local v0, "eAppUrl":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 352
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "page"

    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v0

    .line 2344
    .end local v0    # "eAppUrl":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "dingtalk://dingtalkclient/action/open_mini_app?pVersion=1&packageType=1&miniAppId="

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    .restart local v0    # "eAppUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encodedUrl"    # Ljava/lang/String;
    .param p1, "notEncodePlaceHolder"    # Ljava/lang/String;
    .param p2, "notEncodeWord"    # Ljava/lang/String;

    .prologue
    .line 395
    move-object v2, p0

    .line 397
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "encodedPlaceHolder":Ljava/lang/String;
    const-string/jumbo v4, "UTF-8"

    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "encodedWord":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 403
    .end local v0    # "encodedPlaceHolder":Ljava/lang/String;
    .end local v1    # "encodedWord":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 400
    :catch_0
    move-exception v3

    .line 401
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Ljava/util/Map;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p0, :cond_1

    .line 61
    const/4 v8, 0x0

    .line 87
    :cond_0
    :goto_0
    return-object v8

    .line 64
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v8, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v9, "ding_user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "miniAppId":Ljava/lang/String;
    const-string/jumbo v9, "app_id"

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v9, "frameworkSceneId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 73
    .local v3, "fromType":I
    const-string/jumbo v9, "from"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v9, "ddCorpId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "corpId":Ljava/lang/String;
    const-string/jumbo v9, "corp_id"

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v9, "app_name"

    invoke-static {v4}, Lhom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 78
    .local v6, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v5

    .line 79
    .local v5, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v5, :cond_0

    .line 80
    const-string/jumbo v9, "is_manager"

    iget-boolean v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "fromType":I
    .end local v4    # "miniAppId":Ljava/lang/String;
    .end local v5    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v6    # "orgId":J
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 232
    .line 1242
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 1246
    if-eqz v0, :cond_0

    .line 1249
    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1252
    sget-object v1, Lhom;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "callBackEvent error, e = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 2098
    const-string/jumbo v0, "mini_api"

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "onErrorEventName"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 262
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 263
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v1, "errorCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v1, "errorMessage"

    invoke-static {p3}, Lhom;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {p0, p1, v0}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 267
    return-void
.end method

.method public static a(Liny;)V
    .locals 3
    .param p0, "bridgeContext"    # Liny;

    .prologue
    .line 279
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 280
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    if-eqz p0, :cond_0

    .line 282
    invoke-interface {p0, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public static a(Liny;I)V
    .locals 3
    .param p0, "bridgeContext"    # Liny;
    .param p1, "errorCode"    # I

    .prologue
    .line 270
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 271
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "errorMessage"

    invoke-static {p1}, Lhom;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    if-eqz p0, :cond_0

    .line 274
    invoke-interface {p0, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 276
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "originalPage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    :goto_0
    return-object p0

    .line 414
    :cond_0
    const-string/jumbo v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    const-string/jumbo v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 416
    .local v2, "targetIndex":I
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "pagePrefix":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "pageSuffix":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    const-string/jumbo v4, "?$pageId="

    aput-object v4, v3, v6

    .line 421
    invoke-static {}, Lhmq;->a()Lhmq;

    invoke-static {}, Lhmq;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "&"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    aput-object v1, v3, v4

    .line 418
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    goto :goto_0

    .line 425
    .end local v0    # "pagePrefix":Ljava/lang/String;
    .end local v1    # "pageSuffix":Ljava/lang/String;
    .end local v2    # "targetIndex":I
    :cond_1
    new-array v3, v8, [Ljava/lang/String;

    aput-object p0, v3, v5

    const-string/jumbo v4, "?$pageId="

    aput-object v4, v3, v6

    .line 428
    invoke-static {}, Lhmq;->a()Lhmq;

    invoke-static {}, Lhmq;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 425
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Liny;)V
    .locals 1
    .param p0, "bridgeContext"    # Liny;

    .prologue
    .line 290
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 291
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p0, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 292
    return-void
.end method
