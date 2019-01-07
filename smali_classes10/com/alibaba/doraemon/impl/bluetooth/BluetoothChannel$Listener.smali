.class public interface abstract Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
.super Ljava/lang/Object;
.source "BluetoothChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDeviceConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeviceDisconnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
.end method
