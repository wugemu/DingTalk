.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "OrganizationProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$8;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string/jumbo v1, "fiter_notify_indicator_change"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$8;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->finish()V

    .line 515
    :cond_0
    return-void
.end method
