.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setActions(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    .line 1432
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget-object v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetAction:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    .line 1433
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;Z)V

    .line 1434
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->p(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    .line 1435
    return-void
.end method
