.class public Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
.super Ljava/lang/Object;
.source "BleCharacteristic.java"


# instance fields
.field private mContinuedNotification:Z

.field private mCustomCharacteristicUUID:Ljava/lang/String;

.field private mReadCharacteristicUUID:Ljava/lang/String;

.field private mWriteCharacteristicUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mContinuedNotification:Z

    return-void
.end method


# virtual methods
.method public buildContinuedNotification(Z)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 0
    .param p1, "continuedNotification"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mContinuedNotification:Z

    .line 57
    return-object p0
.end method

.method public buildCustomCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mCustomCharacteristicUUID:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public buildReadCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mReadCharacteristicUUID:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public buildWriteCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mWriteCharacteristicUUID:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public getCustomCharacteristicUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mCustomCharacteristicUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getReadCharacteristicUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mReadCharacteristicUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteCharacteristicUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mWriteCharacteristicUUID:Ljava/lang/String;

    return-object v0
.end method

.method public isContinuedNotification()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->mContinuedNotification:Z

    return v0
.end method
