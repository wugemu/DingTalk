.class public final Ldrv;
.super Ljava/lang/Object;
.source "MiniProfileCache.java"


# instance fields
.field private a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Ldrv;->a:Landroid/util/LruCache;

    .line 21
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "MiniProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ldrv;->b:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method private static b(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "orgId"    # J
    .param p2, "uid"    # J

    .prologue
    .line 26
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 55
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Ldrv;->b(JJ)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Ldrv;->a:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 60
    iget-object v2, p0, Ldrv;->b:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Ldrv;->a:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(JJLjava/lang/String;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .param p5, "miniTitle"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 30
    monitor-enter p0

    cmp-long v2, p1, v6

    if-lez v2, :cond_0

    cmp-long v2, p3, v6

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :cond_1
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Ldrv;->b(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "key":Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1041
    const/16 v2, 0x28

    invoke-virtual {p5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1042
    const/16 v3, 0x29

    invoke-virtual {p5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1043
    if-eq v2, v4, :cond_3

    if-eq v3, v4, :cond_3

    if-le v3, v2, :cond_3

    .line 1044
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1046
    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1047
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 33
    .local v1, "value":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    iget-object v2, p0, Ldrv;->a:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_2
    iget-object v2, p0, Ldrv;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "key":Ljava/lang/String;
    :cond_3
    move-object v1, p5

    .line 1050
    goto :goto_1
.end method
