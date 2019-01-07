.class final Ldjz$3;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjz;->a(Ljava/lang/String;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldjz;


# direct methods
.method constructor <init>(Ldjz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldjz;

    .prologue
    .line 224
    iput-object p1, p0, Ldjz$3;->b:Ldjz;

    iput-object p2, p0, Ldjz$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v4, p0, Ldjz$3;->b:Ldjz;

    invoke-static {v4}, Ldjz;->a(Ldjz;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/Long;

    .line 228
    .local v3, "mids":[Ljava/lang/Long;
    const/4 v0, 0x0

    .line 229
    .local v0, "i":I
    iget-object v4, p0, Ldjz$3;->b:Ldjz;

    invoke-static {v4}, Ldjz;->a(Ldjz;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 230
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 232
    goto :goto_0

    .line 233
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    const-class v4, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageService;

    .line 234
    .local v2, "messageService":Lcom/alibaba/wukong/im/MessageService;
    new-instance v4, Ldjz$3$1;

    invoke-direct {v4, p0}, Ldjz$3$1;-><init>(Ldjz$3;)V

    iget-object v5, p0, Ldjz$3;->a:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3}, Lcom/alibaba/wukong/im/MessageService;->removeMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V

    .line 256
    return-void
.end method
