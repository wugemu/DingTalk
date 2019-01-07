.class public final Linv;
.super Ljava/lang/Object;
.source "H5AvailablePageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linv$b;,
        Linv$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Landroid/os/Handler;

.field public i:Linv$a;

.field public j:Linv$b;

.field public k:J

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Linv;->a()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Linv;->h:Landroid/os/Handler;

    .line 30
    new-instance v0, Linv$a;

    invoke-direct {v0, p0, v1}, Linv$a;-><init>(Linv;B)V

    iput-object v0, p0, Linv;->i:Linv$a;

    .line 31
    new-instance v0, Linv$b;

    invoke-direct {v0, p0, v1}, Linv$b;-><init>(Linv;B)V

    iput-object v0, p0, Linv;->j:Linv$b;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 51
    const-string/jumbo v0, "H5AvailablePageData"

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-wide v2, p0, Linv;->a:J

    .line 53
    iput v4, p0, Linv;->l:I

    .line 54
    iput-boolean v4, p0, Linv;->b:Z

    .line 55
    iput-boolean v4, p0, Linv;->c:Z

    .line 56
    iput-wide v2, p0, Linv;->d:J

    .line 57
    iput-wide v2, p0, Linv;->e:J

    .line 58
    iput-wide v2, p0, Linv;->f:J

    .line 59
    iput-wide v2, p0, Linv;->g:J

    .line 60
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    iget-wide v0, p0, Linv;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "H5AvailablePageData"

    const-string/jumbo v1, "waitForStopLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Linv;->b:Z

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Linv;->d:J

    .line 119
    iget-object v0, p0, Linv;->h:Landroid/os/Handler;

    iget-object v1, p0, Linv;->i:Linv$a;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_0
    return-void
.end method
