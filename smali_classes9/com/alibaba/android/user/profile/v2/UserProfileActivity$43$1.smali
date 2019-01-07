.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;->a(Ljava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    .prologue
    .line 3472
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->e:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-object p4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->d:Ljava/lang/String;

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
    .line 3472
    check-cast p1, Ljava/lang/String;

    .line 4475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4476
    new-instance v0, Lcom/alibaba/android/user/model/OrgEmpMobileObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgEmpMobileObject;-><init>()V

    .line 4477
    iput-object p1, v0, Lcom/alibaba/android/user/model/OrgEmpMobileObject;->mobile:Ljava/lang/String;

    .line 4478
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4479
    :goto_0
    return-void

    .line 4480
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 4481
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 3491
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "queryPhoneNumberFromLocalAndAudit error and errorCode = "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " errorMsg = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3493
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 3494
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$43$1;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3487
    return-void
.end method
