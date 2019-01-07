.class public final enum Lcom/alibaba/wukong/im/Message$MessageType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Message$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Message$MessageType;

.field public static final enum COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

.field public static final enum ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

.field public static final enum SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 594
    new-instance v0, Lcom/alibaba/wukong/im/Message$MessageType;

    const-string/jumbo v1, "COMMON"

    invoke-direct {v0, v1, v5, v3}, Lcom/alibaba/wukong/im/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 602
    new-instance v0, Lcom/alibaba/wukong/im/Message$MessageType;

    const-string/jumbo v1, "SILENT"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/wukong/im/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 606
    new-instance v0, Lcom/alibaba/wukong/im/Message$MessageType;

    const-string/jumbo v1, "ENCRYPT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/wukong/im/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 610
    new-instance v0, Lcom/alibaba/wukong/im/Message$MessageType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/wukong/im/Message$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 590
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->COMMON:Lcom/alibaba/wukong/im/Message$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->$VALUES:[Lcom/alibaba/wukong/im/Message$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 612
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 613
    iput p3, p0, Lcom/alibaba/wukong/im/Message$MessageType;->type:I

    .line 614
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Message$MessageType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 624
    invoke-static {}, Lcom/alibaba/wukong/im/Message$MessageType;->values()[Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 625
    .local v0, "t":Lcom/alibaba/wukong/im/Message$MessageType;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Message$MessageType;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 629
    .end local v0    # "t":Lcom/alibaba/wukong/im/Message$MessageType;
    :goto_1
    return-object v0

    .line 624
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Message$MessageType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v0    # "t":Lcom/alibaba/wukong/im/Message$MessageType;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 590
    const-class v0, Lcom/alibaba/wukong/im/Message$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Message$MessageType;
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/alibaba/wukong/im/Message$MessageType;->$VALUES:[Lcom/alibaba/wukong/im/Message$MessageType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Message$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Message$MessageType;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/alibaba/wukong/im/Message$MessageType;->type:I

    return v0
.end method
