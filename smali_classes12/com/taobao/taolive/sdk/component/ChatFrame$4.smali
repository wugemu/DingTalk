.class Lcom/taobao/taolive/sdk/component/ChatFrame$4;
.super Ljava/lang/Object;
.source "ChatFrame.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/component/ChatFrame;->registerIMService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 3
    .param p2, "type"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$400(Lcom/taobao/taolive/sdk/component/ChatFrame;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 232
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$600(Lcom/taobao/taolive/sdk/component/ChatFrame;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v2}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$700(Lcom/taobao/taolive/sdk/component/ChatFrame;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lbwc;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onGetMessages(Ljava/util/List;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 251
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 252
    iget-object v2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v2}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$800(Lcom/taobao/taolive/sdk/component/ChatFrame;)Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->removeItem(J)V

    goto :goto_0

    .line 256
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method

.method public onRemoved(Ljava/util/List;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 240
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;->this$0:Lcom/taobao/taolive/sdk/component/ChatFrame;

    invoke-static {v2}, Lcom/taobao/taolive/sdk/component/ChatFrame;->access$800(Lcom/taobao/taolive/sdk/component/ChatFrame;)Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->removeItem(J)V

    goto :goto_0

    .line 245
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method
