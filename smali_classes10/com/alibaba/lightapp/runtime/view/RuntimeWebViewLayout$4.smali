.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$4;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$4;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$4;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->g:Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$4;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->g:Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->onRefresh()V

    .line 387
    :cond_0
    return-void
.end method
