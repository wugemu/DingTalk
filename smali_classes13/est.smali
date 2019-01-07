.class public Lest;
.super Ljava/lang/Object;
.source "SearchQueryLogManager.java"


# static fields
.field private static b:Lest;


# instance fields
.field public volatile a:Leoe;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lest;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lest;->b:Lest;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lest;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lest;->b:Lest;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lest;

    invoke-direct {v0}, Lest;-><init>()V

    sput-object v0, Lest;->b:Lest;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lest;->b:Lest;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;II)Leoe;
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "entry"    # I
    .param p3, "tab"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    new-instance v0, Leoe;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    .line 30
    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v1

    invoke-direct {v0, p1, p2, v1, p3}, Leoe;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lest;->a:Leoe;

    .line 31
    iget-object v0, p0, Lest;->a:Leoe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
