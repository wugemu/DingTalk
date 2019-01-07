.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

.field final synthetic val$avatarArray:Lorg/json/JSONArray;

.field final synthetic val$conversation:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic val$uidList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;Lorg/json/JSONArray;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$avatarArray:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$conversation:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$uidList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_1

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 192
    .local v1, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$avatarArray:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$conversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 195
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$uidList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$uidList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "title"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "avatarIcons"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->val$avatarArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 215
    return-void

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 211
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 219
    return-void
.end method
