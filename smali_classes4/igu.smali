.class public interface abstract Ligu;
.super Ljava/lang/Object;
.source "CloseFrame.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;


# virtual methods
.method public abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidFrameException;
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation
.end method
