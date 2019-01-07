.class final Lcom/alibaba/android/user/contact/activities/AddFriendActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AddFriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/AddFriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "flag":Ljava/lang/String;
    const-string/jumbo v3, "AddFriendActivity"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const-string/jumbo v3, "recognize_card_result"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$1;->a:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->a(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;Ljava/lang/String;)V

    .line 98
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    return-void
.end method
