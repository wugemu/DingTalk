.class public Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;
.super Ljava/lang/Object;
.source "H5WalletWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WalletWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v3, "H5WalletWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getClass "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/a;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 47
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->isInWallet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string/jumbo v3, "H5WalletWrapper"

    const-string/jumbo v4, "failed to load class bundle."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getMicroApplication(Lcom/alipay/mobile/h5container/api/H5Context;)Linn;
    .locals 3
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;

    .prologue
    .line 125
    if-nez p0, :cond_1

    .line 126
    const/4 v0, 0x0

    .line 140
    .end local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_0
    :goto_0
    return-object v0

    .line 128
    .restart local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 130
    .local v0, "app":Linn;
    instance-of v2, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v2, :cond_3

    .line 131
    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lini;

    move-result-object v0

    .line 136
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    instance-of v2, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    if-eqz v2, :cond_0

    .line 137
    check-cast p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    .end local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Linn;

    move-result-object v0

    goto :goto_0

    .line 132
    .restart local v1    # "context":Landroid/content/Context;
    .restart local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_3
    instance-of v2, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v2, :cond_2

    .line 133
    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lini;

    move-result-object v0

    goto :goto_1
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/a;->a()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static getRnService()Lcom/alipay/mobile/h5container/service/RnService;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v0, Lcom/alipay/mobile/h5container/service/RnService;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/RnService;

    .line 36
    return-object v0
.end method

.method public static getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 92
    const/4 v2, 0x0

    .line 121
    .end local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_0
    :goto_0
    return-object v2

    .line 95
    .restart local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_1
    const-string/jumbo v3, "sessionId"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "sessionId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    instance-of v3, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    if-eqz v3, :cond_2

    .line 101
    check-cast p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    .line 102
    .end local p0    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Linn;

    move-result-object v0

    .line 103
    .local v0, "app":Linn;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Linn;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    invoke-virtual {v0}, Linn;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "appId":Ljava/lang/String;
    instance-of v3, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "H5Activity"

    const-string/jumbo v4, "createPageSence"

    .line 106
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "no"

    const-string/jumbo v4, "h5_createPageSence_sessionId"

    .line 107
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 108
    const-string/jumbo v3, "H5WalletWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is createPage in H5App not merge appId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h5session_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .end local v0    # "app":Linn;
    .end local v1    # "appId":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const-string/jumbo v2, "h5session_default"

    goto :goto_0

    .line 110
    .restart local v0    # "app":Linn;
    .restart local v1    # "appId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "appId"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string/jumbo v3, "H5WalletWrapper"

    const-string/jumbo v4, "invalid event parameter"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->getMicroApplication(Lcom/alipay/mobile/h5container/api/H5Context;)Linn;

    move-result-object v2

    .line 66
    .local v2, "microApp":Linn;
    if-eqz v2, :cond_1

    .line 67
    :try_start_0
    const-string/jumbo v3, "H5WalletWrapper"

    const-string/jumbo v4, "microApp != null getMicroApplicationContext().startActivity"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/alipay/mobile/framework/c;->a(Linn;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5WalletWrapper"

    const-string/jumbo v4, "startActivity exception"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    :goto_1
    const-string/jumbo v3, "H5WalletWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "context "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 80
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_1
.end method
