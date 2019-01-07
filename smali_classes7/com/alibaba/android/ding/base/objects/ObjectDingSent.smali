.class public final Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
.super Lcom/alibaba/android/ding/base/objects/ObjectDing;
.source "ObjectDingSent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;,
        Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;
    }
.end annotation


# instance fields
.field public U:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public V:Lckm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;",
            ">;"
        }
    .end annotation
.end field

.field protected W:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;-><init>()V

    .line 506
    new-instance v0, Lckm;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    .line 511
    new-instance v0, Lckm;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-direct {v0, v1, v2}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Lazm;)V
    .locals 6
    .param p1, "model"    # Lazm;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;-><init>(Lazm;)V

    .line 506
    new-instance v0, Lckm;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    .line 511
    new-instance v0, Lckm;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-direct {v0, v1, v2}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lazm;->p:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    iget-object v1, p1, Lazm;->p:Ljava/lang/Long;

    .line 1228
    invoke-virtual {v0, v1, v3}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 110
    :cond_0
    iget-object v0, p1, Lazm;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    iget-object v1, p1, Lazm;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    move-result-object v1

    .line 2228
    invoke-virtual {v0, v1, v3}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 113
    :cond_1
    return-void
.end method

.method public constructor <init>(Lazo;)V
    .locals 6
    .param p1, "model"    # Lazo;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 116
    iget-object v0, p1, Lazo;->a:Lazm;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;-><init>(Lazm;)V

    .line 506
    new-instance v0, Lckm;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    .line 511
    new-instance v0, Lckm;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-direct {v0, v1, v2}, Lckm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lazo;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    iget-object v1, p1, Lazo;->b:Ljava/lang/Long;

    .line 3228
    invoke-virtual {v0, v1, v3}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 122
    :cond_0
    iget-object v0, p1, Lazo;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    iget-object v1, p1, Lazo;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    move-result-object v1

    .line 4228
    invoke-virtual {v0, v1, v3}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 125
    :cond_1
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 19
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 210
    const/4 v8, 0x0

    .line 212
    .local v8, "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    if-eqz p0, :cond_2

    .line 214
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    .line 216
    .local v5, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v5, :cond_2

    .line 217
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    move-object v10, v5

    .line 219
    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 221
    .local v10, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v13

    .line 4294
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 4296
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    .line 4297
    const-string/jumbo v11, "("

    invoke-virtual {v14, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4299
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 4300
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4301
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4302
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 4303
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "@"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v16, v17

    const/4 v11, 0x2

    const-string/jumbo v17, " "

    aput-object v17, v16, v11

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4304
    const-string/jumbo v11, "|"

    invoke-virtual {v14, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 4306
    :cond_0
    invoke-virtual {v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v15

    invoke-virtual {v14, v11, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4307
    const-string/jumbo v11, ")"

    invoke-virtual {v14, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4308
    invoke-virtual {v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 4309
    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 4310
    :goto_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4311
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .line 4312
    const-string/jumbo v11, "@"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v16, " "

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 4313
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "@"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v16, v17

    const/4 v11, 0x2

    const-string/jumbo v17, " "

    aput-object v17, v16, v11

    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v15, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 4314
    goto :goto_1

    .line 221
    :cond_1
    invoke-static {v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    .line 222
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 223
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceId(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 226
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    .line 286
    .end local v5    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v10    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_2
    :goto_2
    return-object v8

    .line 228
    .restart local v5    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0x4b0

    if-ne v11, v12, :cond_4

    .line 229
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    .line 231
    if-eqz v8, :cond_2

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 232
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceId(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 235
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    goto :goto_2

    .line 237
    :cond_4
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0x5dc

    if-ne v11, v12, :cond_7

    .line 238
    instance-of v11, v5, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    if-nez v11, :cond_6

    .line 239
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->an()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    .line 246
    :goto_3
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 247
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceId(Ljava/lang/String;)V

    .line 248
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 249
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 251
    :cond_5
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 252
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    goto/16 :goto_2

    :cond_6
    move-object v4, v5

    .line 241
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    .line 242
    .local v4, "combineContent":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->title()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "("

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->summary()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string/jumbo v13, ")"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "text":Ljava/lang/String;
    invoke-static {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    goto :goto_3

    .line 254
    .end local v4    # "combineContent":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    .end local v9    # "text":Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    .line 255
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0xfc

    if-ne v11, v12, :cond_9

    :cond_8
    move-object v3, v5

    .line 257
    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 259
    .local v3, "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    new-instance v6, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    invoke-direct {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;-><init>()V

    .line 260
    .local v6, "entity":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v6, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 261
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v11

    iput-object v11, v6, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    .line 263
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 264
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v13

    .line 263
    invoke-static {v11, v12, v13, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    .line 266
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 267
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceId(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setReferenceCid(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 270
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    goto/16 :goto_2

    .line 272
    .end local v3    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .end local v6    # "entity":Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;
    :cond_9
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v11

    const/16 v12, 0x2bc

    if-ne v11, v12, :cond_a

    .line 273
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 274
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_2

    instance-of v11, v7, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v11, :cond_2

    move-object v2, v7

    .line 275
    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 276
    .local v2, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    iget-object v11, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 277
    iget-object v11, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v11}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    goto/16 :goto_2

    .line 281
    .end local v2    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v7    # "obj":Ljava/lang/Object;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_a
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->an()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v8

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 4
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "authMediaId"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "entity"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .end local v1    # "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>()V

    .line 189
    .restart local v1    # "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(J)V

    .line 190
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 192
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;-><init>()V

    .line 193
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    invoke-virtual {v0, p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setMediaId(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setAuthMediaId(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setAuthCode(Ljava/lang/String;)V

    .line 196
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setContentType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;)V

    .line 197
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 198
    iget-object v2, p3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setDuration(J)V

    .line 199
    iget-object v2, p3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setVolumns(Ljava/util/List;)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->setMsgCreatedAt(J)V

    .line 202
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    .line 205
    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    :cond_0
    return-object v1
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 322
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 323
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "param":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static an()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>()V

    .line 162
    .local v1, "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(J)V

    .line 163
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 165
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;-><init>()V

    .line 166
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setMediaId(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setAuthMediaId(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setAuthCode(Ljava/lang/String;)V

    .line 169
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setContentType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;)V

    .line 170
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 171
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setTextContent(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setMsgCreatedAt(J)V

    .line 174
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    .line 176
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .end local v1    # "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>()V

    .line 137
    .restart local v1    # "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(J)V

    .line 138
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 140
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;-><init>()V

    .line 141
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setMediaId(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setAuthMediaId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setAuthCode(Ljava/lang/String;)V

    .line 144
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setContentType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;)V

    .line 145
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setMessageType(Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;)V

    .line 146
    invoke-virtual {v0, p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setTextContent(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->setMsgCreatedAt(J)V

    .line 149
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    .line 152
    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final Y(Lckm$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "listener":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    invoke-virtual {v0, p1}, Lckm;->a(Lckm$a;)V

    .line 472
    return-void
.end method

.method public final Z(Lckm$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "listener":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    invoke-virtual {v0, p1}, Lckm;->b(Lckm$a;)V

    .line 479
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 5
    .param p1, "data"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    .line 450
    .local v1, "ret":Z
    invoke-super {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "id":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 453
    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 455
    .local v2, "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    invoke-virtual {v3, v4}, Lckm;->a(Lckm;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    const/4 v1, 0x1

    .line 459
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    invoke-virtual {v3, v4}, Lckm;->a(Lckm;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    const/4 v1, 0x1

    .line 464
    .end local v2    # "sent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    :cond_1
    return v1
.end method

.method public final am()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->W:Ljava/lang/String;

    .line 375
    return-void
.end method
