.class public Lorg/altbeacon/beacon/BleNotAvailableException;
.super Ljava/lang/RuntimeException;
.source "BleNotAvailableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1f1fd7433483eb61L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
