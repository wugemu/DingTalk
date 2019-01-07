.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 894
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->t(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->t(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->u(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->u(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    const-string/jumbo v1, "group_active_tip_shown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 903
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 904
    return-void
.end method
