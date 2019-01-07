.class final Ljoy$2;
.super Ljava/lang/Thread;
.source "HotPatchDownloaderListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljoy;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljoy;


# direct methods
.method constructor <init>(Ljoy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ljoy$2;->b:Ljoy;

    iput-object p2, p0, Ljoy$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v1

    iget-object v2, p0, Ljoy$2;->a:Ljava/lang/String;

    iget-object v3, p0, Ljoy$2;->b:Ljoy;

    .line 1017
    iget-object v3, v3, Ljoy;->a:Ljpc;

    .line 69
    invoke-virtual {v1, v2, v3}, Ljoz;->a(Ljava/lang/String;Ljpc;)V

    .line 70
    iget-object v1, p0, Ljoy$2;->b:Ljoy;

    .line 2017
    iget-object v1, v1, Ljoy;->c:Ljava/lang/String;

    .line 70
    const-string/jumbo v2, "SafeMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "updateType"

    const-string/jumbo v2, "hotpatch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "errorMsg"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Ljoy$2;->b:Ljoy;

    .line 3017
    iget-object v1, v1, Ljoy;->b:Landroid/content/Context;

    .line 75
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
