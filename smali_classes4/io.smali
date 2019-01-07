.class public final Lio;
.super Lip;
.source "DisconnectedEvent.java"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lanet/channel/entity/EventType;
    .param p2, "forceClose"    # Z
    .param p3, "errorCode"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1, p3, p4}, Lip;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio;->a:Z

    .line 9
    return-void
.end method
