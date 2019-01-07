.class public Lgom;
.super Ljava/lang/Object;
.source "CloudPrintRPC.java"


# static fields
.field private static volatile b:Lgom;


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/idl/service/CloudPrintIService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/CloudPrintIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/CloudPrintIService;

    iput-object v0, p0, Lgom;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CloudPrintIService;

    .line 24
    return-void
.end method

.method public static a()Lgom;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lgom;->b:Lgom;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lgom;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lgom;->b:Lgom;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lgom;

    invoke-direct {v0}, Lgom;-><init>()V

    sput-object v0, Lgom;->b:Lgom;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lgom;->b:Lgom;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
