.class public Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;
.super Ljava/lang/Object;
.source "H5AnimatorUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AnimatorUtil"

.field private static final anim:Ljava/lang/String; = "anim"

.field private static defaultValue:Z

.field private static final pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->pkgName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->defaultValue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    return-object v0
.end method

.method public static isNeedAnimFromConfig()Z
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v1, "h5_needAnim"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "needAnimConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->defaultValue:Z

    goto :goto_0
.end method

.method public static isNeedTransAnim()Z
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v1, "h5_transAnim"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "transAnimConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 235
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static presentWithAnimation(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string/jumbo v0, "nebulaStartAnimation"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "presentWithAnimation"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static setActivityFadingFinish()V
    .locals 4

    .prologue
    .line 190
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedTransAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 203
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AnimatorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setActivityFadingFinish exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActivityFadingStart()V
    .locals 4

    .prologue
    .line 170
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedTransAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AnimatorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setActivityFadingStart exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActivityFinish(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "activityFinish"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedAnimFromConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 131
    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->finishActivityEnterAnim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "anim"

    sget-object v6, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "animIn":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->finishActivityEnterExitAnim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "anim"

    sget-object v6, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "animOut":I
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 167
    .end local v0    # "animIn":I
    .end local v1    # "animOut":I
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5AnimatorUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActivityNoAnimStart()V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedAnimFromConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 116
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AnimatorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "overridePendingTransitionFromXml exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActivityPresentFinish()V
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedTransAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 224
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 225
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AnimatorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setActivityFadingFinish exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->isNeedAnimFromConfig()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 54
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 60
    :cond_0
    const-string/jumbo v6, "H5AnimatorUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "context "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v5, 0x0

    .line 62
    .local v5, "topActivity":Landroid/app/Activity;
    instance-of v6, v3, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 63
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    .line 65
    :cond_1
    if-eqz v5, :cond_2

    .line 66
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->startActivityEnterAnim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "anim"

    sget-object v9, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "animIn":I
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->getH5Animator()Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/provider/H5AnimatorResIdProvider;->startActivityEnterExitAnim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "anim"

    sget-object v9, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "animOut":I
    invoke-virtual {v5, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 100
    .end local v1    # "animIn":I
    .end local v2    # "animOut":I
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "topActivity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5AnimatorUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "overridePendingTransitionFromXml exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
