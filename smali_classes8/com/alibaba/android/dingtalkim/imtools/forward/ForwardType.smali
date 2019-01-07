.class public final enum Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
.super Ljava/lang/Enum;
.source "ForwardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

.field public static final enum ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

.field public static final enum ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    const-string/jumbo v1, "ENCRYPT_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    .line 16
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    const-string/jumbo v1, "ENCRYPT_FILE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static isSameOrg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 47
    .local v0, "msgConv":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 51
    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 52
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 20
    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    .line 39
    :goto_0
    return-object v1

    .line 23
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 24
    .local v0, "type":I
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 27
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_TEXT:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_3

    .line 32
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {p0}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, p0}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->isSameOrg(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 36
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    goto :goto_0

    .line 39
    :cond_4
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    return-object v0
.end method
