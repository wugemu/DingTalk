.class final Lkaw$b;
.super Ljyw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljyv;Ljyw$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljyw;-><init>(Landroid/content/Context;Ljyv;Ljyw$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1000
    :try_start_0
    sget-object v0, Lkeo$a;->a:Lkeo;

    .line 2000
    iget-boolean v0, v0, Lkeo;->a:Z

    .line 0
    if-eqz v0, :cond_0

    invoke-static {}, Lkbd;->e()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljyw;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    sget-object v0, Lkaw$b;->c:Landroid/content/Context;

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v4, Lcom/xiaomi/push/thrift/a;->r:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v0}, Lkeq;->a(IIILjava/lang/String;I)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0
.end method
