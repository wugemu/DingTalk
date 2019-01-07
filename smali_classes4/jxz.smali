.class public Ljxz;
.super Ljava/lang/Object;

# interfaces
.implements Ljxc;


# static fields
.field private static volatile b:Ljxz;


# instance fields
.field a:Ljxi;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/mipush/sdk/d;",
            "Ljxc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxz;->d:Ljava/util/Map;

    iput-object p1, p0, Ljxz;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljxz;
    .locals 2

    sget-object v0, Ljxz;->b:Ljxz;

    if-nez v0, :cond_1

    const-class v1, Ljxz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljxz;->b:Ljxz;

    if-nez v0, :cond_0

    new-instance v0, Ljxz;

    invoke-direct {v0, p0}, Ljxz;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljxz;->b:Ljxz;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ljxz;->b:Ljxz;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Lcom/xiaomi/mipush/sdk/d;)V
    .locals 1

    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Lcom/xiaomi/mipush/sdk/d;)Z
    .locals 1

    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/mipush/sdk/d;)Ljxc;
    .locals 1

    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxc;

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    const-string/jumbo v0, "assemble push register"

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1000
    iget-object v0, p0, Ljxz;->a:Ljxi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljxz;->a:Ljxi;

    iget-object v0, p0, Ljxz;->a:Ljxi;

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {p0, v0}, Ljxz;->d(Lcom/xiaomi/mipush/sdk/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {p0, v0}, Ljxz;->a(Lcom/xiaomi/mipush/sdk/d;)Ljxc;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {p0, v1}, Ljxz;->c(Lcom/xiaomi/mipush/sdk/d;)V

    invoke-interface {v0}, Ljxc;->b()V

    :cond_0
    iget-object v0, p0, Ljxz;->a:Ljxi;

    iget-object v0, p0, Ljxz;->a:Ljxi;

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {p0, v0}, Ljxz;->d(Lcom/xiaomi/mipush/sdk/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {p0, v0}, Ljxz;->a(Lcom/xiaomi/mipush/sdk/d;)Ljxc;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {p0, v1}, Ljxz;->c(Lcom/xiaomi/mipush/sdk/d;)V

    invoke-interface {v0}, Ljxc;->b()V

    :cond_1
    iget-object v0, p0, Ljxz;->a:Ljxi;

    iget-object v0, p0, Ljxz;->a:Ljxi;

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {p0, v0}, Ljxz;->d(Lcom/xiaomi/mipush/sdk/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {p0, v0}, Ljxz;->a(Lcom/xiaomi/mipush/sdk/d;)Ljxc;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {p0, v1}, Ljxz;->c(Lcom/xiaomi/mipush/sdk/d;)V

    invoke-interface {v0}, Ljxc;->b()V

    .line 0
    :cond_2
    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxc;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljxc;->a()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const-string/jumbo v0, "assemble push unregister"

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljxc;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljxz;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final b(Lcom/xiaomi/mipush/sdk/d;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 0
    sget-object v0, Ljya;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Ljxz;->a:Ljxi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxz;->a:Ljxi;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ljxz;->a:Ljxi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxz;->a:Ljxi;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ljxz;->a:Ljxi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxz;->a:Ljxi;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
