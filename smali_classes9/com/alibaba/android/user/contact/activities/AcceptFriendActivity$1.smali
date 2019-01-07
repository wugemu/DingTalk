.class final Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AcceptFriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 210
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "data":Ljava/lang/String;
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/accept_friend"

    new-instance v4, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/AcceptFriendActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
