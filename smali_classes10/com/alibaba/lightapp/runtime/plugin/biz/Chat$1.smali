.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getConversationInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$cid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "i"    # I

    .prologue
    .line 244
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 14
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x3

    .line 159
    if-eqz p1, :cond_2

    .line 160
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "title":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v6

    .line 162
    .local v6, "memberCount":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 164
    :try_start_0
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v11, "cid"

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$cid:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v11, "title"

    invoke-virtual {v10, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v11, "memberCount"

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "icons":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "$:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 169
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 173
    :cond_0
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .local v4, "iconMemberArray":Lorg/json/JSONArray;
    :goto_0
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 182
    .local v0, "avatarArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v8, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 184
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 185
    .local v3, "iObj":Lorg/json/JSONObject;
    const-string/jumbo v10, "uId"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "avatarArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "iObj":Lorg/json/JSONObject;
    .end local v4    # "iconMemberArray":Lorg/json/JSONArray;
    .end local v8    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v10

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 176
    .restart local v4    # "iconMemberArray":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v9, "userInfo":Lorg/json/JSONObject;
    const-string/jumbo v10, "uId"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 226
    .end local v4    # "iconMemberArray":Lorg/json/JSONArray;
    .end local v5    # "icons":Ljava/lang/String;
    .end local v9    # "userInfo":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 227
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 234
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "memberCount":I
    .end local v7    # "title":Ljava/lang/String;
    :goto_2
    return-void

    .line 187
    .restart local v0    # "avatarArray":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "iconMemberArray":Lorg/json/JSONArray;
    .restart local v5    # "icons":Ljava/lang/String;
    .restart local v6    # "memberCount":I
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    new-instance v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;

    invoke-direct {v11, p0, v0, p1, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;Lorg/json/JSONArray;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v11, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 232
    .end local v0    # "avatarArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "iconMemberArray":Lorg/json/JSONArray;
    .end local v5    # "icons":Ljava/lang/String;
    .end local v6    # "memberCount":I
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const-string/jumbo v11, "the conversion is null"

    invoke-static {v13, v11}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
