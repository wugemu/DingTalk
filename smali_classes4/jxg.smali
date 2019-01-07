.class public final Ljxg;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljxg;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljxg;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ak;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ak;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ak;->g()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    sget-object v0, Ljxg;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ak;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/ak;->i:Ljava/lang/String;

    .line 1000
    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/xiaomi/mipush/sdk/c$a;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/c$a;->k:Landroid/content/Context;

    invoke-static {v2}, Ljul;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/xiaomi/mipush/sdk/c$a;->h:Z

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    .line 2000
    iget-object v3, v2, Lcom/xiaomi/mipush/sdk/c;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a(Lcom/xiaomi/mipush/sdk/c$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hybrid_app_info_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/c;->a:Landroid/content/Context;

    .line 3000
    const-string/jumbo v3, "mipush"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2000
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/ak;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/ak;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string/jumbo v0, "register"

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/ak;->f:J

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/ak;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    return-void

    :cond_1
    move-object v1, v5

    goto :goto_0
.end method

.method public static a(Lcom/xiaomi/xmpush/thrift/ar;)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "unregister"

    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/ar;->f:J

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/ar;->g:Ljava/lang/String;

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ar;->h()Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
