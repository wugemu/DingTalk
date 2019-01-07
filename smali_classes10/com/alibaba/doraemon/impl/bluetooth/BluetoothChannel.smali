.class public interface abstract Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
.super Ljava/lang/Object;
.source "BluetoothChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    }
.end annotation


# static fields
.field public static final IDENTIFY_MAC:Ljava/lang/String; = "MAC_"

.field public static final IDENTIFY_NAME:Ljava/lang/String; = "NAME_"

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTFAILED:I = 0x5

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_STOPED:I = 0x6

.field public static final WRITE_MTU:I = 0x14


# virtual methods
.method public abstract addEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
.end method

.method public abstract findAndConnectDevice()V
.end method

.method public abstract getUUID()Ljava/util/UUID;
.end method

.method public abstract removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
.end method

.method public abstract stop()V
.end method

.method public abstract write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
.end method
