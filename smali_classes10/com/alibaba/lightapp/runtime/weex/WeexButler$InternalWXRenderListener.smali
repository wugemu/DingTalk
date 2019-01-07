.class Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;
.super Ljava/lang/Object;
.source "WeexButler.java"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/weex/WeexButler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalWXRenderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;
    .param p2, "x1"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;-><init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 451
    const-string/jumbo v0, "WeexButler"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "errCode ="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "errMsg ="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lhrq;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$500(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/IWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 458
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED_JS:Lcom/taobao/weex/common/WXErrorCode;

    .line 459
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    .line 460
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 461
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_OTHER_CAUSE_DEGRADTOH5:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$700(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$700(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$800(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/WeexButler$Callback;->fallback(Ljava/lang/String;)V

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->exception()V

    .line 470
    :cond_3
    return-void
.end method

.method public onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 442
    const-string/jumbo v0, "WeexButler"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onRefreshSuccess"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$500(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/IWXRenderListener;->onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 447
    :cond_0
    return-void
.end method

.method public onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->renderSuccess()V

    .line 429
    :cond_0
    const-string/jumbo v0, "WeexButler"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onRenderSuccess"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$500(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$600(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->hideLoading()V

    .line 433
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    const-string/jumbo v1, "nativeready"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->dispatchEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/IWXRenderListener;->onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 438
    :cond_1
    return-void
.end method

.method public onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$300(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics$WeexStatTransaction;->viewCreated()V

    .line 412
    :cond_0
    const-string/jumbo v0, "WeexButler"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onViewCreated"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$000(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$000(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 416
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$000(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$InternalWXRenderListener;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$400(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V

    .line 422
    :cond_2
    return-void
.end method
