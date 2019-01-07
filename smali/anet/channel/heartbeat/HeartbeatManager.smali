.class public final Lanet/channel/heartbeat/HeartbeatManager;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/heartbeat/HeartbeatManager$Receiver;
    }
.end annotation


# static fields
.field private static volatile a:Liy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lanet/channel/heartbeat/HeartbeatManager$1;

    invoke-direct {v0}, Lanet/channel/heartbeat/HeartbeatManager$1;-><init>()V

    sput-object v0, Lanet/channel/heartbeat/HeartbeatManager;->a:Liy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a()Liy;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lanet/channel/heartbeat/HeartbeatManager;->a:Liy;

    return-object v0
.end method

.method public static a(Liy;)V
    .locals 0
    .param p0, "factory"    # Liy;

    .prologue
    .line 29
    sput-object p0, Lanet/channel/heartbeat/HeartbeatManager;->a:Liy;

    .line 30
    return-void
.end method
