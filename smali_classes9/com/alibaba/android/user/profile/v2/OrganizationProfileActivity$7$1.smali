.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->run()V
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
        "Lfrp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 432
    check-cast p1, Lfrp;

    .line 1435
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lfrp;->a:Z

    if-nez v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->TerminalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 1440
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v2, Lezg$l;->dt_contact_smart_device_ap:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 1442
    iget v1, p1, Lfrp;->b:I

    if-gtz v1, :cond_2

    .line 1443
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v2, Lezg$l;->dt_contact_terminal_count_none:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 1448
    :goto_1
    new-instance v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;Lfrp;)V

    iput-object v1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 1459
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1$2;-><init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7$1;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$7;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v2, Lezg$l;->dt_contact_smartDevice_count:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lfrp;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 477
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "organizationProfileActivity getApTerminalInfo errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " errorMsg: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 478
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 472
    return-void
.end method
