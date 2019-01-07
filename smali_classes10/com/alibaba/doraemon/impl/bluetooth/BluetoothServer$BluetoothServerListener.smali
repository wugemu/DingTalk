.class public interface abstract Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;
.super Ljava/lang/Object;
.source "BluetoothServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothServerListener"
.end annotation


# virtual methods
.method public abstract onBluetoothListenerFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
.end method

.method public abstract onBluetoothServerStoped(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
.end method

.method public abstract onBluetoothSocketConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;)V
.end method
