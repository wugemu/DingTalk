.class Lcom/taobao/taolive/sdk/component/ChatFrame$2;
.super Ljava/lang/Object;
.source "ChatFrame.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/component/ChatFrame;->getConversation()V
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
.field final synthetic this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$2;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getConversation failed, errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onProgress(Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "i"    # I

    .prologue
    .line 145
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/taolive/sdk/component/ChatFrame$2;->onProgress(Lcom/alibaba/wukong/im/Conversation;I)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$2;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$102(Lcom/taobao/taolive/sdk/component/ChatFrame;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 133
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$2;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$2;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$100(Lcom/taobao/taolive/sdk/component/ChatFrame;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$200(Lcom/taobao/taolive/sdk/component/ChatFrame;Lcom/alibaba/wukong/im/Conversation;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame$2;->onSuccess(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
