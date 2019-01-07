.class final Lcom/alibaba/android/user/connection/activity/PostCommentActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PostCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

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
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "action_selected_contacts_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string/jumbo v3, "activity_identify"

    invoke-static {p2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "identify":Ljava/lang/String;
    const-string/jumbo v3, "CIRCLE_POST_COMMENT_PRESENTER_CHOOSE_MEMBER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string/jumbo v3, "choose_user_identities"

    invoke-static {p2, v3}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 106
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/util/List;)V

    goto :goto_0
.end method
