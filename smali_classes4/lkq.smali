.class public Llkq;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final a:Llkq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Llkq;

    invoke-direct {v0}, Llkq;-><init>()V

    sput-object v0, Llkq;->a:Llkq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Llgv;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 1066
    new-instance v1, Llib;

    invoke-direct {v1, v0}, Llib;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 52
    return-object v1
.end method

.method public static a(Llhf;)Llhf;
    .locals 0
    .param p0, "action"    # Llhf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    return-object p0
.end method

.method public static b()Llgv;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 1089
    new-instance v1, Llia;

    invoke-direct {v1, v0}, Llia;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 75
    return-object v1
.end method

.method public static c()Llgv;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 1112
    new-instance v1, Llid;

    invoke-direct {v1, v0}, Llid;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 98
    return-object v1
.end method

.method public static d()Llgv;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Llgv;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Llgv;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public static g()Llkq;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Llkq;->a:Llkq;

    return-object v0
.end method
