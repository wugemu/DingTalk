.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;
.super Ljava/lang/Object;
.source "CreateOrgStep1Fragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setChecked(Z)V

    .line 580
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .line 1075
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    .line 581
    return-void
.end method
