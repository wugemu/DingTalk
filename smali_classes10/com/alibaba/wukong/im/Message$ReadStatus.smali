.class public final enum Lcom/alibaba/wukong/im/Message$ReadStatus;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Message$ReadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Message$ReadStatus;

.field public static final enum READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

.field public static final enum UNDELIVERED:Lcom/alibaba/wukong/im/Message$ReadStatus;

.field public static final enum UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 640
    new-instance v0, Lcom/alibaba/wukong/im/Message$ReadStatus;

    const-string/jumbo v1, "UNDELIVERED"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNDELIVERED:Lcom/alibaba/wukong/im/Message$ReadStatus;

    .line 644
    new-instance v0, Lcom/alibaba/wukong/im/Message$ReadStatus;

    const-string/jumbo v1, "UNREAD"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/im/Message$ReadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    .line 648
    new-instance v0, Lcom/alibaba/wukong/im/Message$ReadStatus;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/im/Message$ReadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    .line 636
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/Message$ReadStatus;

    sget-object v1, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNDELIVERED:Lcom/alibaba/wukong/im/Message$ReadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/Message$ReadStatus;->$VALUES:[Lcom/alibaba/wukong/im/Message$ReadStatus;

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
    .line 650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 651
    iput p3, p0, Lcom/alibaba/wukong/im/Message$ReadStatus;->type:I

    .line 652
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Message$ReadStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 659
    invoke-static {}, Lcom/alibaba/wukong/im/Message$ReadStatus;->values()[Lcom/alibaba/wukong/im/Message$ReadStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 660
    .local v0, "t":Lcom/alibaba/wukong/im/Message$ReadStatus;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 664
    .end local v0    # "t":Lcom/alibaba/wukong/im/Message$ReadStatus;
    :goto_1
    return-object v0

    .line 659
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Message$ReadStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "t":Lcom/alibaba/wukong/im/Message$ReadStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message$ReadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 636
    const-class v0, Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message$ReadStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Message$ReadStatus;
    .locals 1

    .prologue
    .line 636
    sget-object v0, Lcom/alibaba/wukong/im/Message$ReadStatus;->$VALUES:[Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Message$ReadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Message$ReadStatus;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/alibaba/wukong/im/Message$ReadStatus;->type:I

    return v0
.end method
