.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->doSendMultiMsges(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lorg/json/JSONArray;Z)V
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$messagesArray:Lorg/json/JSONArray;

.field final synthetic val$needOpenChat:Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;ZLorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$callbackId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$needOpenChat:Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$messagesArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 877
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "id"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "progress"    # I

    .prologue
    .line 820
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 817
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 10
    .param p1, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 824
    if-nez p1, :cond_1

    .line 825
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    const-string/jumbo v7, "Failed to create conversation"

    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$callbackId:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 873
    :cond_0
    return-void

    .line 830
    :cond_1
    iget-boolean v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$needOpenChat:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 831
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v7, v6, p1, v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 834
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 835
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 839
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$messagesArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 842
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$messagesArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 843
    .local v3, "msgObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 844
    const-string/jumbo v6, "type"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, "type":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 846
    .local v4, "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const-string/jumbo v6, "text"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 847
    const/4 v6, 0x1

    iput v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 848
    const-string/jumbo v6, "content"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 867
    :goto_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->val$callbackId:Ljava/lang/String;

    invoke-static {v6, v7, p1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    .line 839
    .end local v3    # "msgObject":Lorg/json/JSONObject;
    .end local v4    # "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 849
    .restart local v3    # "msgObject":Lorg/json/JSONObject;
    .restart local v4    # "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 850
    const/4 v6, 0x3

    iput v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 851
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;-><init>()V

    .line 852
    .local v2, "message":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    const-string/jumbo v6, "title"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    .line 853
    const-string/jumbo v6, "image"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 854
    const-string/jumbo v6, "content"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->text:Ljava/lang/String;

    .line 855
    const-string/jumbo v6, "url"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    .line 856
    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 869
    .end local v2    # "message":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    .end local v3    # "msgObject":Lorg/json/JSONObject;
    .end local v4    # "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 857
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "msgObject":Lorg/json/JSONObject;
    .restart local v4    # "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v6, "screenshot"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 858
    const/4 v6, 0x2

    iput v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 859
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;-><init>()V

    .line 860
    .local v2, "message":Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;
    const-string/jumbo v6, "screenshotId"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->url:Ljava/lang/String;

    .line 861
    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 817
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
