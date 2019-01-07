.class final Lcom/alibaba/wukong/im/message/MessageImpl$23;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->read(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 914
    invoke-static {}, Liby;->a()Liby;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Liby;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->b:Z

    if-eqz v1, :cond_0

    .line 916
    const-string/jumbo v1, "MessageImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[MsgCache] localUpdateReadStatus: cid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 918
    .local v0, "msgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->c:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-wide v2, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$23;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Libs;->b(Ljava/lang/String;Ljava/util/List;)Z

    .line 921
    .end local v0    # "msgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method
