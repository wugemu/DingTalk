.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;->c:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

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
    .line 509
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;->c:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;)Lgdj$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lgdj$a;->a(Ljava/util/List;)V

    .line 510
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 511
    return-void
.end method
