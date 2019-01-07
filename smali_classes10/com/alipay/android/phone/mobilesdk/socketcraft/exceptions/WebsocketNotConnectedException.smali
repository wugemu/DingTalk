.class public Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/WebsocketNotConnectedException;
.super Ljava/lang/RuntimeException;
.source "WebsocketNotConnectedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "Invalid State: Cannot send until connection is open."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
