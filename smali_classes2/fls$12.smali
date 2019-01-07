.class final Lfls$12;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/app/Activity;JLjava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lfls$12;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lfls$12;->b:J

    iput-object p4, p0, Lfls$12;->c:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 4
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1261
    iget-object v0, p0, Lfls$12;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lfls$12;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1264
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_1

    .line 1265
    iget-object v0, p0, Lfls$12;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lfls$12;->b:J

    iget-object v1, p0, Lfls$12;->c:Ljava/lang/Boolean;

    invoke-static {v0, p1, v2, v3, v1}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/lang/Boolean;)V

    .line 1267
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1271
    iget-object v0, p0, Lfls$12;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lfls$12;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1274
    :cond_0
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ContactUtils"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "nav2InviteStaffWithOrgId error,funcDidLoadInviteInfoFailed, code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",msg:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    return-void
.end method
