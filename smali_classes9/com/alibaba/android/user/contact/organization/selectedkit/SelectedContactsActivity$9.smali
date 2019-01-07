.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;
.super Ljava/lang/Object;
.source "SelectedContactsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 651
    check-cast p1, Ljava/util/List;

    .line 1654
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->dismissLoadingDialog()V

    .line 1656
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1658
    if-gtz v0, :cond_0

    .line 1659
    sget v0, Lezg$l;->dt_user_common_error_data_fetch_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1660
    const-string/jumbo v0, "SelectedContactsActivity"

    const-string/jumbo v1, "add from local contacts and setStaffIdForUserIdentityObject error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1661
    :goto_0
    return-void

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1665
    if-nez v0, :cond_1

    .line 1666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1669
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1670
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1672
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 682
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->dismissLoadingDialog()V

    .line 683
    sget v0, Lezg$l;->dt_user_common_error_data_fetch_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 685
    const-string/jumbo v0, "SelectedContactsActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "add from local contacts and getOrgEmpInfoByUids failed: errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "errorMsg = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 686
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 685
    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 678
    return-void
.end method
