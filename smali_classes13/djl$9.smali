.class public final Ldjl$9;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 576
    iput-wide p1, p0, Ldjl$9;->a:J

    iput-object p3, p0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Ldjl$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 576
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1579
    if-eqz p1, :cond_1

    .line 1580
    iget-wide v0, p0, Ldjl$9;->a:J

    iget-object v2, p0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1, v2}, Ldjl;->a(JLcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    iget-object v0, p0, Ldjl$9;->c:Ljava/lang/String;

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 1583
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 1584
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldjl$9$1;

    invoke-direct {v1, p0}, Ldjl$9$1;-><init>(Ldjl$9;)V

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v3, 0x0

    .line 1609
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    move-object v3, v2

    move-object v4, v2

    .line 1584
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0

    .line 1611
    :cond_2
    iget-object v0, p0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "404"

    const-string/jumbo v2, "conversation not found"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
