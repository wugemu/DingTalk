.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3950
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3950
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 4953
    const/4 v1, 0x0

    .line 4954
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    if-eqz v0, :cond_3

    .line 4955
    const-string/jumbo v0, ""

    .line 4956
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 4957
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->UNRELATION:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->INTRODUCE:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v2, v3, :cond_4

    .line 4958
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_send_friend_request:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4959
    const-string/jumbo v0, "request"

    .line 4968
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4969
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v3, :cond_3

    .line 4972
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->w:Z

    .line 4973
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;)V

    .line 4975
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4976
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4977
    const-string/jumbo v3, "button_type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4979
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v3, "Page_Chat_Detail"

    const-string/jumbo v4, "Button-click_send_friend_request"

    invoke-interface {v0, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4981
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;Ljava/util/Map;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSendRequestOnClick(Landroid/view/View$OnClickListener;)V

    .line 3950
    :cond_3
    return-void

    .line 4960
    :cond_4
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->SENT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v2, v3, :cond_5

    .line 4961
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_contact_addFriend_resend_request:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4962
    const-string/jumbo v0, "request_again"

    goto :goto_0

    .line 4963
    :cond_5
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->TO_ACCEPT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v2, v3, :cond_1

    .line 4965
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->and_menu_to_accept:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4966
    const-string/jumbo v0, "accept"

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4047
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ChatMsg] sendFriendRequest getProfile fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4043
    return-void
.end method
