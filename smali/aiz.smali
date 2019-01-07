.class public final Laiz;
.super Ljava/lang/Object;
.source "RepeatActionDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field public c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x64

    sput v0, Laiz;->a:I

    .line 20
    const/4 v0, 0x3

    sput v0, Laiz;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Laiz;, "Laiz<TT;>;"
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Laiz;->a:I

    iput v0, p0, Laiz;->d:I

    .line 23
    sget v0, Laiz;->b:I

    iput v0, p0, Laiz;->e:I

    .line 28
    iput-boolean v1, p0, Laiz;->f:Z

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    .line 39
    sget v0, Laiz;->a:I

    iput v0, p0, Laiz;->d:I

    .line 40
    sget v0, Laiz;->b:I

    iput v0, p0, Laiz;->e:I

    .line 41
    iput-boolean v1, p0, Laiz;->f:Z

    .line 42
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "maxMapSize"    # I
    .param p2, "maxKickForRun"    # I
    .param p3, "isSyncHandleTask"    # Z

    .prologue
    .line 44
    .local p0, "this":Laiz;, "Laiz<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Laiz;->a:I

    iput v0, p0, Laiz;->d:I

    .line 23
    sget v0, Laiz;->b:I

    iput v0, p0, Laiz;->e:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Laiz;->f:Z

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Laiz;->d:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Laiz;->e:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Laiz;->f:Z

    .line 49
    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 109
    .local p0, "this":Laiz;, "Laiz<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "firstKey":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "firstKey":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 118
    .restart local v0    # "firstKey":Ljava/lang/Integer;
    :cond_0
    if-eqz v0, :cond_1

    .line 119
    iget-object v2, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "firstKey":Ljava/lang/Integer;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized a(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 64
    .local p0, "this":Laiz;, "Laiz<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v1, "count":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 70
    .local v0, "c":I
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 74
    :goto_0
    :try_start_2
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v0    # "c":I
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 71
    .restart local v0    # "c":I
    .restart local v1    # "count":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "c":I
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 76
    :cond_1
    :try_start_4
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    iget v4, p0, Laiz;->d:I

    if-lt v3, v4, :cond_2

    .line 77
    invoke-direct {p0}, Laiz;->a()V

    .line 78
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_2
    iget-object v3, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 86
    .local p0, "this":Laiz;, "Laiz<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Laiz;->c:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    const/4 v3, 0x0

    .line 90
    .local v3, "shoudRun":Z
    :try_start_1
    iget-object v4, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .local v2, "key":Ljava/lang/Integer;
    :try_start_2
    iget-object v4, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "count":I
    iget v4, p0, Laiz;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v4, :cond_2

    .line 95
    const/4 v3, 0x1

    .line 101
    .end local v0    # "count":I
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_3
    if-eqz v3, :cond_0

    .line 102
    :try_start_3
    iget-object v4, p0, Laiz;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 103
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 86
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "shoudRun":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 100
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v2    # "key":Ljava/lang/Integer;
    .restart local v3    # "shoudRun":Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Laiz;, "Laiz<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Laiz;->a(Ljava/lang/Integer;)V

    .line 59
    invoke-direct {p0, p2}, Laiz;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
