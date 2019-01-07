.class public Libl;
.super Ljava/lang/Object;
.source "GroupNickUpdater.java"


# static fields
.field private static volatile a:Libl;


# instance fields
.field private volatile b:Libi;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Libi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Libi;-><init>(Z)V

    iput-object v0, p0, Libl;->b:Libi;

    .line 38
    return-void
.end method

.method static synthetic a(Libl;)Libi;
    .locals 1
    .param p0, "x0"    # Libl;

    .prologue
    .line 31
    iget-object v0, p0, Libl;->b:Libi;

    return-object v0
.end method

.method public static a()Libl;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Libl;->a:Libl;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Libl;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Libl;->a:Libl;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Libl;

    invoke-direct {v0}, Libl;-><init>()V

    sput-object v0, Libl;->a:Libl;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Libl;->a:Libl;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "tag"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Liaw;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 56
    .local v8, "peerUid":J
    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    .line 59
    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_0

    .line 62
    const-string/jumbo v0, "WKLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[groupNick]fetch new group nick if necessary. tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v7

    new-instance v0, Libl$1;

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Libl$1;-><init>(Libl;JLjava/lang/String;J)V

    invoke-interface {v7, p1, p2, p3, v0}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
