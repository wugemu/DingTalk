.class public interface abstract Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;
.super Ljava/lang/Object;
.source "BluetoothFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FutureListener"
.end annotation


# virtual methods
.method public abstract onResult(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V
.end method

.method public abstract onTimeout(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V
.end method
