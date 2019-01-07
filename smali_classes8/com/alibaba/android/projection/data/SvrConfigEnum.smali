.class public final enum Lcom/alibaba/android/projection/data/SvrConfigEnum;
.super Ljava/lang/Enum;
.source "SvrConfigEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/data/SvrConfigEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/data/SvrConfigEnum;

.field public static final enum PROJECTION_ENCODE_MODE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

.field public static final enum ULTRASOUND_AMPLITUDE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

.field public static final enum ULTRASOUND_DETECTION_ENABLE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

.field public static final enum ULTRASOUND_VOLUME:Lcom/alibaba/android/projection/data/SvrConfigEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;

    const-string/jumbo v1, "ULTRASOUND_DETECTION_ENABLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/projection/data/SvrConfigEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->ULTRASOUND_DETECTION_ENABLE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    .line 11
    new-instance v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;

    const-string/jumbo v1, "ULTRASOUND_AMPLITUDE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/projection/data/SvrConfigEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->ULTRASOUND_AMPLITUDE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    .line 12
    new-instance v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;

    const-string/jumbo v1, "ULTRASOUND_VOLUME"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/projection/data/SvrConfigEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->ULTRASOUND_VOLUME:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    .line 13
    new-instance v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;

    const-string/jumbo v1, "PROJECTION_ENCODE_MODE"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/projection/data/SvrConfigEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->PROJECTION_ENCODE_MODE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/projection/data/SvrConfigEnum;

    sget-object v1, Lcom/alibaba/android/projection/data/SvrConfigEnum;->ULTRASOUND_DETECTION_ENABLE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/projection/data/SvrConfigEnum;->ULTRASOUND_AMPLITUDE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/projection/data/SvrConfigEnum;->ULTRASOUND_VOLUME:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/data/SvrConfigEnum;->PROJECTION_ENCODE_MODE:Lcom/alibaba/android/projection/data/SvrConfigEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->$VALUES:[Lcom/alibaba/android/projection/data/SvrConfigEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/data/SvrConfigEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/data/SvrConfigEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->$VALUES:[Lcom/alibaba/android/projection/data/SvrConfigEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/data/SvrConfigEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/data/SvrConfigEnum;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/android/projection/data/SvrConfigEnum;->value:I

    return v0
.end method
