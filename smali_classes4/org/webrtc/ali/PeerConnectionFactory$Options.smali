.class public Lorg/webrtc/ali/PeerConnectionFactory$Options;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field static final ADAPTER_TYPE_CELLULAR:I = 0x4

.field static final ADAPTER_TYPE_ETHERNET:I = 0x1

.field static final ADAPTER_TYPE_LOOPBACK:I = 0x10

.field static final ADAPTER_TYPE_UNKNOWN:I = 0x0

.field static final ADAPTER_TYPE_VPN:I = 0x8

.field static final ADAPTER_TYPE_WIFI:I = 0x2


# instance fields
.field public disableEncryption:Z

.field public disableNetworkMonitor:Z

.field public networkIgnoreMask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
