.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;
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
        "Lcfi;",
        ">;"
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
    .line 600
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 600
    .line 1603
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->b(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V

    .line 600
    return-void
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

    .line 613
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->dismissLoadingDialog()V

    .line 614
    const-string/jumbo v0, "12115"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;->b:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    sget v3, Lezg$l;->dt_common_i_know:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 619
    :goto_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v0, "SelectedContactsActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "addPeople2OrgAndUpdateView and manageOrg failed: errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " errorMsg = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 622
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 621
    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    return-void

    .line 617
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 609
    return-void
.end method
