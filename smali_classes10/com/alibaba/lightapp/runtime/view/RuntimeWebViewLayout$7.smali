.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;
.super Lcmi;
.source "RuntimeWebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 770
    const-string/jumbo v0, "RuntimeStart"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 771
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RuntimeWebViewLayout addPageErrorView exception: "

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "code= "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "reason= "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 770
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 732
    check-cast p1, Landroid/view/View;

    .line 1736
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1740
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_0

    .line 1741
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    const-string/jumbo v1, "RuntimeStart"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1762
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RuntimeWebViewLayout addPageErrorView exception: "

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1764
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1761
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
