.class public final enum Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

.field public static final enum FORCE_FROM_LOCAL:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

.field public static final enum FORCE_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

.field public static final enum LOCAL_NOT_EXIST_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1048
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    const-string/jumbo v1, "FORCE_FROM_LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_LOCAL:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    .line 1050
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    const-string/jumbo v1, "FORCE_FROM_SERVER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    .line 1052
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    const-string/jumbo v1, "LOCAL_NOT_EXIST_FROM_SERVER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->LOCAL_NOT_EXIST_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    .line 1046
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_LOCAL:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->LOCAL_NOT_EXIST_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

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
    .line 1046
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1046
    const-class v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;
    .locals 1

    .prologue
    .line 1046
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    return-object v0
.end method
