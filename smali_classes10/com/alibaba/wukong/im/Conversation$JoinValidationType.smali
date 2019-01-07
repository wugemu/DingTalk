.class public final enum Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoinValidationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Conversation$JoinValidationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

.field public static final enum NONE:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

.field public static final enum ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 902
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->NONE:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    .line 903
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    const-string/jumbo v1, "ONLY_MASTER"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    .line 904
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    .line 901
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->NONE:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

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
    .line 908
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 909
    iput p3, p0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->value:I

    .line 910
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 913
    invoke-static {}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->values()[Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 914
    .local v0, "t":Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    iget v4, v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->value:I

    if-ne v4, p0, :cond_0

    .line 918
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    :goto_1
    return-object v0

    .line 913
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 901
    const-class v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Conversation$JoinValidationType;
    .locals 1

    .prologue
    .line 901
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    return-object v0
.end method
