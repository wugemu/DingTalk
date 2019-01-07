.class public final Leif;
.super Ljava/lang/Object;
.source "RimetCrashMonitorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/crash/CrashMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leif$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/crash/CrashHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leif;->d:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "uid"

    iput-object v0, p0, Leif;->a:Ljava/lang/String;

    .line 34
    const/high16 v0, 0x200000

    iput v0, p0, Leif;->b:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Leif;->c:Z

    .line 39
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Leif;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final registerCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/alibaba/doraemon/crash/CrashHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v1, Leif;->d:Ljava/util/List;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-boolean v0, p0, Leif;->c:Z

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object v0

    new-instance v2, Leif$a;

    invoke-direct {v2, p0}, Leif$a;-><init>(Leif;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Leif;->c:Z

    .line 50
    :cond_1
    sget-object v0, Leif;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final unregisterCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/alibaba/doraemon/crash/CrashHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v1, Leif;->d:Ljava/util/List;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Leif;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
