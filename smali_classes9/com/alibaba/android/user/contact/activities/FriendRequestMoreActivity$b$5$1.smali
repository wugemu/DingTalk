.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string/jumbo v0, "avatar_pos"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    return-object p1
.end method
