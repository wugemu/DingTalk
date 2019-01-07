.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->setRefreshing(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;->a:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setRefreshing(Z)V

    .line 1126
    return-void
.end method
