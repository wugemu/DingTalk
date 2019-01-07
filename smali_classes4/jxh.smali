.class public final Ljxh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxh$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/f;)Z
    .locals 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MiTinyDataClient.upload "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    invoke-static {}, Ljxh$a;->a()Ljxh$a;

    move-result-object v0

    invoke-virtual {v0}, Ljxh$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljxh$a;->a()Ljxh$a;

    move-result-object v0

    .line 1000
    if-nez p0, :cond_1

    const-string/jumbo v0, "context is null, MiTinyDataClientImp.init() failed."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    .line 0
    :cond_0
    :goto_0
    invoke-static {}, Ljxh$a;->a()Ljxh$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljxh$a;->a(Lcom/xiaomi/xmpush/thrift/f;)Z

    move-result v0

    return v0

    .line 1000
    :cond_1
    iput-object p0, v0, Ljxh$a;->a:Landroid/content/Context;

    invoke-static {p0}, Ljxh$a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljxh$a;->b:Ljava/lang/Boolean;

    const-string/jumbo v1, "com.xiaomi.xmpushsdk.tinydataPending.init"

    invoke-virtual {v0, v1}, Ljxh$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 4

    new-instance v0, Lcom/xiaomi/xmpush/thrift/f;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/f;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/f;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/f;->a(J)Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/f;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/f;->c(Z)Lcom/xiaomi/xmpush/thrift/f;

    const-string/jumbo v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/f;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-static {p0, v0}, Ljxh;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/f;)Z

    move-result v0

    return v0
.end method
