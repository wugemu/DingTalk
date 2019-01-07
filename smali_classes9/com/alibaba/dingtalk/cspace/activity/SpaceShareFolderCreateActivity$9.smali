.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;
.super Ljava/lang/Object;
.source "SpaceShareFolderCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

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
    .line 359
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 363
    :cond_0
    return-void
.end method
