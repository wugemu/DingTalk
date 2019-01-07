.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->sendMessageToContact(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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

.field final synthetic val$herf:Ljava/lang/String;

.field final synthetic val$image:Ljava/lang/String;

.field final synthetic val$messageType:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$messageType:I

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$image:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$herf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1113
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "i"    # I

    .prologue
    .line 1119
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1085
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1088
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 1089
    .local v2, "sm":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$messageType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1091
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$image:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "picUrl":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;-><init>()V

    .line 1093
    .local v0, "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->url:Ljava/lang/String;

    .line 1094
    const/4 v3, 0x2

    iput v3, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1095
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    .end local v0    # "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;
    .end local v1    # "picUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 1109
    return-void

    .line 1097
    :catch_0
    move-exception v3

    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "sendMessageToContact failed by MediaIdEncodingException"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_1
    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$messageType:I

    if-nez v3, :cond_0

    .line 1101
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;-><init>()V

    .line 1102
    .local v0, "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$image:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 1103
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$title:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    .line 1104
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->val$herf:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    .line 1105
    const/4 v3, 0x3

    iput v3, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1106
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1085
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
