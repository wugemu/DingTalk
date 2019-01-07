.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;
.super Ljava/lang/Object;
.source "CreateOrgStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;Lcom/alibaba/android/user/contact/view/CheckBoxEditText;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->a:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 613
    if-nez p2, :cond_1

    .line 614
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->a:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getEditContent()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptName(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .line 1075
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    .line 621
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 615
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 618
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->a:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Lcom/alibaba/android/user/contact/view/CheckBoxEditText;)Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    .line 619
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    goto :goto_1
.end method
