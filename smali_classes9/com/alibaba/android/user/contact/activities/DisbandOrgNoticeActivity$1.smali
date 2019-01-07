.class final Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;
.super Ljava/lang/Object;
.source "DisbandOrgNoticeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->dismissLoadingDialog()V

    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_org_disband_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->a(Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1128
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->finish()V

    .line 117
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "DisbandOrgNoticeActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "cancelRemoveOrg error: code = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgNoticeActivity;->dismissLoadingDialog()V

    .line 147
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 135
    return-void
.end method
