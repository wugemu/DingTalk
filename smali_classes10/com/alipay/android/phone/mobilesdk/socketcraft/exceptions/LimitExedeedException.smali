.class public Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/LimitExedeedException;
.super Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
.source "LimitExedeedException.java"


# static fields
.field private static final serialVersionUID:J = 0x5fdf5a6688bc28a1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x3f1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 17
    const/16 v0, 0x3f1

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method
