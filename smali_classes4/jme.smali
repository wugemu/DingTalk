.class public final Ljme;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "isUser"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljme$1;

    invoke-direct {v1, p0}, Ljme$1;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method
