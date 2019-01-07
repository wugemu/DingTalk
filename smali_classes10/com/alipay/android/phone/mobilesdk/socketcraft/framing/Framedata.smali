.class public interface abstract Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;
.super Ljava/lang/Object;
.source "Framedata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;
        }
    .end annotation
.end method

.method public abstract c()Ljava/nio/ByteBuffer;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;
.end method
