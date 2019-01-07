.class public Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CommonWeexActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/INuvaContext;
.implements Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;
.implements Lhej;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonWeexActivity"

.field private static final UT_WEEX_KEY:Ljava/lang/String; = "ut_weex_view"


# instance fields
.field private mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

.field private mAgentId:J

.field private mAppId:J

.field private mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

.field private mLocalBroadcastManager:Ldq;

.field private mMiniAppId:Ljava/lang/String;

.field private mOriginalUrl:Ljava/lang/String;

.field private mPage:Ljava/lang/String;

.field private mSoftKeyboardUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

.field private mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mMiniAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mPage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)Lcom/alibaba/lightapp/runtime/weex/WeexButler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    return-object v0
.end method

.method private loadUrl()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 208
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayWidth(Landroid/app/Activity;)I

    move-result v8

    .line 210
    .local v8, "width":I
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getCustomizedToolbarHeight(Landroid/app/Activity;)I

    move-result v2

    sub-int v7, v1, v2

    .line 211
    .local v7, "height":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAgentId:J

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mMiniAppId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->initAppContext(JJLjava/lang/String;)V

    .line 213
    invoke-static {}, Lhhp;->a()Lhhp;

    const-string/jumbo v1, "weex_page_package_loading"

    invoke-static {v1, v10}, Lhhp;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mMiniAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    .line 215
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setLoadingFrameLayout(Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;)V

    .line 216
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 217
    .local v0, "contentView":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mLoadingFrameLayout:Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-virtual {v1, v10}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;->setVisibility(I)V

    .line 219
    const-string/jumbo v1, "CommonWeexActivity"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 249
    .end local v0    # "contentView":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v7}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->loadUrl(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private registerKeyboardEventListener()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_disable_weex_register_keyboard_event"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mLocalBroadcastManager:Ldq;

    .line 124
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;)V

    invoke-static {p0, v0}, Lhrs;->a(Landroid/app/Activity;Lhrs$a;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mSoftKeyboardUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    goto :goto_0
.end method

.method private statistics()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v12, 0x7fffffffffffffffL

    .line 253
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v7, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "clickType"

    const-string/jumbo v5, "1"

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v4, "url"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v4}, Lhgy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "bundleUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v4

    invoke-virtual {v4, v8}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 262
    .local v10, "tmpAppId":Ljava/lang/Long;
    if-eqz v10, :cond_0

    .line 263
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    .line 268
    .end local v8    # "bundleUrl":Ljava/lang/String;
    .end local v10    # "tmpAppId":Ljava/lang/Long;
    :cond_0
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAgentId:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    .line 269
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/OAInterface;

    .line 270
    .local v1, "oa":Lcom/alibaba/dingtalk/oabase/OAInterface;
    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 271
    .local v2, "currentOrgId":J
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    const/16 v6, 0xf

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 272
    .local v0, "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_1

    .line 273
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAgentId:J

    .line 277
    .end local v0    # "appObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v1    # "oa":Lcom/alibaba/dingtalk/oabase/OAInterface;
    .end local v2    # "currentOrgId":J
    :cond_1
    const-string/jumbo v4, "appId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v4, "agentId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAgentId:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "ut_weex_view"

    invoke-interface {v4, v5, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v7    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v9

    .line 282
    .local v9, "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public consumeMessage(J)V
    .locals 0
    .param p1, "mid"    # J

    .prologue
    .line 314
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/weex/util/CommonUtil;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->dispatchEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 334
    :cond_0
    return-void
.end method

.method public fetchMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdi$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getAppId()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "micro_app"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentNavId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->onBackPressed()V

    .line 367
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleActivityResult(IILandroid/content/Intent;)V

    .line 186
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 195
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v1, Lhdn$i;->activity_common_weex:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "micro_app"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAppId:J

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "micro_agent"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mAgentId:J

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mMiniAppId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mPage:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mPage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "app.js"

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mPage:Ljava/lang/String;

    .line 96
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 97
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 2383
    iput-object p0, v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$a;

    .line 98
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 2387
    iput-object p0, v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->f:Lhej;

    .line 99
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a()V

    .line 100
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 104
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleCreate()V

    .line 105
    sget v1, Lhdn$h;->container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    :cond_1
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v2}, Lhgy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhhy;->d(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->statistics()V

    .line 114
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->loadUrl()V

    .line 116
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->registerKeyboardEventListener()V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleDestroy()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 173
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v1}, Lhgy;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqe;->a(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v1}, Lhgy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhhy;->e(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mSoftKeyboardUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mSoftKeyboardUnregister:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;->execute()V

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .line 200
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handlePause()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setNuvaContext(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 166
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->setNuvaContext(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleResume()V

    .line 160
    return-void
.end method

.method public onRightClick()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleStart()V

    .line 147
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mWXButler:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->handleStop()V

    .line 152
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 153
    return-void
.end method

.method public postMessage(Ljava/util/List;Lhdi$b;)V
    .locals 0
    .param p2, "message"    # Lhdi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhdi$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;->mActionBarDelegate:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .line 2760
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stickPage()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public triggerMessage()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method
