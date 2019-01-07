.class public Lcom/uc/webview/export/cyclone/UCLogger;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# static fields
.field private static final PARAMS_WITHOUT_THROWABLE:[Ljava/lang/Class;

.field private static final PARAMS_WITH_THROWABLE:[Ljava/lang/Class;

.field private static bAllowAllLevel:Z

.field private static bAllowAllTag:Z

.field private static sAllowLevels:Ljava/lang/String;

.field private static sAllowTags:Ljava/lang/String;

.field private static sAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uc/webview/export/cyclone/UCLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCallbackChannel:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabled:Z

.field private static final sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogcatChannel:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mLevel:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    sput-boolean v2, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    .line 17
    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    .line 18
    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    .line 19
    const-string/jumbo v0, "[all]"

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "[all]"

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    .line 22
    sput-boolean v2, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllLevel:Z

    .line 23
    sput-boolean v2, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllTag:Z

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Throwable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITH_THROWABLE:[Ljava/lang/Class;

    .line 29
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITHOUT_THROWABLE:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/cyclone/UCCyclone;->logExtraTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000()Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 15
    sput-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;
    .locals 3

    .prologue
    .line 81
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllLevel:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllTag:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 85
    :goto_0
    if-eqz v0, :cond_4

    .line 86
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLogger;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_1
    return-object v0

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static createToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 42
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/uc/webview/export/cyclone/UCLogger;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    const/4 v1, -0x1

    .line 53
    :try_start_1
    sget-object v2, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :try_start_2
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-static {p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 61
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    :goto_1
    return v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 61
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static varargs print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 69
    if-ltz p0, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 71
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/uc/webview/export/cyclone/UCLogger;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setup([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 158
    const-class v6, Lcom/uc/webview/export/cyclone/UCLogger;

    monitor-enter v6

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Boolean;

    .line 159
    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Boolean;

    .line 160
    const/4 v2, 0x2

    aget-object v2, p0, v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 161
    const/4 v3, 0x3

    aget-object v3, p0, v3

    check-cast v3, Ljava/lang/String;

    .line 162
    const/4 v4, 0x4

    aget-object v4, p0, v4

    check-cast v4, Ljava/lang/String;

    .line 164
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :goto_2
    :try_start_2
    sput-object v2, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    .line 180
    if-eqz v3, :cond_6

    .line 181
    sput-object v3, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    .line 185
    :goto_3
    if-eqz v4, :cond_7

    .line 186
    sput-object v4, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    .line 190
    :goto_4
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    const-string/jumbo v1, "[all]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllLevel:Z

    .line 191
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    const-string/jumbo v1, "[all]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllTag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :try_start_3
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 196
    sget-object v4, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :try_start_4
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_8

    .line 198
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 199
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 200
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 201
    :cond_1
    sget-object v2, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v5, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    .line 167
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    sput-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_4
    move-object v0, v5

    .line 171
    goto :goto_1

    .line 173
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 183
    :cond_6
    :try_start_7
    const-string/jumbo v0, ""

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    goto/16 :goto_3

    .line 188
    :cond_7
    const-string/jumbo v0, ""

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 204
    :cond_8
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 208
    :cond_9
    :goto_6
    monitor-exit v6

    return-void

    .line 204
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 207
    :catch_1
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public varargs print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 92
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    aget-object v0, p2, v1

    if-eqz v0, :cond_3

    aget-object v0, p2, v1

    .line 97
    :goto_1
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 98
    sget-object v3, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    iget-object v4, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITH_THROWABLE:[Ljava/lang/Class;

    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_5

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    aput-object p1, v1, v5

    const/4 v5, 0x2

    aput-object v0, v1, v5

    :goto_3
    invoke-static {v3, v4, v2, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :cond_2
    :goto_4
    :try_start_1
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 110
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 111
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLogger$1;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/cyclone/UCLogger$1;-><init>(Lcom/uc/webview/export/cyclone/UCLogger;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    :cond_4
    :try_start_2
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITHOUT_THROWABLE:[Ljava/lang/Class;

    move-object v2, v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    aput-object p1, v1, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4
.end method
