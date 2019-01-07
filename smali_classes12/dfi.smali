.class public final Ldfi;
.super Ldly;
.source "SvcGrpMarkDownReplyHandler.java"


# instance fields
.field private final a:Ldfl;


# direct methods
.method public constructor <init>(Ldfl;)V
    .locals 0
    .param p1, "info"    # Ldfl;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ldly;-><init>(Ldlz;)V

    .line 18
    iput-object p1, p0, Ldfi;->a:Ldfl;

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    invoke-super {p0, p1}, Ldly;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 25
    iget-object v2, p0, Ldfi;->a:Ldfl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldfi;->a:Ldfl;

    iget-object v0, v2, Ldfl;->b:Ldfl$a;

    .local v0, "answerResult":Ldfl$a;
    if-nez v0, :cond_1

    .line 36
    .end local v0    # "answerResult":Ldfl$a;
    :cond_0
    :goto_0
    return-void

    .line 1018
    .restart local v0    # "answerResult":Ldfl$a;
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "svc_grp_context_msgid"

    iget-wide v4, v0, Ldfl$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v3, "svc_grp_context_reply_type"

    iget-boolean v2, v0, Ldfl$a;->a:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v2, "svc_grp_context_answer_id"

    iget-object v3, v0, Ldfl$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method
