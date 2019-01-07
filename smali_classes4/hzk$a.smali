.class public final Lhzk$a;
.super Ljava/lang/Object;
.source "GCanvasImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lhzk$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
