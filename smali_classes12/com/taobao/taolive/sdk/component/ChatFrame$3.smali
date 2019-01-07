.class Lcom/taobao/taolive/sdk/component/ChatFrame$3;
.super Ljava/lang/Object;
.source "ChatFrame.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/component/ChatFrame;->getLastMessages(Lcom/alibaba/wukong/im/Conversation;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

.field final synthetic val$cid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/component/ChatFrame;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    iput-object p2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->val$cid:Ljava/lang/String;

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
    .line 171
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "listPreviousMessages failed, errorCode="

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

    .line 173
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$500(Lcom/taobao/taolive/sdk/component/ChatFrame;)V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->onProgress(Ljava/util/List;I)V

    return-void
.end method

.method public onProgress(Ljava/util/List;I)V
    .locals 0
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$400(Lcom/taobao/taolive/sdk/component/ChatFrame;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->val$cid:Ljava/lang/String;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lbwc;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-virtual {v1, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onGetMessages(Ljava/util/List;)V

    .line 165
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$3;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$500(Lcom/taobao/taolive/sdk/component/ChatFrame;)V

    .line 167
    .end local v0    # "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    :cond_0
    return-void
.end method
