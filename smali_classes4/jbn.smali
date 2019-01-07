.class public final Ljbn;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field a:Ljbg;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljbn;->b:Landroid/content/Context;

    iget-object v0, p0, Ljbn;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Ljbn;->a(Landroid/content/Context;Z)Ljbg;

    move-result-object v0

    iput-object v0, p0, Ljbn;->a:Ljbg;

    return-void
.end method

.method static a(Landroid/content/Context;Z)Ljbg;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljbg;

    const-class v2, Ljbl;

    invoke-static {v2}, Ljbg;->a(Ljava/lang/Class;)Ljbf;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljbg;-><init>(Landroid/content/Context;Ljbf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-string/jumbo v2, "sd"

    const-string/jumbo v3, "gdb"

    invoke-static {v0, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljej;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljej;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljbn;->a:Ljbg;

    const-class v3, Ljej;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
