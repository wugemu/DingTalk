.class public final enum Lcom/alibaba/wukong/im/IMStatus$StatusType;
.super Ljava/lang/Enum;
.source "IMStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/IMStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/IMStatus$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/IMStatus$StatusType;

.field public static final enum OK:Lcom/alibaba/wukong/im/IMStatus$StatusType;

.field public static final enum STORAGE_FULL:Lcom/alibaba/wukong/im/IMStatus$StatusType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 15
    new-instance v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/IMStatus$StatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;->OK:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    .line 19
    new-instance v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;

    const-string/jumbo v1, "STORAGE_FULL"

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/wukong/im/IMStatus$StatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;->STORAGE_FULL:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    .line 11
    new-array v0, v4, [Lcom/alibaba/wukong/im/IMStatus$StatusType;

    sget-object v1, Lcom/alibaba/wukong/im/IMStatus$StatusType;->OK:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/IMStatus$StatusType;->STORAGE_FULL:Lcom/alibaba/wukong/im/IMStatus$StatusType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;->$VALUES:[Lcom/alibaba/wukong/im/IMStatus$StatusType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/alibaba/wukong/im/IMStatus$StatusType;->type:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/IMStatus$StatusType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/IMStatus$StatusType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/wukong/im/IMStatus$StatusType;->$VALUES:[Lcom/alibaba/wukong/im/IMStatus$StatusType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/IMStatus$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/IMStatus$StatusType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/wukong/im/IMStatus$StatusType;->type:I

    return v0
.end method
