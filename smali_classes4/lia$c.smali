.class final Llia$c;
.super Llie;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Llie;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 244
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llia$c;->a:J

    .line 245
    return-void
.end method
