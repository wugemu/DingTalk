.class public final Lhtp;
.super Ljava/lang/Object;
.source "SendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhtp$a;,
        Lhtp$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lhtn;

.field c:Lhtd;

.field public d:Lhtm;

.field e:Lhtp$b;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhte;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhtn;Lhtd;Lhtm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reporterContext"    # Lhtn;
    .param p3, "configuration"    # Lhtd;
    .param p4, "reportBuilder"    # Lhtm;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhtp;->f:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhtp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhtp;->h:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lhtp;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lhtp;->b:Lhtn;

    .line 33
    iput-object p3, p0, Lhtp;->c:Lhtd;

    .line 34
    iput-object p4, p0, Lhtp;->d:Lhtm;

    .line 35
    new-instance v0, Lhtp$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lhtp$a;-><init>(Lhtp;Landroid/content/Context;Lhtn;Lhtd;)V

    iput-object v0, p0, Lhtp;->e:Lhtp$b;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lhte;)V
    .locals 2
    .param p1, "crashReport"    # Lhte;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Lhte;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lhtp;->a([Lhte;)V

    .line 73
    return-void
.end method

.method public final a([Lhte;)V
    .locals 7
    .param p1, "crashReports"    # [Lhte;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    array-length v4, p1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, p1, v2

    .line 86
    .local v0, "crashReport":Lhte;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lhte;->f:Ljava/lang/String;

    invoke-static {v5}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    iget-object v5, p0, Lhtp;->f:Ljava/util/Map;

    iget-object v6, v0, Lhte;->f:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "crashReport":Lhte;
    :cond_3
    iget-object v2, p0, Lhtp;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhtp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v1, Lhtp$1;

    const-string/jumbo v2, "CrashReportSender"

    invoke-direct {v1, p0, v2}, Lhtp$1;-><init>(Lhtp;Ljava/lang/String;)V

    .line 164
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
