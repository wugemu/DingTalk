.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setActionBarTitle(Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->b:Z

    iput-boolean p4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->c:Z

    iput-boolean p5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->d:Z

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
    .line 1601
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->b:Z

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->c:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;->d:Z

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V

    .line 1610
    return-void
.end method
