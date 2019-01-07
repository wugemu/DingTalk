.class public final Lbhn$1;
.super Ljava/lang/Object;
.source "ConversationMemberUidsEvent.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lbhn;


# direct methods
.method public constructor <init>(Lbhn;)V
    .locals 0
    .param p1, "this$0"    # Lbhn;

    .prologue
    .line 72
    iput-object p1, p0, Lbhn$1;->a:Lbhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lbhn$1;->a:Lbhn;

    invoke-virtual {v0, p1, p2}, Lbhn;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 72
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1075
    if-eqz p1, :cond_1

    .line 1076
    iget-object v0, p0, Lbhn$1;->a:Lbhn;

    .line 2021
    iget-boolean v0, v0, Lbhn;->c:Z

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    .line 1078
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lbhn$1;->a:Lbhn;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhn;->a(Ljava/util/List;)V

    .line 1085
    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lbhn$1$1;

    invoke-direct {v1, p0}, Lbhn$1$1;-><init>(Lbhn$1;)V

    .line 1105
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7ffffffe

    .line 1085
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lbhn$1;->a:Lbhn;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "conversation is null"

    invoke-virtual {v0, v1, v2}, Lbhn;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
