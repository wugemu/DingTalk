.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$3;
.super Ljava/lang/Object;
.source "SpaceAclMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$3;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 517
    return-void
.end method
