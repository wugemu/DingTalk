.class final Lhmp$3;
.super Ljava/lang/Object;
.source "MiniAppBundleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmp;->a(Ljava/lang/String;Ljava/lang/String;ZZILhlo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lhlo;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lhmp;


# direct methods
.method constructor <init>(Lhmp;Ljava/lang/String;Ljava/lang/String;ILhlo;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lhmp;

    .prologue
    .line 422
    iput-object p1, p0, Lhmp$3;->g:Lhmp;

    iput-object p2, p0, Lhmp$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lhmp$3;->b:Ljava/lang/String;

    iput p4, p0, Lhmp$3;->c:I

    iput-object p5, p0, Lhmp$3;->d:Lhlo;

    iput-boolean p6, p0, Lhmp$3;->e:Z

    iput-boolean p7, p0, Lhmp$3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 425
    iget-object v1, p0, Lhmp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmp$3;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 426
    .local v0, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-nez v0, :cond_1

    .line 427
    iget-object v1, p0, Lhmp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmp$3;->b:Ljava/lang/String;

    new-instance v3, Lhmp$3$1;

    invoke-direct {v3, p0}, Lhmp$3$1;-><init>(Lhmp$3;)V

    iget-boolean v4, p0, Lhmp$3;->e:Z

    invoke-static {v1, v2, v3, v7, v4}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;ZZ)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lhmp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmp$3;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lhmp;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 443
    iget-boolean v1, p0, Lhmp$3;->f:Z

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Lhmp$3;->d:Lhlo;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lhmp$3;->d:Lhlo;

    invoke-interface {v1}, Lhlo;->a()V

    .line 447
    :cond_2
    iget-object v1, p0, Lhmp$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhmp$3;->b:Ljava/lang/String;

    new-instance v3, Lhmp$3$2;

    invoke-direct {v3, p0}, Lhmp$3$2;-><init>(Lhmp$3;)V

    invoke-static {v1, v2, v3, v7}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;Z)V

    goto :goto_0

    .line 462
    :cond_3
    iget-object v1, p0, Lhmp$3;->g:Lhmp;

    iget-object v2, p0, Lhmp$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lhmp$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lhmp$3;->d:Lhlo;

    .line 1049
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1531
    invoke-virtual {v1, v2, v5, v0, v6}, Lhmp;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Z

    move-result v5

    .line 1532
    if-eqz v5, :cond_4

    .line 1533
    new-instance v5, Lhmp$5;

    invoke-direct {v5, v1, v2, v3, v4}, Lhmp$5;-><init>(Lhmp;Ljava/lang/String;Ljava/lang/String;Lhlo;)V

    invoke-static {v2, v3, v5, v7}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;Z)V

    goto :goto_0

    .line 1543
    :cond_4
    if-eqz v4, :cond_0

    .line 1544
    const-string/jumbo v1, "req_limit"

    const-string/jumbo v2, "touch req rate limit"

    invoke-interface {v4, v1, v2}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_5
    iget-object v1, p0, Lhmp$3;->g:Lhmp;

    iget-object v2, p0, Lhmp$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lhmp$3;->b:Ljava/lang/String;

    iget v4, p0, Lhmp$3;->c:I

    iget-object v5, p0, Lhmp$3;->d:Lhlo;

    invoke-static {v1, v2, v3, v4, v5}, Lhmp;->a(Lhmp;Ljava/lang/String;Ljava/lang/String;ILhlo;)V

    goto :goto_0
.end method
