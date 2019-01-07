.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;
.super Ljava/lang/Object;
.source "CreateOrgStep4Fragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->d(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->d(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cos3_add_member_fragment_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    goto :goto_0
.end method
