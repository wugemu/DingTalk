.class public final Lhsd;
.super Ljava/lang/Object;
.source "MessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhsd$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public c:Lhsd$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lhsd$a;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "callback"    # Lhsd$a;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lhsd;->b:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lhsd;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lhsd;->c:Lhsd$a;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhsd;->d:Z

    .line 16
    invoke-static {p1}, Lhse;->a(Landroid/content/Context;)Lhse;

    move-result-object v1

    .line 1038
    iget-object v2, v1, Lhse;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 1039
    if-eqz p0, :cond_1

    .line 1040
    :try_start_0
    iget-object v0, v1, Lhse;->a:Ljava/util/HashMap;

    .line 2031
    iget-object v3, p0, Lhsd;->a:Ljava/lang/String;

    .line 1040
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1041
    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    iget-object v1, v1, Lhse;->a:Ljava/util/HashMap;

    .line 3031
    iget-object v3, p0, Lhsd;->a:Ljava/lang/String;

    .line 1043
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    iget-boolean v0, p0, Lhsd;->d:Z

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lhsd;->b:Landroid/content/Context;

    invoke-static {v0}, Lhse;->a(Landroid/content/Context;)Lhse;

    move-result-object v2

    .line 3052
    iget-object v3, v2, Lhse;->a:Ljava/util/HashMap;

    monitor-enter v3

    .line 3053
    if-eqz p0, :cond_5

    .line 3054
    :try_start_0
    iget-object v0, v2, Lhse;->a:Ljava/util/HashMap;

    .line 4031
    iget-object v1, p0, Lhsd;->a:Ljava/lang/String;

    .line 3054
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3055
    if-eqz v0, :cond_5

    .line 3056
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3061
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3062
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3063
    iget-object v0, v2, Lhse;->a:Ljava/util/HashMap;

    .line 5031
    iget-object v1, p0, Lhsd;->a:Ljava/lang/String;

    .line 3063
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhsd;->d:Z

    .line 49
    :cond_2
    return-void

    .line 3069
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3070
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhsd;

    .line 3071
    if-eqz v1, :cond_4

    if-ne v1, p0, :cond_0

    .line 3073
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3077
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lhsd;->a()V

    .line 40
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 41
    return-void
.end method
