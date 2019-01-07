.class public final enum Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Conversation$ConversationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field public static final enum DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field public static final enum HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field public static final enum KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field public static final enum NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field public static final enum OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

.field public static final enum QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 846
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 850
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    const-string/jumbo v1, "QUIT"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 854
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    const-string/jumbo v1, "KICKOUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 858
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 863
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    const-string/jumbo v1, "HIDE"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 867
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    const-string/jumbo v1, "DISBAND"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 841
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->OFFLINE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 872
    iput p3, p0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    .line 873
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 889
    invoke-static {}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->values()[Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 890
    .local v0, "t":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 894
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :goto_1
    return-object v0

    .line 889
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 841
    const-class v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .locals 1

    .prologue
    .line 841
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    return v0
.end method
