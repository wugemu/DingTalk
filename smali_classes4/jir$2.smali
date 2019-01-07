.class final Ljir$2;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljir;->a(Landroid/content/Context;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[B

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Ljir$2;->a:Landroid/content/Context;

    iput-object p2, p0, Ljir$2;->b:[B

    iput-object p3, p0, Ljir$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 235
    invoke-static {}, Ljir;->a()V

    .line 237
    :cond_0
    invoke-static {}, Ljir;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 238
    iget-object v1, p0, Ljir$2;->b:[B

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ljir$2;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljji;->a([BLjava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "saveBlackList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
