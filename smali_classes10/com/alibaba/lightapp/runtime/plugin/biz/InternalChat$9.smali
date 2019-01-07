.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->sendMultiMsges(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

.field final synthetic val$jsonArray:Lorg/json/JSONArray;

.field final synthetic val$needOpenChat:Z

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionRequest;Lorg/json/JSONArray;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$jsonArray:Lorg/json/JSONArray;

    iput-boolean p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$needOpenChat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Long;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 773
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 774
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 775
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$jsonArray:Lorg/json/JSONArray;

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$needOpenChat:Z

    invoke-static {v1, v2, v0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lorg/json/JSONArray;Z)V

    .line 781
    .end local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_0
    return-void

    .line 777
    :cond_0
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Screenshot getUidByCorpIdAndStaffId uid is null !"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    const/4 v2, 0x3

    const-string/jumbo v3, "userProfileObject or messagesArray is null"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 770
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->onDataReceived(Ljava/lang/Long;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 792
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getUidByCorpIdAndStaffId error code"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    const-string/jumbo v3, " "

    aput-object v3, v2, v7

    aput-object p2, v2, v4

    .line 793
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v5

    const-string/jumbo v2, ":"

    aput-object v2, v1, v6

    aput-object p2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 788
    return-void
.end method
