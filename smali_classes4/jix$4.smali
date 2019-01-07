.class final Ljix$4;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljix;


# direct methods
.method constructor <init>(Ljix;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Ljix$4;->a:Ljix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 322
    :try_start_0
    iget-object v4, p0, Ljix$4;->a:Ljix;

    iget-object v4, v4, Ljix;->b:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v4, p0, Ljix$4;->a:Ljix;

    iget-object v4, v4, Ljix;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "appKey":Ljava/lang/String;
    iget-object v4, p0, Ljix$4;->a:Ljix;

    iget-object v4, v4, Ljix;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "ttid":Ljava/lang/String;
    iget-object v4, p0, Ljix$4;->a:Ljix;

    iget-object v4, v4, Ljix;->b:Landroid/content/Context;

    invoke-static {v4}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v4

    .line 1100
    iget-object v1, v4, Ljim;->b:Ljava/lang/String;

    .line 328
    .local v1, "appSecret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    const-string/jumbo v4, "InAppConnection"

    const-string/jumbo v5, "mTryStartServiceRunable bindapp"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v4, p0, Ljix$4;->a:Ljix;

    iget-object v4, v4, Ljix;->b:Landroid/content/Context;

    iget-object v5, p0, Ljix$4;->a:Ljix;

    iget-object v5, v5, Ljix;->b:Landroid/content/Context;

    invoke-static {v5}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v5

    .line 1161
    iget-object v5, v5, Ljim;->d:Ljia;

    .line 332
    invoke-static {v4, v0, v1, v3, v5}, Lcom/taobao/accs/ACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "appSecret":Ljava/lang/String;
    .end local v3    # "ttid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
