.class public Lcom/tencent/open/TDialog;
.super Lcom/tencent/open/b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/TDialog$FbWebViewClient;,
        Lcom/tencent/open/TDialog$a;,
        Lcom/tencent/open/TDialog$b;,
        Lcom/tencent/open/TDialog$c;
    }
.end annotation


# static fields
.field static final a:Landroid/widget/FrameLayout$LayoutParams;

.field static b:Landroid/widget/Toast;

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/tencent/open/TDialog$b;

.field private i:Ljuc;

.field private j:Landroid/widget/FrameLayout;

.field private k:Lcom/tencent/open/c/b;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Ljsv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/open/TDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljuc;Ljsv;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 190
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/b;-><init>(Landroid/content/Context;I)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/TDialog;->m:Z

    .line 86
    iput-object v5, p0, Lcom/tencent/open/TDialog;->n:Ljsv;

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    .line 192
    iput-object p3, p0, Lcom/tencent/open/TDialog;->g:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/tencent/open/TDialog$b;

    .line 1023
    iget-object v4, p5, Ljsv;->a:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljuc;)V

    iput-object v0, p0, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$b;

    .line 194
    new-instance v0, Lcom/tencent/open/TDialog$c;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$b;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/open/TDialog$c;-><init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/open/TDialog;->l:Landroid/os/Handler;

    .line 195
    iput-object v5, p0, Lcom/tencent/open/TDialog;->i:Ljuc;

    .line 196
    iput-object p5, p0, Lcom/tencent/open/TDialog;->n:Ljsv;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 44
    .line 1468
    :try_start_0
    invoke-static {p1}, Ljtx;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1469
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1471
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    if-nez v1, :cond_2

    .line 1474
    sget-object v1, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 1475
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    .line 1482
    :goto_0
    sget-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1497
    :cond_0
    :goto_1
    return-void

    .line 1478
    :cond_1
    sget-object v1, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1479
    sget-object v1, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    sget-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1496
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1483
    :cond_2
    if-ne v1, v3, :cond_0

    .line 1484
    :try_start_1
    sget-object v1, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 1485
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    .line 1492
    :goto_2
    sget-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1488
    :cond_3
    sget-object v1, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1489
    sget-object v1, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    sget-object v0, Lcom/tencent/open/TDialog;->b:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$b;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    .line 1502
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljtx;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1506
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1507
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1508
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 1509
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1510
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1511
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1512
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    .line 1514
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    .line 1534
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1516
    :cond_3
    :try_start_1
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1517
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 1521
    :cond_4
    if-nez v1, :cond_0

    .line 1522
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1525
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    sget-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1528
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/TDialog;->f:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/c/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    const-string/jumbo v0, "TDialog"

    const-string/jumbo v1, "--onConsoleMessage--"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/TDialog;->c:Ljta;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v1, p1}, Ljta;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$b;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/open/TDialog;->h:Lcom/tencent/open/TDialog$b;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog$b;->a()V

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/tencent/open/b;->onBackPressed()V

    .line 216
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/tencent/open/b;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0, v4}, Lcom/tencent/open/TDialog;->requestWindowFeature(I)Z

    .line 1219
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1220
    const-string/jumbo v0, "test"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1225
    new-instance v2, Lcom/tencent/open/c/b;

    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    .line 1226
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    .line 1229
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1230
    iget-object v0, p0, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    iget-object v0, p0, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1232
    iget-object v0, p0, Lcom/tencent/open/TDialog;->j:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog;->setContentView(Landroid/view/View;)V

    .line 1276
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v3}, Lcom/tencent/open/c/b;->setVerticalScrollBarEnabled(Z)V

    .line 1277
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v3}, Lcom/tencent/open/c/b;->setHorizontalScrollBarEnabled(Z)V

    .line 1278
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    new-instance v1, Lcom/tencent/open/TDialog$FbWebViewClient;

    invoke-direct {v1, p0, v3}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;B)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1279
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1280
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->clearFormData()V

    .line 1283
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1284
    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1288
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1290
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1293
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 1294
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1295
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1297
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1298
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1300
    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1302
    iget-object v0, p0, Lcom/tencent/open/TDialog;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "databases"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 1305
    :cond_0
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1307
    iget-object v0, p0, Lcom/tencent/open/TDialog;->c:Ljta;

    new-instance v1, Lcom/tencent/open/TDialog$a;

    invoke-direct {v1, p0, v3}, Lcom/tencent/open/TDialog$a;-><init>(Lcom/tencent/open/TDialog;B)V

    const-string/jumbo v2, "sdk_js_if"

    invoke-virtual {v0, v1, v2}, Ljta;->a(Ljta$b;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->loadUrl(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    sget-object v1, Lcom/tencent/open/TDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/tencent/open/TDialog;->k:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 208
    :cond_1
    return-void
.end method
