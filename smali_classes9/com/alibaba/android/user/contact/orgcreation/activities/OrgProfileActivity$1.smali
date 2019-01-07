.class final Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;
.super Ljava/lang/Object;
.source "OrgProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Failed get user profile, error code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/OrgProfileActivity;->finish()V

    .line 77
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 69
    return-void
.end method
