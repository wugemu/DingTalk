.class public interface abstract Ligw;
.super Ljava/lang/Object;
.source "FrameBuilder.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;


# virtual methods
.method public abstract a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract b(Z)V
.end method
