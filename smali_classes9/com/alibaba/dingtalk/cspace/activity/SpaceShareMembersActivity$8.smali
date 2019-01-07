.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 643
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 645
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 646
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Lgad;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Lgad;

    move-result-object v2

    invoke-virtual {v2}, Lgad;->notifyDataSetChanged()V

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Long;

    .line 650
    .local v1, "ids":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 651
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;I)I

    .line 654
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->m(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    .line 655
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    .line 660
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/Long;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 663
    :cond_2
    return-void

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$8;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->o(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    goto :goto_1
.end method
