.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setTitleIcon(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->a:Z

    iput p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->b:I

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->a:Z

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->b:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;ZILjava/lang/String;)V

    .line 1622
    return-void
.end method
