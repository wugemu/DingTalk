.class public final Lfrd;
.super Ljava/lang/Object;
.source "AlipayAuthCodeHelper.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lfrd$1;

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfrd$1;-><init>(Lfrd;Landroid/os/Looper;)V

    iput-object v0, p0, Lfrd;->c:Landroid/os/Handler;

    .line 32
    return-void
.end method
