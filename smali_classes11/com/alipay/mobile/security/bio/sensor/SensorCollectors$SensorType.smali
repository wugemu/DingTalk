.class public final enum Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;
.super Ljava/lang/Enum;
.source "SensorCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

.field public static final enum ACCELEROMETER:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

.field public static final enum GYROSCOPE:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

.field public static final enum MAGNETIC:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;


# instance fields
.field private mSensorName:Ljava/lang/String;

.field private mSensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 20
    new-instance v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "ACCELEROMETER"

    const-string/jumbo v2, "Acceleration"

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    .line 22
    new-instance v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "GYROSCOPE"

    const/4 v2, 0x4

    const-string/jumbo v3, "Gyroscope"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    .line 23
    new-instance v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    const-string/jumbo v1, "MAGNETIC"

    const-string/jumbo v2, "Magnetic"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    sget-object v1, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->$VALUES:[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "t"    # I
    .param p4, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p4, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->mSensorName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->mSensorType:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->$VALUES:[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    return-object v0
.end method


# virtual methods
.method public final getSensorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->mSensorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getmSensorType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->mSensorType:I

    return v0
.end method
