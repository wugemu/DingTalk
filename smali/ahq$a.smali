.class final Lahq$a;
.super Ljava/lang/Object;
.source "AbsUpdateCalendarTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "ops"    # I
    .param p2, "eventId"    # J

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lahq$a;->a:I

    .line 133
    iput-wide p2, p0, Lahq$a;->b:J

    .line 134
    return-void
.end method
