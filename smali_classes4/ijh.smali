.class public abstract Lijh;
.super Lijc;
.source "LruDiskCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lijc;-><init>()V

    return-void
.end method

.method public static synthetic a(Lijh;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lijh;->a:J

    return-wide v0
.end method

.method public static synthetic a(Lijh;J)J
    .locals 3

    .prologue
    .line 17
    iget-wide v0, p0, Lijh;->a:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lijh;->a:J

    return-wide v0
.end method

.method public static synthetic a(Lijh;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lijh;->a(Ljava/lang/String;)V

    return-void
.end method
