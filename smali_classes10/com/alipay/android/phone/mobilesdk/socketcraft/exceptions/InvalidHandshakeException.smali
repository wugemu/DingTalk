.class public Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
.super Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
.source "InvalidHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x13cc1100e3e186e4L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 21
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    .line 26
    return-void
.end method
