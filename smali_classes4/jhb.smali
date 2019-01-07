.class public final Ljhb;
.super Ljava/lang/Object;
.source "SsoHandler.java"


# instance fields
.field public a:Ljgz;

.field public b:Ljha;

.field public c:Landroid/app/Activity;

.field public d:I

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljgz;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "weiboAuth"    # Ljgz;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljhb$1;

    invoke-direct {v0, p0}, Ljhb$1;-><init>(Ljhb;)V

    iput-object v0, p0, Ljhb;->e:Landroid/content/ServiceConnection;

    .line 106
    iput-object p1, p0, Ljhb;->c:Landroid/app/Activity;

    .line 107
    iput-object p2, p0, Ljhb;->a:Ljgz;

    .line 108
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ssoPackageName"    # Ljava/lang/String;
    .param p2, "ssoActivityName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 301
    const/4 v0, 0x1

    .line 302
    .local v0, "bSucceed":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v2, p0, Ljhb;->a:Ljgz;

    .line 1139
    iget-object v2, v2, Ljgz;->a:Ljgz$a;

    .line 2094
    iget-object v2, v2, Ljgz$a;->f:Landroid/os/Bundle;

    .line 307
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v2, "_weibo_command_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string/jumbo v2, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v2, p0, Ljhb;->c:Landroid/app/Activity;

    invoke-static {v2, v1}, Ljhj;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const/4 v2, 0x0

    .line 327
    :goto_0
    return v2

    .line 320
    :cond_0
    :try_start_0
    iget-object v2, p0, Ljhb;->c:Landroid/app/Activity;

    iget v3, p0, Ljhb;->d:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v0

    .line 327
    goto :goto_0

    .line 322
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    goto :goto_1
.end method
