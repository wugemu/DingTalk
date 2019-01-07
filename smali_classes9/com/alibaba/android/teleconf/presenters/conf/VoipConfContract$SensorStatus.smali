.class public final enum Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;
.super Ljava/lang/Enum;
.source "VoipConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

.field public static final enum SENSOR_PREPARING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

.field public static final enum SENSOR_READY:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

.field public static final enum SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    const-string/jumbo v1, "SENSOR_PREPARING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_PREPARING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    .line 54
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    const-string/jumbo v1, "SENSOR_READY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_READY:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    .line 55
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    const-string/jumbo v1, "SENSOR_RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_PREPARING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_READY:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->SENSOR_RUNNING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$SensorStatus;

    return-object v0
.end method
