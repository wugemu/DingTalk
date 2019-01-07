.class public Ldbu;
.super Ljava/lang/Object;
.source "AtMeVersionManager.java"


# static fields
.field private static volatile b:Ldbu;


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ldbt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbu;->a:Ljava/util/HashSet;

    .line 22
    return-void
.end method

.method public static a()Ldbu;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Ldbu;->b:Ldbu;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Ldbu;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Ldbu;->b:Ldbu;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ldbu;

    invoke-direct {v0}, Ldbu;-><init>()V

    sput-object v0, Ldbu;->b:Ldbu;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Ldbu;->b:Ldbu;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(J)V
    .locals 4
    .param p0, "version"    # J

    .prologue
    .line 36
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 37
    const-string/jumbo v2, "pref_key_at_me_version"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 38
    .local v0, "lastVersion":J
    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 39
    const-string/jumbo v2, "pref_key_at_me_version"

    invoke-static {v2, p0, p1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 42
    .end local v0    # "lastVersion":J
    :cond_0
    return-void
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 45
    const-string/jumbo v0, "pref_key_at_me_version"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "pref_at_me_new"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "hasNew"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1049
    const-string/jumbo v2, "pref_at_me_new"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    .local v1, "localNew":Z
    if-ne p1, v1, :cond_1

    .line 65
    :cond_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v2, "pref_at_me_new"

    invoke-static {v2, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 58
    iget-object v2, p0, Ldbu;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    iget-object v2, p0, Ldbu;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbt;

    .line 60
    .local v0, "listener":Ldbt;
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0, p1}, Ldbt;->a(Z)V

    goto :goto_0
.end method
