.class public final enum Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;
.super Ljava/lang/Enum;
.source "BluetoothState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

.field public static final enum OFF:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

.field public static final enum ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

.field public static final enum RESETTING:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

.field public static final enum UNAUTHORIZED:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

.field public static final enum UNKNOWN:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    .line 8
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->OFF:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    .line 9
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    const-string/jumbo v1, "RESETTING"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->RESETTING:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    .line 10
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    const-string/jumbo v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->UNAUTHORIZED:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    .line 11
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->UNKNOWN:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    sget-object v1, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->OFF:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->RESETTING:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->UNAUTHORIZED:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->UNKNOWN:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->$VALUES:[Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

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
    .line 6
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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->$VALUES:[Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    return-object v0
.end method
