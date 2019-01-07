.class public final Lgzg;
.super Ljava/lang/Object;
.source "BizErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgzg$a;
    }
.end annotation


# instance fields
.field public a:Lgzj;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lgzj;

    invoke-direct {v0}, Lgzj;-><init>()V

    iput-object v0, p0, Lgzg;->a:Lgzj;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgzg;->b:Ljava/lang/Long;

    .line 29
    iput-object v2, p0, Lgzg;->c:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lgzg;->d:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgzg;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lgzg;
    .locals 2

    .prologue
    .line 52
    const-class v0, Lgzg;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lgzg$a;->a()Lgzg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
