.class public final Lrx/exceptions/AssemblyStackTraceException;
.super Ljava/lang/RuntimeException;
.source "AssemblyStackTraceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1c4b7c27e9c0effcL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static find(Ljava/lang/Throwable;)Lrx/exceptions/AssemblyStackTraceException;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_0
    instance-of v2, p0, Lrx/exceptions/AssemblyStackTraceException;

    if-eqz v2, :cond_1

    .line 85
    check-cast p0, Lrx/exceptions/AssemblyStackTraceException;

    .line 92
    .end local p0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .line 87
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object p0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 91
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v1

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public final attachTo(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Received an exception with a cause set to null, instead of being unset. To fix this, look down the chain of causes. The last exception had a cause explicitly set to null. It should be unset instead."

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 67
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {p0}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 42
    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
