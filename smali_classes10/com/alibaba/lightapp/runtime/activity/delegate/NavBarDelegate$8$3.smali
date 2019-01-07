.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->hideActionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;->a:Z

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
    .line 1659
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Z)V

    .line 1660
    return-void

    .line 1659
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
