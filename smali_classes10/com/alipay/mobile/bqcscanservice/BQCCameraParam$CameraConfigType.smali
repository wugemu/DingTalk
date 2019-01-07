.class public final enum Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;
.super Ljava/lang/Enum;
.source "BQCCameraParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/bqcscanservice/BQCCameraParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;->$VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;->$VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$CameraConfigType;

    return-object v0
.end method
