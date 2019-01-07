.class public final enum Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;
.super Ljava/lang/Enum;
.source "BluetoothMagician.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

.field public static final enum CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

.field public static final enum HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

.field public static final enum LOW:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

.field public static final enum NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;


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

    .line 40
    new-instance v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .line 41
    new-instance v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->LOW:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .line 42
    new-instance v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    const-string/jumbo v1, "NEVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .line 43
    new-instance v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->LOW:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->$VALUES:[Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->value:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->$VALUES:[Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->value:I

    return v0
.end method
