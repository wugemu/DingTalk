.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    .line 425
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 321
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 321
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 327
    const-string/jumbo v3, "MiniappSharePlugin"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "genBitmapFromView"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "oom =>"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .param p3, "otherAppUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 381
    new-instance v3, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 383
    .local v3, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    new-array v7, v7, [Ljava/lang/String;

    sget v8, Lhdn$k;->dt_miniapp_share_external_title:I

    .line 384
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string/jumbo v8, ": "

    aput-object v8, v7, v10

    iget-object v8, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    aput-object v8, v7, v11

    .line 383
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 387
    iget-object v7, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 389
    iget-object v7, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 392
    if-eqz p3, :cond_0

    const-string/jumbo v7, "$secMiniAppId$"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "uid":Ljava/lang/String;
    const-string/jumbo v1, "TOONAIVE"

    .line 396
    .local v1, "salt":Ljava/lang/String;
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "_"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v6, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "_"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    .line 397
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-static {v7}, Lhoi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "secMiniAppId":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    const-string/jumbo v7, "$secMiniAppId$"

    invoke-virtual {p3, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 405
    .end local v1    # "salt":Ljava/lang/String;
    .end local v2    # "secMiniAppId":Ljava/lang/String;
    .end local v6    # "uid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3, p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v0, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "miniAppTitle"

    iget-object v8, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v7, "miniAppIcon"

    iget-object v8, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v7, "miniAppUrl"

    iget-object v8, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v7, "miniAppImg"

    iget-object v8, p2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {v3, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setExtention(Ljava/util/Map;)V

    .line 413
    return-object v3

    .line 401
    .end local v0    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 402
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;)Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .param p4, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 157
    const-string/jumbo v2, "funcName"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const-string/jumbo v2, "funcName"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    :cond_0
    const-string/jumbo v2, "title"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const-string/jumbo v2, "title"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, "title":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    .line 166
    .end local v16    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const-string/jumbo v2, "url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 168
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    .line 171
    .end local v17    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "desc"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const-string/jumbo v2, "desc"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, "desc":Ljava/lang/String;
    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    .line 175
    .end local v14    # "desc":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p3

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->mdVersion:I

    .line 178
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    const-string/jumbo v2, "@lALPBbCc1ZiCOUnNAQrNAeA"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    .line 182
    :cond_4
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "f_lightapp_new_other_app_share"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 184
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    :try_start_0
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_5
    :goto_0
    const-string/jumbo v2, "otherAppUrl"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8208
    .local v7, "otherAppUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8209
    if-nez p1, :cond_6

    .line 8210
    const-string/jumbo v2, "MiniappSharePlugin"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "otherAppUrl is null in newShareAfterGetImageUrl"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "context is null"

    aput-object v5, v3, v4

    .line 9098
    const-string/jumbo v4, "mini_api"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8224
    .end local v7    # "otherAppUrl":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :goto_1
    return-void

    .line 187
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v15

    .line 188
    .local v15, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v15}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 8214
    .end local v15    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v7    # "otherAppUrl":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_7

    .line 8215
    const-string/jumbo v2, "MiniappSharePlugin"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "otherAppUrl is null in newShareAfterGetImageUrl"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "context is not instanceof Activity"

    aput-object v5, v3, v4

    .line 10098
    const-string/jumbo v4, "mini_api"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 8219
    :cond_7
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareMiniAppToFriend(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V

    goto :goto_1

    .line 8222
    .restart local p1    # "context":Landroid/content/Context;
    :cond_8
    if-eqz p1, :cond_9

    if-nez p3, :cond_a

    .line 8223
    :cond_9
    const-string/jumbo v2, "MiniappSharePlugin"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "newShareAfterGetImageUrl"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "context is null or miniAppDo is null"

    aput-object v5, v3, v4

    .line 11098
    const-string/jumbo v4, "mini_api"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 8226
    :cond_a
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v8

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcaa;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 196
    .end local v7    # "otherAppUrl":Ljava/lang/String;
    :cond_b
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_for_miniapp_msg"

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 198
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "f_lightapp_mini_share_im_new_api"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 199
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 202
    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const v4, 0x10008000

    invoke-virtual {v2, v3, v10, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 66
    .line 13333
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .param p4, "x4"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 66
    .line 12361
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 12362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12363
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingdingMiniAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12364
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12365
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12366
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12237
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v2

    .line 12238
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 66
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;
    .locals 2
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "hybrid_share_get_top_activity"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    .line 11344
    iget-object v0, v0, Lhlq;->a:Landroid/app/Activity;

    .line 421
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 66
    .line 13350
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$5;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$5;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 13
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    .line 4065
    iget-object v8, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 115
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v0, "startShare"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 117
    .local v11, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "channelName"

    const-string/jumbo v1, "channelName"

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "shareResult"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v0, "bizType"

    const-string/jumbo v1, "bizType"

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-interface {p2, v11}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 148
    .end local v11    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_1
    const-string/jumbo v0, "shareToChannel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    if-eqz p1, :cond_0

    .line 4121
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 124
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v7, :cond_0

    .line 125
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;-><init>()V

    .line 5081
    .local v4, "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 126
    if-eqz v0, :cond_2

    .line 6081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 126
    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 127
    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "miniAppId":Ljava/lang/String;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 129
    .local v10, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v10, :cond_2

    .line 130
    invoke-interface {v10, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v9

    .line 131
    .local v9, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v9, :cond_2

    .line 132
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    .line 133
    iget-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    .line 138
    .end local v6    # "miniAppId":Ljava/lang/String;
    .end local v9    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v10    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .restart local v6    # "miniAppId":Ljava/lang/String;
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v6, v4, v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 7243
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    .line 7244
    if-eqz v2, :cond_0

    .line 7245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 7248
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    if-eqz v0, :cond_4

    .line 7249
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->b()V

    .line 7251
    :cond_4
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    .line 7257
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->a()V

    .line 7259
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 7260
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7262
    const-string/jumbo v0, "MiniappSharePlugin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v12

    .line 7263
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v12, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 92
    const/4 v0, 0x0

    .line 1081
    .local v0, "h5Page":Liop;
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 93
    instance-of v4, v4, Liop;

    if-eqz v4, :cond_0

    .line 2081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 94
    .end local v0    # "h5Page":Liop;
    check-cast v0, Liop;

    .line 96
    .restart local v0    # "h5Page":Liop;
    :cond_0
    if-nez v0, :cond_2

    .line 109
    :cond_1
    :goto_0
    return v3

    .line 101
    :cond_2
    const-string/jumbo v4, "h5ToolbarMenuBt"

    .line 3065
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 103
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "tag"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v4, "shareFriend"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 85
    const-string/jumbo v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "startShare"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "shareToChannel"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method
