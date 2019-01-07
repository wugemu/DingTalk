.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;
.super Ljava/lang/Object;
.source "CreateOrgStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 407
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;-><init>()V

    .line 408
    .local v0, "object":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setChecked(Z)V

    .line 409
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptId(J)V

    .line 410
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->f(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->notifyDataSetChanged()V

    .line 412
    return-void
.end method
