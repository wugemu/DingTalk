.class final Ljgw;
.super Ljava/lang/Object;
.source "WeiboShareAPIImpl.java"

# interfaces
.implements Ljgp;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljgj$a;

.field private d:Z

.field private e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "needDownloadWeibo"    # Z

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Ljgw;->c:Ljgj$a;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljgw;->d:Z

    .line 64
    iput-object v1, p0, Ljgw;->e:Landroid/app/Dialog;

    .line 73
    iput-object p1, p0, Ljgw;->a:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Ljgw;->b:Ljava/lang/String;

    .line 75
    iput-boolean p3, p0, Ljgw;->d:Z

    .line 78
    iget-object v0, p0, Ljgw;->a:Landroid/content/Context;

    invoke-static {v0}, Ljgj;->a(Landroid/content/Context;)Ljgj$a;

    move-result-object v0

    iput-object v0, p0, Ljgw;->c:Ljgj$a;

    .line 79
    iget-object v0, p0, Ljgw;->c:Ljgj$a;

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "WeiboApiImpl"

    iget-object v1, p0, Ljgw;->c:Ljgj$a;

    invoke-virtual {v1}, Ljgj$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string/jumbo v0, "WeiboApiImpl"

    const-string/jumbo v1, "WeiboInfo: is null"

    invoke-static {v0, v1}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/os/Bundle;

    .prologue
    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "appPackage":Ljava/lang/String;
    const-string/jumbo v2, "_weibo_sdkVersion"

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string/jumbo v2, "_weibo_appPackage"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string/jumbo v2, "_weibo_appKey"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string/jumbo v2, "_weibo_flag"

    const v3, 0x20130329

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string/jumbo v2, "_weibo_sign"

    invoke-static {p0, v0}, Ljhk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljhh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :cond_0
    if-eqz p4, :cond_1

    .line 412
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 415
    :cond_1
    const-string/jumbo v2, "WeiboApiImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string/jumbo v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 364
    if-eqz p0, :cond_0

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    :cond_0
    const-string/jumbo v3, "ActivityHandler"

    const-string/jumbo v4, "send fail, invalid arguments"

    invoke-static {v3, v4}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    return v2

    .line 372
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "appPackage":Ljava/lang/String;
    const-string/jumbo v3, "_weibo_sdkVersion"

    const/16 v4, 0x16

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    const-string/jumbo v3, "_weibo_appPackage"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v3, "_weibo_appKey"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string/jumbo v3, "_weibo_flag"

    const v4, 0x20130329

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string/jumbo v3, "_weibo_sign"

    invoke-static {p0, v0}, Ljhk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljhh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 388
    :try_start_0
    const-string/jumbo v3, "WeiboApiImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", extra="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/16 v3, 0x2fd

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 v2, 0x1

    goto :goto_0

    .line 391
    :catch_0
    move-exception v3

    const-string/jumbo v3, "WeiboApiImpl"

    const-string/jumbo v4, "Failed, target ActivityNotFound"

    invoke-static {v3, v4}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 7
    .param p1, "bShowDownloadDialog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboShareException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Ljgw;->c:Ljgj$a;

    if-nez v0, :cond_4

    .line 337
    if-eqz p1, :cond_3

    .line 338
    iget-object v0, p0, Ljgw;->e:Landroid/app/Dialog;

    if-nez v0, :cond_2

    .line 339
    iget-object v4, p0, Ljgw;->a:Landroid/content/Context;

    const/4 v5, 0x0

    .line 1056
    const-string/jumbo v3, "\u63d0\u793a"

    .line 1057
    const-string/jumbo v2, "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

    .line 1058
    const-string/jumbo v1, "\u73b0\u5728\u4e0b\u8f7d"

    .line 1059
    const-string/jumbo v0, "\u4ee5\u540e\u518d\u8bf4"

    .line 1061
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ljhk;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1062
    const-string/jumbo v3, "Notice"

    .line 1063
    const-string/jumbo v2, "Sina Weibo client is not installed, download now?"

    .line 1064
    const-string/jumbo v1, "Download Now"

    .line 1065
    const-string/jumbo v0, "Download Later"

    .line 1068
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1069
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1070
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1071
    new-instance v3, Ljgv$1;

    invoke-direct {v3, v4}, Ljgv$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1076
    new-instance v2, Ljgv$2;

    invoke-direct {v2, v5}, Ljgv$2;-><init>(Ljgn;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1083
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 339
    iput-object v0, p0, Ljgw;->e:Landroid/app/Dialog;

    .line 340
    iget-object v0, p0, Ljgw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 346
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 360
    :goto_1
    return v0

    .line 342
    :cond_2
    iget-object v0, p0, Ljgw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Ljgw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 348
    :cond_3
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string/jumbo v1, "Weibo is NOT installed!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4
    iget-object v0, p0, Ljgw;->c:Ljgj$a;

    iget v0, v0, Ljgj$a;->b:I

    invoke-static {v0}, Ljgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 353
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string/jumbo v1, "Weibo do NOT support Share API!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_5
    iget-object v0, p0, Ljgw;->a:Landroid/content/Context;

    iget-object v1, p0, Ljgw;->c:Ljgj$a;

    iget-object v1, v1, Ljgj$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljgj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 357
    new-instance v0, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string/jumbo v1, "Weibo signature is incorrect!"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Ljgw;->b()I

    move-result v0

    invoke-static {v0}, Ljgj;->a(I)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Intent;Ljgo$a;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Ljgo$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 150
    const-string/jumbo v5, "_weibo_appPackage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "appPackage":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 153
    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild appPackage is null"

    invoke-static {v5, v6}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return v4

    .line 157
    :cond_0
    instance-of v5, p2, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 158
    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild handler is not Activity"

    invoke-static {v5, v6}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 162
    check-cast v0, Landroid/app/Activity;

    .line 163
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "callPkg":Ljava/lang/String;
    const-string/jumbo v5, "WeiboApiImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "responseListener() callPkg : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v5, "_weibo_transaction"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 167
    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild intent TRAN is null"

    invoke-static {v5, v6}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v5, p0, Ljgw;->a:Landroid/content/Context;

    invoke-static {v5, v1}, Ljgj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 179
    const-string/jumbo v5, "WeiboApiImpl"

    const-string/jumbo v6, "responseListener() faild appPackage validateSign faild"

    invoke-static {v5, v6}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    new-instance v3, Ljgs;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Ljgs;-><init>(Landroid/os/Bundle;)V

    .line 184
    .local v3, "data":Ljgs;
    invoke-interface {p2, v3}, Ljgo$a;->onResponse(Ljgm;)V

    .line 185
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public final a(Ljgl;)Z
    .locals 6
    .param p1, "request"    # Ljgl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 271
    :try_start_0
    iget-boolean v3, p0, Ljgw;->d:Z

    invoke-direct {p0, v3}, Ljgw;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 287
    :goto_0
    return v2

    .line 278
    :cond_0
    new-instance v0, Ljgu;

    iget-object v3, p0, Ljgw;->c:Ljgj$a;

    iget-object v3, v3, Ljgj$a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljgu;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "checkHandler":Ljgu;
    iget-object v3, p0, Ljgw;->a:Landroid/content/Context;

    invoke-virtual {p1, v3, v0}, Ljgl;->a(Landroid/content/Context;Ljgu;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    const-string/jumbo v3, "WeiboApiImpl"

    const-string/jumbo v4, "sendRequest faild request check faild"

    invoke-static {v3, v4}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v1, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v1}, Ljgl;->a(Landroid/os/Bundle;)V

    .line 287
    iget-object v2, p0, Ljgw;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string/jumbo v3, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    iget-object v4, p0, Ljgw;->c:Ljgj$a;

    iget-object v4, v4, Ljgj$a;->a:Ljava/lang/String;

    iget-object v5, p0, Ljgw;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v1}, Ljgw;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 275
    .end local v0    # "checkHandler":Ljgu;
    .end local v1    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final a(Ljgm;)Z
    .locals 5
    .param p1, "response"    # Ljgm;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 304
    iget-object v1, p0, Ljgw;->a:Landroid/content/Context;

    new-instance v2, Ljgu;

    invoke-direct {v2}, Ljgu;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljgm;->a(Landroid/content/Context;Ljgu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const-string/jumbo v1, "WeiboApiImpl"

    const-string/jumbo v2, "sendResponse checkArgs fail"

    invoke-static {v1, v2}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    .line 312
    :goto_0
    return v1

    .line 308
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Ljgm;->a(Landroid/os/Bundle;)V

    .line 310
    iget-object v1, p0, Ljgw;->a:Landroid/content/Context;

    const-string/jumbo v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE"

    iget-object v3, p0, Ljgw;->b:Ljava/lang/String;

    iget-object v4, p1, Ljgm;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Ljgw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljgw;->c:Ljgj$a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljgw;->c:Ljgj$a;

    iget v0, v0, Ljgj$a;->b:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-boolean v0, p0, Ljgw;->d:Z

    invoke-direct {p0, v0}, Ljgw;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Ljgw;->a:Landroid/content/Context;

    const-string/jumbo v1, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    iget-object v2, p0, Ljgw;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v3}, Ljgw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method
