.class public Ljyi;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Ljyi;


# instance fields
.field a:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "GeoFenceRegMessageProcessor."

    iput-object v0, p0, Ljyi;->c:Ljava/lang/String;

    iput-object p1, p0, Ljyi;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljyi;
    .locals 2

    sget-object v0, Ljyi;->b:Ljyi;

    if-nez v0, :cond_1

    const-class v1, Ljyi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljyi;->b:Ljyi;

    if-nez v0, :cond_0

    new-instance v0, Ljyi;

    invoke-direct {v0, p0}, Ljyi;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljyi;->b:Ljyi;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ljyi;->b:Ljyi;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/xmpush/thrift/ai;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/r;->K:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v2, "permission_to_location"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    return-void
.end method


# virtual methods
.method a(Lcom/xiaomi/xmpush/thrift/ai;Z)Lcom/xiaomi/xmpush/thrift/m;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Ljyi;->a:Landroid/content/Context;

    invoke-static {v1}, Lkcg;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Ljyi;->a:Landroid/content/Context;

    invoke-static {v1}, Lkcg;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/m;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ai;->m()[B

    move-result-object v2

    invoke-static {v1, v2}, Lkev;->a(Lorg/apache/thrift/a;[B)V
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/thrift/f;->printStackTrace()V

    goto :goto_0
.end method

.method a(Z)Lcom/xiaomi/xmpush/thrift/v;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/v;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/v;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljyi;->a:Landroid/content/Context;

    invoke-static {v0}, Lkce;->a(Landroid/content/Context;)Lkce;

    move-result-object v0

    invoke-virtual {v0}, Lkce;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/m;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/v;->a(Ljava/util/Set;)Lcom/xiaomi/xmpush/thrift/v;

    return-object v1
.end method

.method a(Lcom/xiaomi/xmpush/thrift/m;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {p1}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ai;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/r;->J:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ai;->a([B)Lcom/xiaomi/xmpush/thrift/ai;

    iget-object v0, p0, Ljyi;->a:Landroid/content/Context;

    invoke-static {v0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GeoFenceRegMessageProcessor. report package not exist geo_fencing id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/xiaomi/xmpush/thrift/m;ZZ)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {p1}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    new-instance v2, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/xmpush/thrift/ai;-><init>(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/r;->E:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/ai;->a([B)Lcom/xiaomi/xmpush/thrift/ai;

    if-eqz p3, :cond_0

    const-string/jumbo v0, "permission_to_location"

    sget-object v1, Lkay;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljyi;->a:Landroid/content/Context;

    invoke-static {v0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GeoFenceRegMessageProcessor. report geo_fencing id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string/jumbo v0, "geo_reg"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  isUnauthorized:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/r;->G:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "geo_unreg"

    goto :goto_1
.end method

.method a(Lcom/xiaomi/xmpush/thrift/ai;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v0

    .line 2000
    if-nez v0, :cond_1

    move v0, v1

    .line 0
    :goto_0
    iget-object v2, p0, Ljyi;->a:Landroid/content/Context;

    .line 3000
    invoke-static {v2}, Lkcg;->a(Landroid/content/Context;)Z

    move-result v2

    .line 0
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2000
    :cond_1
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "__geo_local_cache"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
