.class final Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;
.super Ljava/lang/Object;
.source "JoinOrgInvitationActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 310
    .line 2313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->dismissLoadingDialog()V

    .line 2314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    .line 2315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 2316
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    sget v2, Lezg$l;->dt_contact_privacy_joinTeam_success_alert:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->dismissLoadingDialog()V

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;->b:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 1056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 329
    if-eqz v1, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 2056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 329
    invoke-interface {v1, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "reason":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p2}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 323
    return-void
.end method
