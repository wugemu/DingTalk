.class final Ldsf$5;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsf;->a(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ldsf;


# direct methods
.method constructor <init>(Ldsf;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Ldsf;

    .prologue
    .line 428
    iput-object p1, p0, Ldsf$5;->d:Ldsf;

    iput-object p2, p0, Ldsf$5;->a:Landroid/content/Context;

    iput-object p3, p0, Ldsf$5;->b:Ljava/lang/String;

    iput-wide p4, p0, Ldsf$5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 431
    iget-object v1, p0, Ldsf$5;->d:Ldsf;

    iget-object v2, p0, Ldsf$5;->a:Landroid/content/Context;

    iget-object v3, p0, Ldsf$5;->b:Ljava/lang/String;

    iget-wide v4, p0, Ldsf$5;->c:J

    invoke-static {v1, v2, v3, v4, v5}, Ldsf;->a(Ldsf;Landroid/content/Context;Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 432
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 436
    :cond_0
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "loadCache2File file delete"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1
    return-void
.end method
