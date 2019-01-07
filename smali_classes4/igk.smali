.class public interface abstract Ligk;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;Z)V
.end method

.method public abstract a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
.end method

.method public abstract a(Lihd;)V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract b()Lihg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
.end method

.method public abstract c()Ljava/net/InetSocketAddress;
.end method
