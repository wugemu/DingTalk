.class final Ljxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljxy;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 0
    iget-object v0, p0, Ljxy;->a:Landroid/content/Context;

    .line 2000
    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/g;->Z:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v2

    invoke-virtual {v1, v2, v7}, Lkaq;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v7

    .line 0
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxy;->a:Landroid/content/Context;

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->ab:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lkaq;->a(II)I

    move-result v0

    .line 3000
    invoke-static {v0}, Ljxk;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Ljxy;->a:Landroid/content/Context;

    const-string/jumbo v2, "monitor_upload"

    const-string/jumbo v3, "call_stack"

    const-wide/16 v4, 0x1

    invoke-static/range {v1 .. v6}, Ljxh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    iget-object v0, p0, Ljxy;->a:Landroid/content/Context;

    .line 5000
    const-string/jumbo v1, "mipush_extra"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_upload_call_stack_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_0
    return-void

    .line 2000
    :cond_1
    const-string/jumbo v2, "mipush_extra"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "last_upload_call_stack_timestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v0, Lcom/xiaomi/xmpush/thrift/g;->aa:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v0

    const v6, 0x15180

    invoke-virtual {v1, v0, v6}, Lkaq;->a(II)I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
