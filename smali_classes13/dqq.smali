.class public final Ldqq;
.super Ljava/lang/Object;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldqq$e;,
        Ldqq$c;,
        Ldqq$b;,
        Ldqq$f;,
        Ldqq$a;,
        Ldqq$d;
    }
.end annotation


# instance fields
.field a:Ldqq$e;

.field public b:Lcom/alibaba/wukong/im/Conversation;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldqq$b",
            "<*>;>;"
        }
    .end annotation
.end field

.field public f:Z

.field g:Landroid/app/Activity;

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Ldjd;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldqq$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ldqq$a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ldqq$e;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "onLoadInterceptor"    # Ldqq$e;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldqq;->h:Ljava/lang/String;

    .line 68
    iput-boolean v5, p0, Ldqq;->i:Z

    .line 277
    new-array v1, v3, [Ljava/lang/Long;

    iput-object v1, p0, Ldqq;->o:[Ljava/lang/Long;

    .line 280
    iput-object p1, p0, Ldqq;->g:Landroid/app/Activity;

    .line 281
    iput-object p2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 282
    iput-object p3, p0, Ldqq;->a:Ldqq$e;

    .line 283
    iget-object v1, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 284
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iput-boolean v4, p0, Ldqq;->n:Z

    .line 287
    iget-object v1, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "uidArray":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 289
    iget-object v1, p0, Ldqq;->o:[Ljava/lang/Long;

    aget-object v2, v0, v5

    .line 2109
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 289
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 290
    iget-object v1, p0, Ldqq;->o:[Ljava/lang/Long;

    aget-object v2, v0, v4

    .line 3109
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 290
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 293
    .end local v0    # "uidArray":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ldjd;

    invoke-direct {v1}, Ldjd;-><init>()V

    iput-object v1, p0, Ldqq;->j:Ldjd;

    .line 294
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/Message;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1416
    :cond_0
    const/4 v0, -0x1

    .line 1418
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 347
    if-eqz p0, :cond_1

    .line 348
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "l:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "m:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ldqq;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Ldqq;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ldqq;ILjava/lang/Object;)V
    .locals 2
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 40
    .line 5124
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldqq;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqq$d;

    .line 5127
    if-eqz v0, :cond_0

    .line 5128
    invoke-interface {v0, p1, p2}, Ldqq$d;->c(ILjava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method static synthetic a(Ldqq;ILjava/lang/Object;Z)V
    .locals 2
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 40
    .line 8080
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8081
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldqq;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8082
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqq$d;

    .line 8083
    if-eqz v0, :cond_0

    .line 8084
    invoke-interface {v0, p1, p2, p3}, Ldqq$d;->a(ILjava/lang/Object;Z)V

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method static synthetic a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 40
    .line 8091
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8092
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldqq;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8093
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqq$d;

    .line 8094
    if-eqz v0, :cond_0

    .line 8095
    invoke-interface {v0, p1, p2, p3, p4}, Ldqq$d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method static synthetic a(Ldqq;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ldqq;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Ldqq;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ldqq;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Ldqq;Z)V
    .locals 1
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldqq;->a(Z)V

    return-void
.end method

.method static synthetic b(Ldqq;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Ldqq;->b(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Ldqq;Ljava/util/List;)V
    .locals 12
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xa28

    const/4 v10, 0x0

    .line 40
    .line 5868
    iget-object v0, p0, Ldqq;->j:Ldjd;

    if-eqz v0, :cond_d

    .line 5869
    iget-object v2, p0, Ldqq;->j:Ldjd;

    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    .line 6047
    iget-boolean v2, v2, Ldjd;->a:Z

    if-nez v2, :cond_1

    move v0, v10

    .line 5871
    :goto_0
    if-nez v0, :cond_0

    .line 5872
    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v0, v10, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 40
    :cond_0
    return-void

    .line 6050
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v10

    .line 6051
    goto :goto_0

    .line 6054
    :cond_3
    if-nez v0, :cond_c

    .line 6055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 6059
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6060
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 6063
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v11, v2

    move-object v8, v0

    :goto_3
    if-ltz v11, :cond_a

    .line 6064
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/wukong/im/Message;

    .line 6065
    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6066
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-static {v8}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6067
    :cond_4
    invoke-static {v7}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6068
    invoke-static {v7}, Ldjd;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6069
    invoke-static {v8}, Ldjd;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6072
    :cond_5
    invoke-interface {v9, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v8, v7

    .line 6063
    :cond_6
    :goto_4
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto :goto_3

    .line 6078
    :cond_7
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 6080
    instance-of v0, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_6

    move-object v0, v8

    .line 6081
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 6082
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-eqz v2, :cond_6

    .line 6083
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    .line 6084
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6085
    invoke-interface {v9, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v8, v7

    .line 6086
    goto :goto_4

    .line 6088
    :cond_8
    invoke-virtual {v0, v10, v7}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a(ILcom/alibaba/wukong/im/Message;)V

    goto :goto_4

    .line 6092
    :cond_9
    invoke-static {v8}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6093
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v4, 0x0

    move v2, v1

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v2

    .line 6095
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 6096
    instance-of v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_6

    .line 6097
    new-instance v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;-><init>()V

    .line 6098
    invoke-virtual {v4, v10, v8}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a(ILcom/alibaba/wukong/im/Message;)V

    .line 6099
    invoke-virtual {v4, v10, v7}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a(ILcom/alibaba/wukong/im/Message;)V

    move-object v0, v2

    .line 6100
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object v0, v2

    .line 6101
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v4, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->CombinedPraises:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 6102
    invoke-interface {v9, v10, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6104
    const-string/jumbo v0, "CombinePraiseController build combined Praise Message"

    .line 7018
    const-string/jumbo v4, "im"

    invoke-static {v3, v0, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_4

    .line 6108
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    move-object v0, v3

    goto/16 :goto_2

    :cond_c
    move-object v9, v0

    goto/16 :goto_1

    :cond_d
    move v0, v10

    goto/16 :goto_0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    .local p1, "cs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Ldqq;->d:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 368
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 369
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p0, Ldqq;->d:Ljava/util/HashSet;

    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_0
    return-void
.end method

.method static synthetic c(Ldqq;Ljava/util/List;)Z
    .locals 8
    .param p0, "x0"    # Ldqq;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    .line 7724
    const/4 v1, 0x0

    .line 7725
    if-eqz p1, :cond_1

    .line 7726
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7727
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    .line 7728
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 7729
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 7730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7732
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 7733
    const/4 v0, 0x1

    .line 40
    :goto_1
    return v0

    .line 7727
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1163
    :goto_0
    iget-object v0, p0, Ldqq;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldqq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1164
    iget-object v0, p0, Ldqq;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqq$b;

    invoke-virtual {v0}, Ldqq$b;->b()V

    goto :goto_0

    .line 1166
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I
    .locals 9
    .param p1, "anchor"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "callBack"    # Ldqq$d;
    .param p3, "cancelOld"    # Z
    .param p4, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 972
    iget-boolean v0, p0, Ldqq;->m:Z

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0}, Ldqq;->e()V

    .line 975
    :cond_0
    iget-boolean v0, p0, Ldqq;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 976
    iput-boolean v1, p0, Ldqq;->i:Z

    .line 978
    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 980
    invoke-virtual {p0}, Ldqq;->c()Lcom/alibaba/wukong/im/Message;

    move-result-object v7

    .line 981
    .local v7, "top":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {p0}, Ldqq;->d()Lcom/alibaba/wukong/im/Message;

    move-result-object v5

    .line 983
    .local v5, "bottom":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    invoke-static {v0, p1}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v6

    .line 985
    .local v6, "innerIndex":I
    if-ltz v6, :cond_1

    .line 986
    invoke-interface {p2, v1, v6, p4}, Ldqq$d;->a(IILjava/lang/Object;)V

    .line 1065
    .end local v5    # "bottom":Lcom/alibaba/wukong/im/Message;
    .end local v6    # "innerIndex":I
    .end local v7    # "top":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return v6

    .line 990
    .restart local v5    # "bottom":Lcom/alibaba/wukong/im/Message;
    .restart local v6    # "innerIndex":I
    .restart local v7    # "top":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-virtual {p0, v1}, Ldqq;->a(Z)V

    .line 992
    const/4 v8, 0x0

    new-instance v0, Ldqq$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldqq$4;-><init>(Ldqq;Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;Lcom/alibaba/wukong/im/Message;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v7, p1, v8, v0}, Lcom/alibaba/wukong/im/Message;->compareOffset(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;Lcom/alibaba/wukong/Callback;)V

    .line 1065
    .end local v5    # "bottom":Lcom/alibaba/wukong/im/Message;
    .end local v6    # "innerIndex":I
    .end local v7    # "top":Lcom/alibaba/wukong/im/Message;
    :cond_2
    :goto_1
    const/4 v6, -0x1

    goto :goto_0

    .line 1061
    :cond_3
    invoke-virtual {p0, v1}, Ldqq;->a(Z)V

    .line 1062
    invoke-virtual {p0, p1, p2, p4}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldqq;->c:Ljava/util/List;

    .line 332
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldqq;->d:Ljava/util/HashSet;

    .line 334
    :cond_0
    iget-object v0, p0, Ldqq;->c:Ljava/util/List;

    return-object v0
.end method

.method a(IILjava/lang/Object;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1113
    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1115
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ldqq$d;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqq$d;

    .line 1116
    .local v1, "item":Ldqq$d;
    if-eqz v1, :cond_0

    .line 1117
    invoke-interface {v1, p1, p2, p3}, Ldqq$d;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 1121
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ldqq$d;>;"
    .end local v1    # "item":Ldqq$d;
    :cond_1
    return-void
.end method

.method a(ILjava/lang/Object;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1069
    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1071
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ldqq$d;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqq$d;

    .line 1072
    .local v1, "item":Ldqq$d;
    if-eqz v1, :cond_0

    .line 1073
    invoke-interface {v1, p1, p2}, Ldqq$d;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 1077
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ldqq$d;>;"
    .end local v1    # "item":Ldqq$d;
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 303
    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    iput-object p1, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 314
    :cond_1
    return-void
.end method

.method a(Lcom/alibaba/wukong/im/Message;Ldqq$d;Ljava/lang/Object;)V
    .locals 6
    .param p1, "anchor"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "callBack"    # Ldqq$d;
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1175
    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1177
    new-instance v0, Ldqq$f;

    invoke-direct {v0, p0, p2}, Ldqq$f;-><init>(Ldqq;Ldqq$d;)V

    invoke-virtual {p0, v0}, Ldqq;->a(Ldqq$d;)V

    .line 1178
    invoke-virtual {p0, v5, p3}, Ldqq;->a(ILjava/lang/Object;)V

    .line 1180
    iget-object v1, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const/16 v2, 0x9

    new-instance v0, Ldqq$5;

    invoke-direct {v0, p0, p3, p1}, Ldqq$5;-><init>(Ldqq;Ljava/lang/Object;Lcom/alibaba/wukong/im/Message;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq;->g:Landroid/app/Activity;

    .line 1181
    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1180
    invoke-interface {v1, p1, v5, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    .line 1269
    :goto_0
    return-void

    .line 1267
    :cond_0
    invoke-virtual {p0, v5}, Ldqq;->a(Z)V

    goto :goto_0
.end method

.method public final a(Ldqq$d;)V
    .locals 1
    .param p1, "listener"    # Ldqq$d;

    .prologue
    .line 530
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldqq;->k:Ljava/util/List;

    .line 533
    :cond_0
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 536
    :cond_1
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method

.method public final a(Ldqq$d;JZLjava/lang/Object;)V
    .locals 8
    .param p1, "callBack"    # Ldqq$d;
    .param p2, "senderId"    # J
    .param p4, "cancelOld"    # Z
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 552
    iget-boolean v0, p0, Ldqq;->m:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 553
    invoke-direct {p0}, Ldqq;->e()V

    .line 555
    :cond_0
    iput-boolean v3, p0, Ldqq;->i:Z

    .line 557
    iget-boolean v0, p0, Ldqq;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldqq;->a(Z)V

    .line 561
    new-instance v0, Ldqq$f;

    invoke-direct {v0, p0, p1}, Ldqq$f;-><init>(Ldqq;Ldqq$d;)V

    invoke-virtual {p0, v0}, Ldqq;->a(Ldqq$d;)V

    .line 563
    invoke-virtual {p0, v3, p5}, Ldqq;->a(ILjava/lang/Object;)V

    .line 564
    new-instance v7, Ldqq$1;

    invoke-direct {v7, p0, p5, p2, p3}, Ldqq$1;-><init>(Ldqq;Ljava/lang/Object;J)V

    .line 715
    .local v7, "cancelableCallback":Ldqq$b;
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    .line 716
    iget-object v3, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ILcom/alibaba/wukong/Callback;)V

    .line 721
    .end local v7    # "cancelableCallback":Ldqq$b;
    :cond_1
    :goto_0
    return-void

    .line 718
    .restart local v7    # "cancelableCallback":Ldqq$b;
    :cond_2
    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/Conversation;->listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IIJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Ldqq$d;ZLjava/lang/Object;)V
    .locals 6
    .param p1, "callBack"    # Ldqq$d;
    .param p2, "cancelOld"    # Z
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 748
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ldqq;->a(Ldqq$d;JZLjava/lang/Object;)V

    .line 749
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    .local p1, "cs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v1, p0, Ldqq;->d:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 360
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 361
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p0, Ldqq;->d:Ljava/util/HashSet;

    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x1

    .line 1534
    iget-boolean v2, p0, Ldqq;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldqq;->o:[Ljava/lang/Long;

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1550
    :cond_0
    return-void

    .line 1538
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_fix_im_in_wrong_conversation"

    .line 5083
    invoke-virtual {v2, v3, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1538
    if-eqz v2, :cond_0

    .line 1543
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1544
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 1546
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    iget-object v4, p0, Ldqq;->o:[Ljava/lang/Long;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    iget-object v4, p0, Ldqq;->o:[Ljava/lang/Long;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1547
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ldqq$d;JLjava/lang/Object;)V
    .locals 13
    .param p2, "callBack"    # Ldqq$d;
    .param p3, "senderId"    # J
    .param p5, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ldqq$d;",
            "J",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 382
    iget-boolean v5, p0, Ldqq;->m:Z

    if-eqz v5, :cond_1

    .line 383
    iget-object v5, p0, Ldqq;->l:Ljava/util/LinkedList;

    if-nez v5, :cond_0

    .line 384
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Ldqq;->l:Ljava/util/LinkedList;

    .line 386
    :cond_0
    iget-object v5, p0, Ldqq;->l:Ljava/util/LinkedList;

    new-instance v6, Ldqq$a;

    const/4 v7, 0x0

    move-object/from16 v0, p5

    invoke-direct {v6, v7, p1, p2, v0}, Ldqq$a;-><init>(ILjava/util/List;Ldqq$d;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_1
    const-string/jumbo v5, "im"

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->i:Ljava/lang/String;

    invoke-static {v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v4

    .line 391
    .local v4, "trace":Lcom/alibaba/doraemon/trace/Trace;
    iget-object v5, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_9

    iget-object v5, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Ldqq;->f:Z

    if-eqz v5, :cond_9

    .line 392
    iget-object v5, p0, Ldqq;->c:Ljava/util/List;

    if-nez v5, :cond_2

    .line 393
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ldqq;->c:Ljava/util/List;

    .line 394
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Ldqq;->d:Ljava/util/HashSet;

    .line 3403
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 3404
    new-instance v5, Ldqq$8;

    invoke-direct {v5, p0}, Ldqq$8;-><init>(Ldqq;)V

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 398
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v3, "tmpMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 401
    .local v2, "m":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 402
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_5

    .line 403
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-nez v6, :cond_4

    .line 404
    :cond_5
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "adapter msg id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " create time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    .line 406
    iget-object v6, p0, Ldqq;->d:Ljava/util/HashSet;

    invoke-static {v2}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 407
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_6
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lost msg id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " create time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v2    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 415
    const/4 v5, 0x2

    move-object/from16 v0, p5

    invoke-virtual {p0, v5, v0}, Ldqq;->b(ILjava/lang/Object;)V

    .line 416
    if-eqz p2, :cond_8

    .line 417
    const/4 v5, 0x2

    move-object/from16 v0, p5

    invoke-interface {p2, v5, v0}, Ldqq$d;->b(ILjava/lang/Object;)V

    .line 419
    :cond_8
    invoke-virtual {p0, v3}, Ldqq;->a(Ljava/util/List;)V

    .line 420
    iget-object v5, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    invoke-virtual {p0, v3}, Ldqq;->a(Ljava/util/Collection;)V

    .line 423
    const/4 v5, 0x2

    const/4 v6, -0x1

    move-object/from16 v0, p5

    invoke-virtual {p0, v5, v6, v0}, Ldqq;->a(IILjava/lang/Object;)V

    .line 424
    if-eqz p2, :cond_9

    .line 425
    const/4 v5, 0x2

    const/4 v6, -0x1

    move-object/from16 v0, p5

    invoke-interface {p2, v5, v6, v0}, Ldqq$d;->a(IILjava/lang/Object;)V

    .line 429
    .end local v3    # "tmpMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_9
    invoke-interface {v4}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 431
    .end local v4    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_a
    return-void
.end method

.method public final a(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V
    .locals 7
    .param p2, "callBack"    # Ldqq$d;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ldqq$d;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 448
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 450
    iget-boolean v2, p0, Ldqq;->m:Z

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Ldqq;->l:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 452
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Ldqq;->l:Ljava/util/LinkedList;

    .line 454
    :cond_0
    iget-object v2, p0, Ldqq;->l:Ljava/util/LinkedList;

    new-instance v3, Ldqq$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1, p2, p3}, Ldqq$a;-><init>(ILjava/util/List;Ldqq$d;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_1
    iget-object v2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldqq;->c:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v1, "tmpMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 460
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Ldqq;->d:Ljava/util/HashSet;

    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 468
    invoke-virtual {p0, v5, p3}, Ldqq;->b(ILjava/lang/Object;)V

    .line 469
    if-eqz p2, :cond_4

    .line 470
    invoke-interface {p2, v5, p3}, Ldqq$d;->b(ILjava/lang/Object;)V

    .line 472
    :cond_4
    iget-object v2, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 473
    invoke-direct {p0, v1}, Ldqq;->b(Ljava/util/Collection;)V

    .line 475
    invoke-virtual {p0, v5, v6, p3}, Ldqq;->a(IILjava/lang/Object;)V

    .line 476
    if-eqz p2, :cond_5

    .line 477
    invoke-interface {p2, v5, v6, p3}, Ldqq$d;->a(IILjava/lang/Object;)V

    .line 482
    .end local v1    # "tmpMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    :cond_5
    return-void
.end method

.method a(Z)V
    .locals 7
    .param p1, "isLoading"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1139
    iput-boolean p1, p0, Ldqq;->m:Z

    .line 1141
    :cond_0
    :goto_0
    iget-boolean v1, p0, Ldqq;->m:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ldqq;->l:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldqq;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1142
    iget-object v1, p0, Ldqq;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqq$a;

    .line 1143
    .local v0, "action":Ldqq$a;
    if-eqz v0, :cond_0

    .line 1144
    iget v1, v0, Ldqq$a;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1146
    :pswitch_0
    iget-object v2, v0, Ldqq$a;->b:Ljava/util/List;

    iget-object v3, v0, Ldqq$a;->c:Ldqq$d;

    iget-object v6, v0, Ldqq$a;->d:Ljava/lang/Object;

    .line 4439
    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ldqq;->a(Ljava/util/List;Ldqq$d;JLjava/lang/Object;)V

    goto :goto_0

    .line 1149
    :pswitch_1
    iget-object v1, v0, Ldqq$a;->b:Ljava/util/List;

    iget-object v2, v0, Ldqq$a;->c:Ldqq$d;

    iget-object v3, v0, Ldqq$a;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Ldqq;->a(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V

    goto :goto_0

    .line 1152
    :pswitch_2
    iget-object v1, v0, Ldqq$a;->b:Ljava/util/List;

    iget-object v2, v0, Ldqq$a;->c:Ldqq$d;

    iget-object v3, v0, Ldqq$a;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Ldqq;->b(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V

    goto :goto_0

    .line 1157
    .end local v0    # "action":Ldqq$a;
    :cond_1
    return-void

    .line 1144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 339
    iput-object v0, p0, Ldqq;->c:Ljava/util/List;

    .line 340
    iput-object v0, p0, Ldqq;->d:Ljava/util/HashSet;

    .line 341
    iput-object v0, p0, Ldqq;->k:Ljava/util/List;

    .line 342
    iput-object v0, p0, Ldqq;->l:Ljava/util/LinkedList;

    .line 343
    iput-object v0, p0, Ldqq;->e:Ljava/util/List;

    .line 344
    return-void
.end method

.method b(ILjava/lang/Object;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1102
    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ldqq;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1104
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ldqq$d;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqq$d;

    .line 1105
    .local v1, "item":Ldqq$d;
    if-eqz v1, :cond_0

    .line 1106
    invoke-interface {v1, p1, p2}, Ldqq$d;->b(ILjava/lang/Object;)V

    goto :goto_0

    .line 1110
    .end local v0    # "copy":Ljava/util/List;, "Ljava/util/List<Ldqq$d;>;"
    .end local v1    # "item":Ldqq$d;
    :cond_1
    return-void
.end method

.method public final b(Ldqq$d;)V
    .locals 1
    .param p1, "listener"    # Ldqq$d;

    .prologue
    .line 540
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Ldqq;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    return-void
.end method

.method public final b(Ldqq$d;JZLjava/lang/Object;)V
    .locals 8
    .param p1, "callBack"    # Ldqq$d;
    .param p2, "senderId"    # J
    .param p4, "cancelOld"    # Z
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v2, 0x14

    const/4 v6, 0x1

    .line 769
    iget-boolean v0, p0, Ldqq;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0, v6}, Ldqq;->a(Z)V

    .line 771
    new-instance v0, Ldqq$f;

    invoke-direct {v0, p0, p1}, Ldqq$f;-><init>(Ldqq;Ldqq$d;)V

    invoke-virtual {p0, v0}, Ldqq;->a(Ldqq$d;)V

    .line 772
    invoke-virtual {p0, v6, p5}, Ldqq;->a(ILjava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Ldqq;->c()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 775
    .local v1, "top":Lcom/alibaba/wukong/im/Message;
    new-instance v7, Ldqq$2;

    invoke-direct {v7, p0, p5}, Ldqq$2;-><init>(Ldqq;Ljava/lang/Object;)V

    .line 823
    .local v7, "cancelableCallback":Ldqq$b;
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    .line 824
    iget-boolean v0, p0, Ldqq;->i:Z

    if-eqz v0, :cond_1

    .line 825
    iget-object v3, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1, v6, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    .line 833
    .end local v1    # "top":Lcom/alibaba/wukong/im/Message;
    .end local v7    # "cancelableCallback":Ldqq$b;
    :cond_0
    :goto_0
    return-void

    .line 827
    .restart local v1    # "top":Lcom/alibaba/wukong/im/Message;
    .restart local v7    # "cancelableCallback":Ldqq$b;
    :cond_1
    iget-object v3, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 830
    :cond_2
    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v3, 0x0

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/Conversation;->listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IIJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V
    .locals 7
    .param p2, "callBack"    # Ldqq$d;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ldqq$d;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 490
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 492
    iget-boolean v2, p0, Ldqq;->m:Z

    if-eqz v2, :cond_1

    .line 493
    iget-object v2, p0, Ldqq;->l:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 494
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Ldqq;->l:Ljava/util/LinkedList;

    .line 496
    :cond_0
    iget-object v2, p0, Ldqq;->l:Ljava/util/LinkedList;

    new-instance v3, Ldqq$a;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1, p2, p3}, Ldqq$a;-><init>(ILjava/util/List;Ldqq$d;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_1
    iget-object v2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Ldqq;->c:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 500
    invoke-virtual {p0, v5, p3}, Ldqq;->b(ILjava/lang/Object;)V

    .line 501
    if-eqz p2, :cond_2

    .line 502
    invoke-interface {p2, v5, p3}, Ldqq$d;->b(ILjava/lang/Object;)V

    .line 504
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 506
    .local v1, "m":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    iget-object v2, p0, Ldqq;->c:Ljava/util/List;

    invoke-static {v2, v1}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v0

    .line 508
    .local v0, "i":I
    if-ltz v0, :cond_3

    .line 509
    instance-of v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 511
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object v3, v1

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 513
    :cond_4
    iget-object v2, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    .end local v1    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_5
    invoke-virtual {p0, v5, v6, p3}, Ldqq;->a(IILjava/lang/Object;)V

    .line 519
    if-eqz p2, :cond_6

    .line 520
    invoke-interface {p2, v5, v6, p3}, Ldqq$d;->a(IILjava/lang/Object;)V

    .line 524
    :cond_6
    return-void
.end method

.method c()Lcom/alibaba/wukong/im/Message;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 836
    iget-object v3, p0, Ldqq;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 837
    iget-object v3, p0, Ldqq;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 838
    .local v2, "top":Lcom/alibaba/wukong/im/Message;
    instance-of v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xa28

    if-ne v3, v4, :cond_0

    move-object v0, v2

    .line 839
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 840
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-eqz v3, :cond_0

    .line 841
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    .line 842
    .local v1, "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 847
    .end local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v1    # "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    .end local v2    # "top":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c(Ldqq$d;JZLjava/lang/Object;)V
    .locals 8
    .param p1, "callBack"    # Ldqq$d;
    .param p2, "senderId"    # J
    .param p4, "cancelOld"    # Z
    .param p5, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x15

    .line 880
    iget-boolean v0, p0, Ldqq;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldqq;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0, v6}, Ldqq;->a(Z)V

    .line 882
    new-instance v0, Ldqq$f;

    invoke-direct {v0, p0, p1}, Ldqq$f;-><init>(Ldqq;Ldqq$d;)V

    invoke-virtual {p0, v0}, Ldqq;->a(Ldqq$d;)V

    .line 883
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p5}, Ldqq;->a(ILjava/lang/Object;)V

    .line 885
    invoke-virtual {p0}, Ldqq;->d()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 886
    .local v1, "bottom":Lcom/alibaba/wukong/im/Message;
    new-instance v7, Ldqq$3;

    invoke-direct {v7, p0, p5}, Ldqq$3;-><init>(Ldqq;Ljava/lang/Object;)V

    .line 942
    .local v7, "cancelableCallback":Ldqq$b;
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    .line 943
    iget-boolean v0, p0, Ldqq;->i:Z

    if-eqz v0, :cond_1

    .line 944
    iget-object v3, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1, v6, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listNextMessagesAroundAnchor(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    .line 952
    .end local v1    # "bottom":Lcom/alibaba/wukong/im/Message;
    .end local v7    # "cancelableCallback":Ldqq$b;
    :cond_0
    :goto_0
    return-void

    .line 946
    .restart local v1    # "bottom":Lcom/alibaba/wukong/im/Message;
    .restart local v7    # "cancelableCallback":Ldqq$b;
    :cond_1
    iget-object v3, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listNextMessages(Lcom/alibaba/wukong/im/Message;ILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 949
    :cond_2
    iget-object v0, p0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v3, 0x0

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldqq;->g:Landroid/app/Activity;

    invoke-static {v7, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/Conversation;->listNextLocalMessages(Lcom/alibaba/wukong/im/Message;IIJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method d()Lcom/alibaba/wukong/im/Message;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 851
    iget-object v4, p0, Ldqq;->c:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 852
    iget-object v4, p0, Ldqq;->c:Ljava/util/List;

    iget-object v5, p0, Ldqq;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 853
    .local v0, "bottom":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xa28

    if-ne v4, v5, :cond_0

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 854
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 855
    .local v1, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-eqz v4, :cond_0

    .line 856
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    .line 4039
    .local v2, "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 862
    .end local v0    # "bottom":Lcom/alibaba/wukong/im/Message;
    .end local v1    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v2    # "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    :cond_0
    :goto_0
    return-object v0

    .line 4043
    .restart local v0    # "bottom":Lcom/alibaba/wukong/im/Message;
    .restart local v1    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .restart local v2    # "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    move-object v0, v3

    goto :goto_0

    .end local v0    # "bottom":Lcom/alibaba/wukong/im/Message;
    .end local v1    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v2    # "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    :cond_2
    move-object v0, v3

    .line 862
    goto :goto_0
.end method
