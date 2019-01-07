.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7$1;
.super Ljava/lang/Object;
.source "NavbarView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;->b:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->j(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    .line 745
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$7;->b:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->k(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V

    .line 746
    return-void
.end method
