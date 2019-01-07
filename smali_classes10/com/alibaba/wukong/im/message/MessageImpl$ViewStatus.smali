.class public final enum Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
.super Ljava/lang/Enum;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

.field public static final enum OUT_VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

.field public static final enum VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1758
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    const-string/jumbo v1, "OUT_VIEW"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->OUT_VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    .line 1762
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    const-string/jumbo v1, "VIEW"

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    .line 1754
    new-array v0, v4, [Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    sget-object v1, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->OUT_VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->$VALUES:[Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

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
    .line 1764
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1765
    iput p3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->type:I

    .line 1766
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 1775
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->values()[Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1776
    .local v0, "t":Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 1780
    .end local v0    # "t":Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    :goto_1
    return-object v0

    .line 1775
    .restart local v0    # "t":Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1780
    .end local v0    # "t":Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->OUT_VIEW:Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1754
    const-class v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;
    .locals 1

    .prologue
    .line 1754
    sget-object v0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->$VALUES:[Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 1771
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$ViewStatus;->type:I

    return v0
.end method
