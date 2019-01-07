.class public final Lebq;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# instance fields
.field public a:J

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(JII)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lebq;->a:J

    .line 10
    iput p3, p0, Lebq;->b:I

    .line 11
    iput p4, p0, Lebq;->c:I

    .line 12
    return-void
.end method
