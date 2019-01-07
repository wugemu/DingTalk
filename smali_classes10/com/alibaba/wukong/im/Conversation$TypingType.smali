.class public final enum Lcom/alibaba/wukong/im/Conversation$TypingType;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Conversation$TypingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Conversation$TypingType;

.field public static final enum AUDIO:Lcom/alibaba/wukong/im/Conversation$TypingType;

.field public static final enum IMAGE:Lcom/alibaba/wukong/im/Conversation$TypingType;

.field public static final enum TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingType;

.field public static final enum VIDEO:Lcom/alibaba/wukong/im/Conversation$TypingType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 926
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/im/Conversation$TypingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    .line 927
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/im/Conversation$TypingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->IMAGE:Lcom/alibaba/wukong/im/Conversation$TypingType;

    .line 928
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    const-string/jumbo v1, "AUDIO"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/wukong/im/Conversation$TypingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->AUDIO:Lcom/alibaba/wukong/im/Conversation$TypingType;

    .line 929
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/wukong/im/Conversation$TypingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->VIDEO:Lcom/alibaba/wukong/im/Conversation$TypingType;

    .line 930
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/wukong/im/Conversation$TypingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingType;

    .line 925
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/wukong/im/Conversation$TypingType;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingType;->IMAGE:Lcom/alibaba/wukong/im/Conversation$TypingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingType;->AUDIO:Lcom/alibaba/wukong/im/Conversation$TypingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingType;->VIDEO:Lcom/alibaba/wukong/im/Conversation$TypingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$TypingType;

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
    .line 937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 938
    iput p3, p0, Lcom/alibaba/wukong/im/Conversation$TypingType;->value:I

    .line 939
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Conversation$TypingType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 950
    invoke-static {}, Lcom/alibaba/wukong/im/Conversation$TypingType;->values()[Lcom/alibaba/wukong/im/Conversation$TypingType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 951
    .local v0, "t":Lcom/alibaba/wukong/im/Conversation$TypingType;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Conversation$TypingType;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 955
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$TypingType;
    :goto_1
    return-object v0

    .line 950
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Conversation$TypingType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$TypingType;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation$TypingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 925
    const-class v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation$TypingType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Conversation$TypingType;
    .locals 1

    .prologue
    .line 925
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Conversation$TypingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Conversation$TypingType;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/alibaba/wukong/im/Conversation$TypingType;->value:I

    return v0
.end method
