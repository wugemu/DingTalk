.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setLeft(ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->b:Z

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
    .line 1321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    .line 1322
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;->b:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    .line 1323
    return-void
.end method
