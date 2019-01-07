.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6$1;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6$1;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterLongRender()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6$1;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1514
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 623
    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6$1;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$6;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setRefreshing(Z)V

    .line 626
    :cond_0
    return-void
.end method
