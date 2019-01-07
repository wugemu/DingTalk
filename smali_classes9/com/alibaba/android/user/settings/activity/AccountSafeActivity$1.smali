.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountSafeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

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
    .line 136
    if-nez p2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string/jumbo v0, "action_user_facebox_login_set"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lfls;->b()V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Z)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->b(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1$1;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
