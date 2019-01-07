.class public final Lijb;
.super Ljava/lang/Object;
.source "ScanResultMonitor.java"


# instance fields
.field public volatile a:I

.field public volatile b:Z

.field public volatile c:J

.field public d:Z

.field public volatile e:F

.field public volatile f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 18
    iget-boolean v0, p0, Lijb;->d:Z

    if-eqz v0, :cond_1

    .line 19
    iget-wide v0, p0, Lijb;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lijb;->f:J

    .line 21
    iput v2, p0, Lijb;->a:I

    .line 31
    :goto_0
    return-void

    .line 23
    :cond_0
    iget v0, p0, Lijb;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lijb;->a:I

    goto :goto_0

    .line 26
    :cond_1
    iput-wide v4, p0, Lijb;->f:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lijb;->e:F

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lijb;->a:I

    .line 29
    iput-boolean v2, p0, Lijb;->b:Z

    goto :goto_0
.end method
