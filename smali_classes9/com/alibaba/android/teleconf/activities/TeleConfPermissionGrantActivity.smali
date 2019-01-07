.class public Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfPermissionGrantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/permissionGrant"

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity$1;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity$1;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Leuj$i;->agree_and_grant:I

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_contact_match_agree_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->F()V

    .line 69
    invoke-static {}, Lcpi;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Leuj$i;->cancel:I

    if-ne v0, v1, :cond_0

    .line 72
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_contact_match_later_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Leuj$j;->activity_teleconf_permission_grant:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->setContentView(I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Leuj$l;->dt_conference_call_permission:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1055
    :cond_0
    sget v0, Leuj$i;->agree_and_grant:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->a:Landroid/widget/TextView;

    .line 1056
    sget v0, Leuj$i;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->b:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfPermissionGrantActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
