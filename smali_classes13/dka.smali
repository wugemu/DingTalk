.class public final Ldka;
.super Ljava/lang/Object;
.source "MessageReadManager.java"


# static fields
.field private static a:Ldka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ldka;

    invoke-direct {v0}, Ldka;-><init>()V

    sput-object v0, Ldka;->a:Ldka;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Ldka;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ldka;->a:Ldka;

    return-object v0
.end method


# virtual methods
.method public final a(JLcom/alibaba/wukong/im/Message;)Z
    .locals 5
    .param p1, "currentUserId"    # J
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 36
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_1

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    invoke-static {p3, v1, v1}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;IZ)V

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/16 v3, 0x258

    if-eq v2, v3, :cond_0

    .line 57
    :cond_2
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 62
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 67
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getGroupLevel()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1082
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v0

    .line 72
    :goto_1
    if-nez v2, :cond_0

    .line 77
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->read()V

    move v0, v1

    .line 78
    goto :goto_0

    .line 1086
    :cond_5
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    .line 1087
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v3, v4, :cond_7

    const/16 v3, 0x66

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_6

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_6

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_6

    const/16 v3, 0x67

    if-eq v2, v3, :cond_6

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_6

    const/16 v3, 0xca

    if-eq v2, v3, :cond_6

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_6

    .line 1097
    invoke-static {p3}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v2, v1

    .line 1098
    goto :goto_1

    :cond_7
    move v2, v0

    .line 1100
    goto :goto_1
.end method
