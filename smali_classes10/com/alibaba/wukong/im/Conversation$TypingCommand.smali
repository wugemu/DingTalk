.class public final enum Lcom/alibaba/wukong/im/Conversation$TypingCommand;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Conversation$TypingCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Conversation$TypingCommand;

.field public static final enum CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

.field public static final enum TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 967
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    const-string/jumbo v1, "TYPING"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 973
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 975
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 962
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->TYPING:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$TypingCommand;

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
    .line 982
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 983
    iput p3, p0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->value:I

    .line 984
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 995
    invoke-static {}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->values()[Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 996
    .local v0, "t":Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 1000
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    :goto_1
    return-object v0

    .line 995
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1000
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 962
    const-class v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .locals 1

    .prologue
    .line 962
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Conversation$TypingCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->value:I

    return v0
.end method
