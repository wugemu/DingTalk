.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;
.super Ljava/lang/Object;
.source "CreateOrgStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->notifyDataSetChanged()V

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    .line 1075
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    .line 241
    return-void
.end method
