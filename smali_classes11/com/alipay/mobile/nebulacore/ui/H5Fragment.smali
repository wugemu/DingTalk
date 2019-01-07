.class public Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
.super Landroid/support/v4/app/Fragment;
.source "H5Fragment.java"

# interfaces
.implements Linw;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5Fragment"

.field public static final fragmentType:Ljava/lang/String; = "fragmentType"

.field public static final normal:Ljava/lang/String; = "normal"

.field public static final subtab:Ljava/lang/String; = "subtab"


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private hasPreRender:Z

.field private isCallbackResumed:Z

.field private isRunning:Z

.field private rootView:Landroid/view/View;

.field protected rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field private useTranslateAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isRunning:Z

    .line 53
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isCallbackResumed:Z

    .line 62
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->useTranslateAnim:Z

    .line 64
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->hasPreRender:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->detectWorkId()V

    return-void
.end method

.method private applyParams(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 435
    const-string/jumbo v7, "url"

    invoke-static {p1, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 437
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    sget-object v8, Liov$a;->q:Ljava/lang/String;

    const/4 v9, 0x0

    .line 438
    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 443
    .local v0, "eventName":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 444
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "showFavorites"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 445
    invoke-static {p1, v1, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 446
    .local v6, "value":Z
    if-eqz v6, :cond_3

    const-string/jumbo v0, "showFavorites"

    .line 459
    .end local v6    # "value":Z
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 460
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v8

    invoke-virtual {v8, v0, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 446
    .restart local v6    # "value":Z
    :cond_3
    const-string/jumbo v0, "hideFavorites"

    goto :goto_1

    .line 448
    .end local v6    # "value":Z
    :cond_4
    const-string/jumbo v8, "toolbarMenu"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 449
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "toolbarMenu":Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 451
    const-string/jumbo v0, "setToolbarMenu"

    .line 452
    goto :goto_1

    .end local v4    # "toolbarMenu":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "prefetchLocation"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 453
    invoke-static {p1, v1, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 454
    .local v3, "prefetch":Z
    if-eqz v3, :cond_2

    .line 455
    const-string/jumbo v0, "prefetchLocation"

    goto :goto_1

    .line 463
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "prefetch":Z
    :cond_6
    return-void
.end method

.method private detectWorkId()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "sessionId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "sessionId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v1

    .line 168
    .local v1, "h5Session":Lipc;
    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "workId":Ljava/lang/String;
    const-string/jumbo v5, "H5Fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "workId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "no"

    const-string/jumbo v6, "h5_detectWorkId"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 174
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "errorType"

    const-string/jumbo v6, "workIdsNull"

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v5, "errorCode"

    const v6, -0x927c2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-interface {v1}, Lipc;->getTopPage()Liop;

    move-result-object v0

    .line 177
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v5, "H5Fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "send page abnormal event : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v5, "h5PageAbnormal"

    invoke-interface {v0, v5, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 186
    .end local v0    # "h5Page":Liop;
    .end local v1    # "h5Session":Lipc;
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "workId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private generateRootView()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 90
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "view":Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 92
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$color;->h5_transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setBackgroundColor(I)V

    .line 97
    return-object v0
.end method

.method private postPreRenderRunnable()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 189
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->hasPreRender:Z

    if-eqz v7, :cond_1

    .line 190
    const-string/jumbo v7, "H5Fragment"

    const-string/jumbo v8, "hasPreRender not to postPreRenderRunnable"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iput-boolean v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->hasPreRender:Z

    .line 196
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "isTinyApp"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 197
    .local v1, "isTinyApp":Z
    if-eqz v1, :cond_0

    .line 202
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 274
    .local v3, "preRunnable":Ljava/lang/Runnable;
    const/16 v4, 0xbb8

    .line 276
    .local v4, "time":I
    const/4 v5, 0x1

    .line 277
    .local v5, "useIdle":Z
    const-string/jumbo v7, "h5_addIdleHandler"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 279
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 280
    const-string/jumbo v7, "useIdle"

    invoke-static {v2, v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 281
    const-string/jumbo v7, "time"

    const/16 v8, 0xbb8

    invoke-static {v2, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 285
    :cond_2
    if-nez v5, :cond_3

    .line 286
    int-to-long v8, v4

    invoke-static {v3, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 289
    :cond_3
    move v0, v4

    .line 290
    .local v0, "finalTime":I
    new-instance v7, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;

    invoke-direct {v7, p0, v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ILjava/lang/Runnable;)V

    int-to-long v8, v4

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method public getH5Page()Liop;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootViewHolder()Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    return-object v0
.end method

.method public isUseTranslateAnim()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->useTranslateAnim:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAttach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-wide v0, Lios;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lios;->a:J

    .line 87
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 103
    const-string/jumbo v4, "H5Fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onCreateView "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    if-nez v4, :cond_6

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->generateRootView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    .line 108
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const-string/jumbo v4, "H5Fragment"

    const-string/jumbo v6, "activity is finish"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 160
    :goto_0
    return-object v4

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 113
    .local v2, "params":Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->getPreloadedViewHolder(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-nez v4, :cond_2

    .line 118
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;-><init>(Landroid/app/Activity;)V

    .line 119
    .local v1, "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v1, v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 121
    .end local v1    # "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->parseNoAlphaColor(Landroid/os/Bundle;)V

    .line 122
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setRootView(Landroid/view/ViewGroup;)V

    .line 123
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5Fragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 124
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setRootView(Landroid/view/View;)V

    .line 125
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V

    .line 126
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->applyParams(Landroid/os/Bundle;)V

    .line 127
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 129
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v4, :cond_3

    move-object v4, v5

    .line 130
    goto :goto_0

    .line 134
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 135
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v4

    const-string/jumbo v6, "backgroundColor"

    .line 136
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v6

    .line 135
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lior;->a:J

    .line 139
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 141
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 142
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 143
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitleBarReadyCallBack()Liop$c;

    .line 155
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    goto/16 :goto_0

    .line 149
    :cond_6
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 150
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    .line 151
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5Fragment"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 160
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 493
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 494
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isRunning:Z

    if-nez v1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 497
    :cond_0
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isRunning:Z

    .line 498
    const-string/jumbo v1, "H5Fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 501
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 505
    :cond_1
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootView:Landroid/view/View;

    .line 506
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 507
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 512
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroyView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 514
    return-void
.end method

.method public onDetach()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 77
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDetach "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "intent"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 467
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 468
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 469
    .local v0, "backEvent":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 470
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 472
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebChromeClient()Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    move-result-object v2

    .line 473
    .local v2, "h5WebChromeClient":Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    if-eqz v4, :cond_1

    .line 475
    :try_start_0
    iget-object v4, v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v2    # "h5WebChromeClient":Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    :goto_1
    return v3

    .end local v0    # "backEvent":Z
    :cond_0
    move v0, v4

    .line 468
    goto :goto_0

    .line 476
    .restart local v0    # "backEvent":Z
    .restart local v2    # "h5WebChromeClient":Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5Fragment"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 480
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, "H5Fragment"

    const-string/jumbo v5, "onKeyDown H5_PAGE_PHYSICAL_BACK"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    const-string/jumbo v5, "h5PagePhysicalBack"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .end local v2    # "h5WebChromeClient":Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    :cond_2
    move v3, v4

    .line 486
    goto :goto_1
.end method

.method public onPageFinish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 550
    const-string/jumbo v0, "H5Fragment"

    const-string/jumbo v1, "onPageFinish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->postPreRenderRunnable()V

    .line 552
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 340
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isCallbackResumed:Z

    .line 342
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 320
    const-string/jumbo v3, "H5Fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onResume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Liph;

    move-result-object v3

    invoke-interface {v3}, Liph;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    .line 329
    .local v1, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "fullscreen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 331
    .local v0, "fullScreen":Z
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isCallbackResumed:Z

    if-nez v3, :cond_0

    .line 332
    const-string/jumbo v3, "h5PageResume"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 335
    .end local v0    # "fullScreen":Z
    .end local v1    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_0
    return-void

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5Fragment"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSaveInstanceState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 346
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 347
    const-string/jumbo v2, "H5Fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isCallbackResumed:Z

    .line 349
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_0

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isRunning:Z

    if-nez v2, :cond_2

    .line 358
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isRunning:Z

    .line 365
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setTabbarVisible()V

    .line 366
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5Fragment"

    const-string/jumbo v3, "webview onResume exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 360
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 362
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    const-string/jumbo v2, "h5PageResume"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 419
    const-string/jumbo v2, "H5Fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_0

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h5WebView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 430
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    const-string/jumbo v2, "h5PagePause"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 432
    .end local v0    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_1
    return-void

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5Fragment"

    const-string/jumbo v3, "webview onPause exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onViewStateRestored "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 526
    return-void
.end method

.method public setTabbarVisible()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "isPrerender"

    invoke-static {v10, v11, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 370
    .local v3, "isPrerender":Z
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v10

    if-eqz v10, :cond_3

    if-nez v3, :cond_3

    .line 371
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v1

    .line 372
    .local v1, "currentSession":Lipc;
    if-eqz v1, :cond_3

    .line 373
    invoke-interface {v1}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v6

    .line 374
    .local v6, "pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual {v6}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 375
    .local v0, "clonePages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v5

    .line 376
    .local v5, "page":Liop;
    if-eqz v5, :cond_3

    .line 377
    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    .line 378
    .local v8, "startParams":Landroid/os/Bundle;
    const-string/jumbo v10, "fragmentType"

    const-string/jumbo v11, "normal"

    invoke-static {v8, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "fragmentType":Ljava/lang/String;
    const-string/jumbo v10, "subtab"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 384
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liop;

    .line 387
    .local v4, "item":Liop;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 390
    :cond_1
    if-eqz v4, :cond_0

    .line 391
    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    .line 392
    .local v7, "params":Landroid/os/Bundle;
    const-string/jumbo v11, "fragmentType"

    const-string/jumbo v12, "normal"

    invoke-static {v7, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v11, "subtab"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 397
    const-string/jumbo v11, "isPrerender"

    .line 398
    invoke-static {v7, v11, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 399
    invoke-interface {v4}, Liop;->exitPage()Z

    goto :goto_0

    .line 404
    .end local v4    # "item":Liop;
    .end local v7    # "params":Landroid/os/Bundle;
    .end local v9    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "H5Fragment"

    const-string/jumbo v11, "switchTab VISIBLE"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v0    # "clonePages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .end local v1    # "currentSession":Lipc;
    .end local v2    # "fragmentType":Ljava/lang/String;
    .end local v5    # "page":Liop;
    .end local v6    # "pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .end local v8    # "startParams":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return-void

    .line 406
    .restart local v0    # "clonePages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .restart local v1    # "currentSession":Lipc;
    .restart local v2    # "fragmentType":Ljava/lang/String;
    .restart local v5    # "page":Liop;
    .restart local v6    # "pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .restart local v8    # "startParams":Landroid/os/Bundle;
    :cond_4
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isTabContainerVisible()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 407
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_5
    const-string/jumbo v10, "H5Fragment"

    const-string/jumbo v11, "switchTab GONE"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUseTranslateAnim(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->useTranslateAnim:Z

    .line 542
    return-void
.end method
