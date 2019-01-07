.class public final Lalc;
.super Ljava/lang/Object;
.source "TimeStampAdjustMgr.java"


# static fields
.field private static c:Lalc;


# instance fields
.field a:J

.field b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lalc;

    invoke-direct {v0}, Lalc;-><init>()V

    sput-object v0, Lalc;->c:Lalc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lalc;->a:J

    .line 20
    const-string/jumbo v0, "http://"

    iput-object v0, p0, Lalc;->d:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "acs.m.taobao.com"

    iput-object v0, p0, Lalc;->e:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "/gw/mtop.common.getTimestamp/*"

    iput-object v0, p0, Lalc;->f:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "http://acs.m.taobao.com/gw/mtop.common.getTimestamp/*"

    iput-object v0, p0, Lalc;->g:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalc;->b:Z

    return-void
.end method

.method static synthetic a(Lalc;J)J
    .locals 1
    .param p0, "x0"    # Lalc;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lalc;->a:J

    return-wide p1
.end method

.method public static a()Lalc;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lalc;->c:Lalc;

    return-object v0
.end method

.method static synthetic a(Lalc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lalc;

    .prologue
    .line 16
    iget-object v0, p0, Lalc;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lalc;Z)Z
    .locals 1
    .param p0, "x0"    # Lalc;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalc;->b:Z

    return v0
.end method

.method static synthetic b(Lalc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lalc;

    .prologue
    .line 16
    iget-object v0, p0, Lalc;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lalc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lalc;

    .prologue
    .line 16
    iget-object v0, p0, Lalc;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lalc;)J
    .locals 2
    .param p0, "x0"    # Lalc;

    .prologue
    .line 16
    iget-wide v0, p0, Lalc;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 6
    .param p1, "time"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 75
    const-wide/16 v2, 0x0

    .line 77
    .local v2, "recordTime":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 82
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    :cond_0
    iget-wide v4, p0, Lalc;->a:J

    add-long/2addr v4, v2

    return-wide v4

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TimeStampAdjustMgr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
