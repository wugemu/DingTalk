.class public Lcqx;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionParser.java"


# static fields
.field private static volatile b:Lcqx;


# instance fields
.field public a:Lcra;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcqx;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcqx;->b:Lcqx;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcqx;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcqx;->b:Lcqx;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcqx;

    invoke-direct {v0}, Lcqx;-><init>()V

    sput-object v0, Lcqx;->b:Lcqx;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcqx;->b:Lcqx;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string/jumbo v1, ""

    .line 43
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcqx;->b(Ljava/lang/String;)Lcqy;

    move-result-object v0

    .line 40
    .local v0, "identifier":Lcqy;
    if-eqz v0, :cond_1

    .line 1035
    iget-object v1, v0, Lcqy;->b:Ljava/lang/String;

    .line 40
    if-eqz v1, :cond_1

    .line 2035
    iget-object v1, v0, Lcqy;->b:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcqy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcqx;->a:Lcra;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcqx;->a:Lcra;

    invoke-interface {v1}, Lcra;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcoa;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcqx;->a:Lcra;

    invoke-interface {v1}, Lcra;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqy;

    .line 66
    .local v0, "identifier":Lcqy;
    if-eqz v0, :cond_0

    .line 3022
    iget-object v2, v0, Lcqy;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    .end local v0    # "identifier":Lcqy;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcqx;->a:Lcra;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcqx;->a:Lcra;

    invoke-interface {v0}, Lcra;->b()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
