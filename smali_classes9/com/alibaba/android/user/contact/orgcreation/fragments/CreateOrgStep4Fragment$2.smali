.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;
.super Ljava/lang/Object;
.source "CreateOrgStep4Fragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->a:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 264
    .local v13, "dept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v13}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->c(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->c(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v14, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v13}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cos3_add_member_fragment_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;

    invoke-direct {v12, p0, v13}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-static/range {v2 .. v12}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    goto :goto_0

    .line 280
    :cond_2
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/org/add_member.html"

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$2;

    invoke-direct {v4, p0, v13}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
