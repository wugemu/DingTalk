.class public final Ljog;
.super Ljoe;
.source "TotalSizeCountLruDiskUsage.java"


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 4
    .param p1, "maxSize"    # J
    .param p3, "maxCount"    # I

    .prologue
    const-wide/32 v2, 0x12c00000

    .line 15
    invoke-direct {p0}, Ljoe;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Max size must be positive number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-wide v2, p0, Ljog;->a:J

    .line 23
    const/16 v0, 0x14

    iput v0, p0, Ljog;->b:I

    .line 24
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-super {p0, p1}, Ljoe;->a(Ljava/io/File;)V

    return-void
.end method

.method protected final a(JI)Z
    .locals 3
    .param p1, "totalSize"    # J
    .param p3, "totalCount"    # I

    .prologue
    .line 28
    iget-wide v0, p0, Ljog;->a:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Ljog;->b:I

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
