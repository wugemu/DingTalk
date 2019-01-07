.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;Ljava/util/Map;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    .prologue
    .line 3981
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 3985
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "Button-click_send_friend_request"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->a:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3986
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->TO_ACCEPT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v2, v3, :cond_0

    .line 3987
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->a:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;)V

    const-class v7, Lcma;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v2, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v4, v5, v9, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JZLcma;)V

    .line 4034
    :goto_0
    return-void

    .line 4005
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;-><init>()V

    .line 4006
    .local v1, "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->a:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 4007
    const/16 v2, 0x6e

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->source:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 4008
    iput-boolean v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->showMobile:Z

    .line 4009
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 4010
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4011
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v3, Lctk$i;->and_friend_request_default_tips:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 4013
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v1, v9, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V

    goto :goto_0
.end method
