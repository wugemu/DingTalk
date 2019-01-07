.class public final Lali;
.super Ljava/lang/Object;
.source "ConfigArrivedMonitor.java"

# interfaces
.implements Lajz$a;


# static fields
.field public static final a:Lalo;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lali;->a:Lalo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lali;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "key"

    aput-object v2, v1, v6

    aput-object p1, v1, v7

    const-string/jumbo v2, "value"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v9, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v1, p0, Lali;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "arrival_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v1, "app_start_time"

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v2

    .line 1044
    iget-wide v2, v2, Lalb;->a:J

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lali;->a:Lalo;

    sget v2, Laln;->f:I

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v4}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalo;->a(Laln;)V

    .line 38
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "json"

    aput-object v2, v1, v6

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v9, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .end local v0    # "args":Ljava/util/Map;
    :cond_0
    iput-object p2, p0, Lali;->b:Ljava/lang/String;

    .line 43
    return-void
.end method
