.class public Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXNavigatorModule.java"


# static fields
.field public static final CALLBACK_MESSAGE:Ljava/lang/String; = "message"

.field public static final CALLBACK_RESULT:Ljava/lang/String; = "result"

.field private static final INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field public static final MSG_FAILED:Ljava/lang/String; = "WX_FAILED"

.field public static final MSG_PARAM_ERR:Ljava/lang/String; = "WX_PARAM_ERR"

.field public static final MSG_SUCCESS:Ljava/lang/String; = "WX_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "Navigator"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final WEEX:Ljava/lang/String; = "com.taobao.android.intent.category.WEEX"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private changeVisibilityOfActionBar(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 307
    .local v2, "hasAppCompatActivity":Z
    :try_start_0
    const-string/jumbo v4, "android.support.v7.app.AppCompatActivity"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v2, 0x1

    .line 312
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 314
    .local v0, "actionbar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 315
    packed-switch p2, :pswitch_data_0

    .line 341
    .end local v0    # "actionbar":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_1
    return v3

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 317
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "actionbar":Landroid/support/v7/app/ActionBar;
    :pswitch_0
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 318
    const/4 v3, 0x1

    .line 319
    goto :goto_1

    .line 321
    :pswitch_1
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 322
    const/4 v3, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "actionbar":Landroid/support/v7/app/ActionBar;
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 328
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 329
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 335
    :pswitch_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 336
    const/4 v3, 0x1

    goto :goto_1

    .line 331
    :pswitch_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 332
    const/4 v3, 0x1

    .line 333
    goto :goto_1

    .line 315
    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clearNavBarLeftItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->clearNavBarLeftItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    if-eqz p2, :cond_0

    .line 225
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-eqz p2, :cond_0

    .line 232
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearNavBarMoreItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->clearNavBarMoreItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    if-eqz p2, :cond_0

    .line 259
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    if-eqz p2, :cond_0

    .line 266
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearNavBarRightItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->clearNavBarRightItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    if-eqz p2, :cond_0

    .line 191
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-eqz p2, :cond_0

    .line 197
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "failure"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 93
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 94
    move-object v0, p2

    .line 95
    .local v0, "callback":Lcom/taobao/weex/bridge/JSCallback;
    iget-object v2, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void

    .line 97
    .end local v0    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    :cond_1
    const-string/jumbo v2, "result"

    const-string/jumbo v3, "WX_FAILED"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "Close page failed."

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-object v0, p3

    .restart local v0    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    goto :goto_0
.end method

.method public open(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 9
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "failure"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 57
    const-string/jumbo v7, "url"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "url":Ljava/lang/String;
    move-object v0, p2

    .line 59
    .local v0, "callback":Lcom/taobao/weex/bridge/JSCallback;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 61
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 62
    .local v3, "rawUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "scheme":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "http"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "https"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->push(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 83
    .end local v3    # "rawUri":Landroid/net/Uri;
    .end local v5    # "scheme":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 87
    .end local v0    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .line 67
    .restart local v0    # "callback":Lcom/taobao/weex/bridge/JSCallback;
    .restart local v3    # "rawUri":Landroid/net/Uri;
    .restart local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v5    # "scheme":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    const-string/jumbo v7, "result"

    const-string/jumbo v8, "WX_SUCCESS"

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    const-string/jumbo v7, "result"

    const-string/jumbo v8, "WX_FAILED"

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v7, "message"

    const-string/jumbo v8, "Open page failed."

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object v0, p3

    .line 77
    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "rawUri":Landroid/net/Uri;
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "result"

    const-string/jumbo v8, "WX_PARAM_ERR"

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v7, "message"

    const-string/jumbo v8, "The URL parameter is empty."

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object v0, p3

    goto :goto_0
.end method

.method public pop(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->pop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    if-eqz p2, :cond_0

    .line 154
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 161
    if-eqz p2, :cond_2

    .line 162
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public push(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 9
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 110
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 111
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->push(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    if-eqz p2, :cond_0

    .line 113
    const-string/jumbo v7, "WX_SUCCESS"

    invoke-interface {p2, v7}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    :try_start_0
    invoke-static {p1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 121
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "url"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 123
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 124
    .local v4, "rawUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 126
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    const-string/jumbo v7, "http"

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.taobao.android.intent.category.WEEX"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v7, "instanceId"

    iget-object v8, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v7, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    const-string/jumbo v7, "WX_SUCCESS"

    invoke-interface {p2, v7}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "rawUri":Landroid/net/Uri;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Navigator"

    invoke-static {v7, v1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    const-string/jumbo v7, "WX_FAILED"

    invoke-interface {p2, v7}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz p2, :cond_0

    .line 144
    const-string/jumbo v7, "WX_FAILED"

    invoke-interface {p2, v7}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNavBarHidden(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    const-string/jumbo v2, "WX_FAILED"

    .line 291
    .local v2, "message":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 292
    .local v1, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "hidden"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 293
    .local v4, "visibility":I
    iget-object v5, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->changeVisibilityOfActionBar(Landroid/content/Context;I)Z

    move-result v3

    .line 294
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 295
    const-string/jumbo v2, "WX_SUCCESS"
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "success":Z
    .end local v4    # "visibility":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v5, "Navigator"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNavBarLeftItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarLeftItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    if-eqz p2, :cond_0

    .line 207
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-eqz p2, :cond_0

    .line 215
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNavBarMoreItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarMoreItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    if-eqz p2, :cond_0

    .line 242
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    if-eqz p2, :cond_0

    .line 250
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNavBarRightItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarRightItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    if-eqz p2, :cond_0

    .line 174
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    if-eqz p2, :cond_0

    .line 182
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNavBarTitle(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;->setNavBarTitle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    if-eqz p2, :cond_0

    .line 276
    const-string/jumbo v0, "WX_SUCCESS"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    if-eqz p2, :cond_0

    .line 283
    const-string/jumbo v0, "WX_FAILED"

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method
