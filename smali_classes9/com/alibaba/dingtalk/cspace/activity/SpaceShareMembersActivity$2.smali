.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->a:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 813
    if-nez p2, :cond_0

    .line 814
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->a:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;)V

    .line 815
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 819
    :cond_0
    return-void
.end method
