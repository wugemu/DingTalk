.class public Lcom/alipay/android/app/smartpays/api/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# instance fields
.field private mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

.field private mContext:Landroid/content/Context;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/api/FingerprintManager;IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/smartpays/api/FingerprintManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p4, "x4"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method private getOpenCallback(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dialog"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .param p3, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p4, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v4

    .line 191
    .local v4, "loader":Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    new-instance v0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V

    .line 257
    .local v0, "currentCallback":Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    return-object v0
.end method

.method private getOpenDialog(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .locals 2
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->isSamsungNNL(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    sget-object v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;)V

    goto :goto_0
.end method

.method private getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    if-nez v1, :cond_0

    .line 413
    new-instance v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "provider":Lcom/alipay/android/app/smartpays/api/IResourceProvider;
    new-instance v1, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;-><init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    .line 416
    .end local v0    # "provider":Lcom/alipay/android/app/smartpays/api/IResourceProvider;
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    return-object v1
.end method

.method private getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .param p3, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p4, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v4

    .line 297
    .local v4, "loader":Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    new-instance v0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V

    .line 370
    .local v0, "currentCallback":Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    return-object v0
.end method

.method private getVerifyDialog(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .locals 2
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-boolean v0, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mIsSamsung:Z

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    sget-object v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;-><init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;)V

    goto :goto_0
.end method

.method private isSamsungNNL(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget v0, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mScanType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mScanType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private process(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "version"    # I
    .param p3, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->process(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "version"    # I
    .param p3, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p4, "callBack"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mUserId:Ljava/lang/String;

    iget-object v5, p3, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mData:Ljava/lang/String;

    move v3, p1

    move v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->processAsync(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 174
    return-void
.end method

.method private showOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dialog"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .param p3, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    if-nez p2, :cond_0

    .line 272
    const/4 p2, 0x0

    .line 288
    .end local p2    # "dialog":Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    :goto_0
    return-object p2

    .line 275
    .restart local p2    # "dialog":Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v0

    .line 276
    .local v0, "loader":Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    const-string/jumbo v2, "safepay_fp_open"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V

    .line 278
    new-instance v2, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;

    invoke-direct {v2, p0, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)V

    goto :goto_0
.end method

.method private showVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dialog"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    .param p3, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p4, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 385
    if-nez p2, :cond_0

    .line 386
    const/4 p2, 0x0

    .line 408
    .end local p2    # "dialog":Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    :goto_0
    return-object p2

    .line 389
    .restart local p2    # "dialog":Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v0

    .line 390
    .local v0, "loader":Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    iget-object v1, p3, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mTipsMsg:Ljava/lang/String;

    .line 391
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    const-string/jumbo v2, "safepay_fp_tips"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    :cond_1
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V

    .line 395
    new-instance v2, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;

    invoke-direct {v2, p0, p4}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintManager::cancel"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method public cancelVerify()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintManager::cancelVerify"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.alipay.android.app.FINGERPRINT_VERIFY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkUpdate()Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintManager::checkUpdate"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;-><init>()V

    .line 70
    .local v1, "request":Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    sget v2, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_CHECK_UPDATE:I

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mData:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->process(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintManager::checkUserStatus"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->checkUserStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRegistedNumber()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintManager::getRegistedNumber"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->registedFingerPrintNumber(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public initHardwarePay(Ljava/lang/String;)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    .locals 5
    .param p1, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintManager::initHardwarePay"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "status":I
    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    .line 50
    const/16 v1, 0x6a

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v2, v1, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public openFingerprintManager()Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintManager::openFingerprintManager"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;-><init>()V

    .line 77
    .local v1, "request":Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    sget v2, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_OPEN_FP_MANAGER:I

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mData:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->process(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public register(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p2, "callBack"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintManager::register"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 84
    return-void
.end method

.method public registerWithDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p3, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintManager::registerWithDialog"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "fpV1"

    const-string/jumbo v4, "FpOpenV1Start"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getOpenDialog(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    move-result-object v0

    .line 97
    .local v0, "dialog":Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getOpenCallback(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    move-result-object v1

    .line 100
    .local v1, "retryCallback":Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->showOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .line 103
    sget v2, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, p2, v1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 104
    return-void
.end method

.method public setResourceProvider(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/alipay/android/app/smartpays/api/IResourceProvider;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintManager::setResourceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "provider:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;-><init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    goto :goto_0
.end method

.method public unregister(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintManager::unregister"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "fpV1"

    const-string/jumbo v2, "FpCloseV1Start"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_UNREGISTER:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 155
    return-void
.end method

.method public verifyWithDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p3, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintManager::verifyWithDialog"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "fpV1"

    const-string/jumbo v4, "FpPayV1Start"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyDialog(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    move-result-object v0

    .line 117
    .local v0, "dialog":Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    move-result-object v1

    .line 120
    .local v1, "retryCallback":Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->showVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .line 123
    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, p2, v1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 124
    return-void
.end method

.method public vertify(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;
    .param p2, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "FingerprintManager::vertify"

    const-string/jumbo v3, "custom view"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "fpV1"

    const-string/jumbo v3, "FpPayV1Start"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    move-result-object v0

    .line 137
    .local v0, "retryCallback":Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 138
    return-void
.end method
