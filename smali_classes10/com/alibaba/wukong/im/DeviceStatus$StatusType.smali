.class public final enum Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
.super Ljava/lang/Enum;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/DeviceStatus$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

.field public static final enum ACTION:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

.field public static final enum STATUS:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36
    new-instance v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->UNKNOWN:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    .line 41
    new-instance v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    const-string/jumbo v1, "ACTION"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->ACTION:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    .line 46
    new-instance v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    const-string/jumbo v1, "STATUS"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->STATUS:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    sget-object v1, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->UNKNOWN:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->ACTION:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->STATUS:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->$VALUES:[Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->type:I

    .line 50
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->values()[Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 58
    .local v0, "t":Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 62
    .end local v0    # "t":Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    :goto_1
    return-object v0

    .line 57
    .restart local v0    # "t":Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "t":Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->UNKNOWN:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->$VALUES:[Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->type:I

    return v0
.end method
