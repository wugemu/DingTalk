.class public Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;
.super Ljava/lang/Object;
.source "NavigatorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/Navigator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Navigator"

.field private static final MAX_BUFFERD_ACTIVITYINFO:I = 0x32

.field private static final NAV_LOGIN:Ljava/lang/String; = "Navlogin"

.field private static mUrl2ActivityInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sAuthenticator:Lcom/alibaba/doraemon/navigator/Authenticator;

.field private static sAuthenticatorNav:Lcom/alibaba/doraemon/navigator/Navigator;

.field private static sSwitchListener:Lcom/alibaba/doraemon/navigator/PageSwitchListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mIntentRewriter:Lcom/alibaba/doraemon/navigator/IntentRewriter;

.field private mMyPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private hookIntent()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x4

    .line 92
    sget-object v1, Lcom/alibaba/doraemon/impl/navigator/NavHookerMap;->mPriorHookers:Landroid/util/SparseArray;

    .line 93
    .local v1, "mPriorHookers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/navigator/NavigatorHook;>;"
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/NavigatorHook;

    .line 94
    .local v0, "hooker":Lcom/alibaba/doraemon/navigator/NavigatorHook;
    if-eqz v0, :cond_1

    .line 95
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/navigator/NavigatorHook;->hook(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 108
    :cond_0
    return-void

    .line 98
    :cond_1
    const/4 v3, 0x0

    .local v3, "tid":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 99
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 100
    .local v2, "priority":I
    if-eq v2, v6, :cond_2

    .line 101
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "hooker":Lcom/alibaba/doraemon/navigator/NavigatorHook;
    check-cast v0, Lcom/alibaba/doraemon/navigator/NavigatorHook;

    .line 102
    .restart local v0    # "hooker":Lcom/alibaba/doraemon/navigator/NavigatorHook;
    if-eqz v0, :cond_2

    .line 103
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/navigator/NavigatorHook;->hook(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 98
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startActivity(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 265
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "1607-A01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "1605-A01"

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_1
    if-eqz p3, :cond_2

    .line 271
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-interface {p3, v1}, Lcom/alibaba/doraemon/navigator/IntentRewriter;->onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    .line 273
    :cond_2
    sget-object v1, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sSwitchListener:Lcom/alibaba/doraemon/navigator/PageSwitchListener;

    if-eqz v1, :cond_3

    .line 274
    sget-object v1, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sSwitchListener:Lcom/alibaba/doraemon/navigator/PageSwitchListener;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/PageSwitchListener;->onPageSwitch(Ljava/lang/String;)V

    .line 277
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Navigator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "navigate to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string/jumbo v1, "Navigator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NavigatorImpl startActivity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    if-eqz p1, :cond_1

    .line 58
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mMyPackageName:Ljava/lang/String;

    .line 66
    :cond_0
    return-object p0

    .line 61
    :cond_1
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public loginFinshAndForward()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticatorNav:Lcom/alibaba/doraemon/navigator/Navigator;

    if-eq v0, p0, :cond_0

    .line 246
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticatorNav:Lcom/alibaba/doraemon/navigator/Navigator;

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticatorNav:Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0}, Lcom/alibaba/doraemon/navigator/Navigator;->loginFinshAndForward()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntentRewriter:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntentRewriter:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/IntentRewriter;->onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    .line 252
    :cond_2
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sSwitchListener:Lcom/alibaba/doraemon/navigator/PageSwitchListener;

    if-eqz v0, :cond_3

    .line 253
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sSwitchListener:Lcom/alibaba/doraemon/navigator/PageSwitchListener;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/PageSwitchListener;->onPageSwitch(Ljava/lang/String;)V

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticatorNav:Lcom/alibaba/doraemon/navigator/Navigator;

    goto :goto_0
.end method

.method public setLoginProcesser(Lcom/alibaba/doraemon/navigator/Authenticator;)V
    .locals 0
    .param p1, "lp"    # Lcom/alibaba/doraemon/navigator/Authenticator;

    .prologue
    .line 290
    sput-object p1, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticator:Lcom/alibaba/doraemon/navigator/Authenticator;

    .line 291
    return-void
.end method

.method public setPageSwitchListener(Lcom/alibaba/doraemon/navigator/PageSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/doraemon/navigator/PageSwitchListener;

    .prologue
    .line 298
    sput-object p1, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sSwitchListener:Lcom/alibaba/doraemon/navigator/PageSwitchListener;

    .line 299
    return-void
.end method

.method public to(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 75
    return-void
.end method

.method public to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 89
    return-void
.end method

.method public to(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 84
    return-void
.end method

.method public to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->to(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    move-result v0

    return v0
.end method

.method public to(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    if-nez v11, :cond_0

    .line 119
    const-string/jumbo v11, "Navigator"

    const-string/jumbo v12, "context is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v11, 0x0

    .line 233
    :goto_0
    return v11

    .line 122
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 123
    const-string/jumbo v11, "Navigator"

    const-string/jumbo v12, "app starts a null-url switch"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v11, 0x0

    goto :goto_0

    .line 127
    :cond_1
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntentRewriter:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .line 128
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 130
    .local v10, "toUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    .line 138
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 139
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->hookIntent()V

    .line 146
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mMyPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 148
    .local v6, "isInAppPackage":Z
    const/4 v2, 0x0

    .line 149
    .local v2, "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_3

    .line 151
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v2    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_3
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 158
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-nez v8, :cond_5

    .line 159
    const-string/jumbo v11, "Navigator"

    const-string/jumbo v12, "NavigatorImpl to pm is null"

    invoke-static {v11, v12}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 141
    .end local v2    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "isInAppPackage":Z
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    iget-object v12, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 163
    .restart local v2    # "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "isInAppPackage":Z
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_8

    .line 164
    :cond_6
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    const/16 v12, 0xc0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_8

    .line 167
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 168
    .local v4, "i":I
    :goto_2
    if-lez v4, :cond_8

    .line 169
    add-int/lit8 v11, v4, -0x1

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v11, :cond_7

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v12, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 171
    add-int/lit8 v11, v4, -0x1

    invoke-interface {v2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 176
    .end local v4    # "i":I
    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_a

    .line 178
    :cond_9
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    const v12, 0x10080

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 182
    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 184
    iput-object v5, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    .line 185
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 186
    const/4 v6, 0x0

    .line 189
    :cond_c
    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_e

    .line 190
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 193
    :cond_e
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 195
    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_10

    .line 197
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    const/16 v12, 0x32

    if-lt v11, v12, :cond_f

    .line 198
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    sget-object v12, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_f
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mUrl2ActivityInfo:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_10
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticator:Lcom/alibaba/doraemon/navigator/Authenticator;

    if-eqz v11, :cond_11

    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticator:Lcom/alibaba/doraemon/navigator/Authenticator;

    invoke-interface {v11}, Lcom/alibaba/doraemon/navigator/Authenticator;->isLogin()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 205
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v12, v0}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->startActivity(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 206
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 210
    :cond_11
    const/4 v7, 0x0

    .line 211
    .local v7, "needLogin":Z
    if-eqz v6, :cond_13

    .line 212
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_12

    .line 213
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v12, "Navlogin"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 215
    :cond_12
    :try_start_0
    const-string/jumbo v11, "Navlogin"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    or-int/2addr v7, v11

    .line 221
    :cond_13
    :goto_3
    if-nez v7, :cond_14

    .line 223
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v12, v0}, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->startActivity(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 224
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "Navigator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 226
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_14
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticator:Lcom/alibaba/doraemon/navigator/Authenticator;

    if-nez v11, :cond_15

    .line 227
    const-string/jumbo v11, "Navigator"

    const-string/jumbo v12, "Activity need login. But Authenticator is not setted."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 230
    :cond_15
    iget-object v11, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mIntent:Landroid/content/Intent;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    sget-object v11, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->sAuthenticator:Lcom/alibaba/doraemon/navigator/Authenticator;

    iget-object v12, p0, Lcom/alibaba/doraemon/impl/navigator/NavigatorImpl;->mContext:Landroid/content/Context;

    invoke-interface {v11, v12}, Lcom/alibaba/doraemon/navigator/Authenticator;->login(Landroid/content/Context;)V

    .line 233
    const/4 v11, 0x1

    goto/16 :goto_0
.end method
