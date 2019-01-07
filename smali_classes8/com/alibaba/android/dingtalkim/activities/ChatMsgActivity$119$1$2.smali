.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    .prologue
    .line 4013
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4013
    .line 5016
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v1, Lctk$i;->and_request_has_sent:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 5017
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->UNRELATION:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->INTRODUCE:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-ne v0, v1, :cond_1

    .line 5018
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119$1;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_contact_addFriend_resend_request:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;)V

    .line 4013
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4024
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ChatMsg] sendFriendRequest fail s:"

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

    .line 4026
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4031
    return-void
.end method
