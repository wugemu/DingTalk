.class public Lali/mmpc/session/SessionFactoryNative;
.super Ljava/lang/Object;
.source "SessionFactoryNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createP2PSession(Lali/mmpc/session/p2p/P2PSessionNativeCallback;)J
.end method

.method public static native destroyP2PSession(J)V
.end method
