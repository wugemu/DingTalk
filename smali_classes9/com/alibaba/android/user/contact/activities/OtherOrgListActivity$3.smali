.class final Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "OtherOrgListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$3;->a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$3;->a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_org_manager_update_reddot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "action_user_org_homepage_reddot_changed"

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$3;->a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->b(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V

    goto :goto_0
.end method
