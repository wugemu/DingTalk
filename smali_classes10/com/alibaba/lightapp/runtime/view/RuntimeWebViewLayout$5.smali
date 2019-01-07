.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f()V
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
    .line 549
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentUrl"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$5;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Ljava/lang/String;)V

    .line 558
    return-void
.end method
