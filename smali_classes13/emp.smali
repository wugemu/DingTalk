.class public final Lemp;
.super Ljava/lang/Object;
.source "ScanHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lemp$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;

.field c:Landroid/content/Context;

.field d:Lemp$a;

.field e:Lcom/alipay/mobile/bqcscanservice/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Scan-Recognized"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lemp;->a:Landroid/os/HandlerThread;

    .line 24
    iget-object v0, p0, Lemp;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lemp;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lemp;->b:Landroid/os/Handler;

    .line 26
    return-void
.end method
