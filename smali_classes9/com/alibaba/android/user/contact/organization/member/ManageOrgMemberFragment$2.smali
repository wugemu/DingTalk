.class final Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$2;
.super Ljava/lang/Object;
.source "ManageOrgMemberFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 939
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 942
    if-nez p2, :cond_1

    .line 943
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lfkf;

    move-result-object v0

    .line 1422
    iget-object v1, v0, Lfkf;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1423
    iget-object v1, v0, Lfkf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfkf;->a(Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_org_batchremove_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$2;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lfkf;

    move-result-object v0

    .line 1490
    iget-object v1, v0, Lfkf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfkf;->a(Ljava/lang/String;)V

    .line 947
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_management_org_batchdelete_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
