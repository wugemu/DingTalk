.class public Lcom/alibaba/wukong/im/VoiceTranslate;
.super Ljava/lang/Object;
.source "VoiceTranslate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/wukong/im/VoiceTranslate;


# instance fields
.field private mDispatchVoiceTranslateEventLock:I

.field private mVoiceTranslateEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceTranslateEventListenersCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/wukong/im/VoiceTranslate;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    return v0
.end method

.method static synthetic access$008(Lcom/alibaba/wukong/im/VoiceTranslate;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    return v0
.end method

.method static synthetic access$010(Lcom/alibaba/wukong/im/VoiceTranslate;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/wukong/im/VoiceTranslate;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/wukong/im/VoiceTranslate;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/wukong/im/VoiceTranslate;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alibaba/wukong/im/VoiceTranslate;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/im/VoiceTranslate;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/wukong/im/VoiceTranslate;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/wukong/im/VoiceTranslate;->sInstance:Lcom/alibaba/wukong/im/VoiceTranslate;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/alibaba/wukong/im/VoiceTranslate;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/im/VoiceTranslate;->sInstance:Lcom/alibaba/wukong/im/VoiceTranslate;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/VoiceTranslate;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/VoiceTranslate;->sInstance:Lcom/alibaba/wukong/im/VoiceTranslate;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/VoiceTranslate;->sInstance:Lcom/alibaba/wukong/im/VoiceTranslate;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addVoiceTranslateEventListener(Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    monitor-enter p0

    if-nez p1, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dispatchVoiceTranslateEvent(Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 1
    .param p1, "entityId"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    .prologue
    .line 92
    new-instance v0, Lcom/alibaba/wukong/im/VoiceTranslate$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/wukong/im/VoiceTranslate$2;-><init>(Lcom/alibaba/wukong/im/VoiceTranslate;Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public declared-synchronized removeVoiceTranslateEventListener(Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    monitor-enter p0

    if-nez p1, :cond_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mDispatchVoiceTranslateEventLock:I

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    if-nez v0, :cond_2

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/VoiceTranslate;->mVoiceTranslateEventListenersCopy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public translateVoice(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "entityId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v1, Lcom/alibaba/wukong/im/VoiceTranslate$1;

    const/4 v4, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v6, p1

    move-object v7, p2

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/wukong/im/VoiceTranslate$1;-><init>(Lcom/alibaba/wukong/im/VoiceTranslate;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/VoiceTranslate$1;->start()V

    .line 53
    return-void
.end method
