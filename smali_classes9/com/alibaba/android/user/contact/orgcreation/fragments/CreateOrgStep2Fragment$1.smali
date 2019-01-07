.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;
.super Ljava/lang/Object;
.source "CreateOrgStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

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
    .line 177
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;-><init>()V

    .line 178
    .local v0, "object":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptId(J)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    .line 1197
    iget-object v2, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->notifyDataSetChanged()V

    .line 180
    return-void
.end method
