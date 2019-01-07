.class public final Lbfs;
.super Ljava/lang/Object;
.source "MeetingCheckInQRCodeTimelinessObject.java"


# instance fields
.field public a:J

.field public b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "timeliness"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lbfs;->a:J

    .line 16
    iput-boolean p3, p0, Lbfs;->b:Z

    .line 17
    return-void
.end method
