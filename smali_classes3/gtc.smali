.class public final Lgtc;
.super Ljava/lang/Object;
.source "FrequencyController.java"


# instance fields
.field public volatile a:J

.field private final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lgtc;-><init>(J)V

    .line 16
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "maxInterval"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgtc;->a:J

    .line 19
    iput-wide p1, p0, Lgtc;->b:J

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-wide v4, p0, Lgtc;->a:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lgtc;->a:J

    sub-long v0, v4, v6

    .line 35
    .local v0, "interval":J
    iget-wide v4, p0, Lgtc;->b:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
