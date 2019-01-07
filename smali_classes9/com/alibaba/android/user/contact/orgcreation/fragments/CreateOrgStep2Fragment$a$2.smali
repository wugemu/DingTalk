.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;
.super Ljava/lang/Object;
.source "CreateOrgStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/view/IconEditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;Lcom/alibaba/android/user/contact/view/IconEditText;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;->a:Lcom/alibaba/android/user/contact/view/IconEditText;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

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
    .line 248
    if-nez p2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;->a:Lcom/alibaba/android/user/contact/view/IconEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/view/IconEditText;->getEditContent()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptName(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a$2;->c:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;

    .line 1075
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->a:Z

    .line 253
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-void

    .line 250
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
