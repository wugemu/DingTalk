.class public Lcom/tencent/connect/auth/AuthDialog;
.super Landroid/app/Dialog;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthDialog$b;,
        Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;,
        Lcom/tencent/connect/auth/AuthDialog$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ProgressBar;

.field private f:Lcom/tencent/open/c/c;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Ljtr;->a()Landroid/content/Context;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/libwbsafeedit.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/libwbsafeedit.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    const-string/jumbo v1, "-->load wbsafeedit lib success."

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    const-string/jumbo v1, "-->load wbsafeedit lib fail, because so is not exists."

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "openSDK_LOG.authDlg"

    const-string/jumbo v2, "-->load wbsafeedit lib error."

    invoke-static {v1, v2, v0}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_1
    :try_start_1
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    const-string/jumbo v1, "-->load wbsafeedit lib fail, because context is null."

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;J)J
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/tencent/connect/auth/AuthDialog;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2255
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2261
    const-string/jumbo v2, "_u_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthDialog;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    .line 2620
    invoke-static {}, Ljst;->a()Ljst;

    move-result-object v0

    .line 2621
    invoke-static {}, Ljst;->b()Ljava/lang/String;

    move-result-object v1

    .line 2622
    new-instance v2, Ljst$a;

    invoke-direct {v2}, Ljst$a;-><init>()V

    .line 2623
    iput-object v6, v2, Ljst$a;->a:Ljuc;

    .line 2624
    iput-object p0, v2, Ljst$a;->b:Lcom/tencent/connect/auth/AuthDialog;

    .line 2625
    iput-object v1, v2, Ljst$a;->c:Ljava/lang/String;

    .line 2626
    invoke-virtual {v0, v2}, Ljst;->a(Ljst$a;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2628
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-static {v3}, Ljtx;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2629
    const-string/jumbo v4, "token_key"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const-string/jumbo v1, "serial"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljtx;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    .line 2633
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-static {v6, v0}, Ljtx;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 61
    return v0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthDialog;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$a;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/AuthDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/AuthDialog;)Ljua;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/AuthDialog;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/tencent/connect/auth/AuthDialog;->k:J

    return-wide v0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/AuthDialog;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/connect/auth/AuthDialog;->h:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/connect/auth/AuthDialog;)J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/connect/auth/AuthDialog;)I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/connect/auth/AuthDialog;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/connect/auth/AuthDialog;->h:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    .line 3467
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3468
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3469
    const-string/jumbo v1, "openSDK_LOG.authDlg"

    const-string/jumbo v2, "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-static {v1, v2}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method static synthetic p(Lcom/tencent/connect/auth/AuthDialog;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->l:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");void("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v1, v0}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 659
    invoke-virtual {v1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->destroy()V

    .line 665
    iput-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    .line 667
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Z

    if-nez v0, :cond_0

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 156
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0, v8}, Lcom/tencent/connect/auth/AuthDialog;->requestWindowFeature(I)Z

    .line 1492
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/ProgressBar;

    .line 1493
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1496
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1497
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Landroid/widget/LinearLayout;

    .line 1499
    const-string/jumbo v0, "action_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1500
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1503
    const/16 v0, 0x10

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1504
    const/4 v0, 0x5

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1505
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1506
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1507
    const-string/jumbo v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1508
    const-string/jumbo v3, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1513
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1514
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1517
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1520
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1521
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1522
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1523
    if-eqz v0, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1526
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/widget/FrameLayout;

    .line 1527
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1530
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1531
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1532
    const/16 v2, 0x28

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1533
    const/16 v2, 0x28

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1534
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1535
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/widget/FrameLayout;

    const/high16 v2, 0x1080000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1537
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1475
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1478
    new-instance v2, Lcom/tencent/open/c/c;

    invoke-direct {v2, v1}, Lcom/tencent/open/c/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    .line 1479
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v2, v0}, Lcom/tencent/open/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Landroid/widget/FrameLayout;

    .line 1482
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1483
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1485
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1486
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1488
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/AuthDialog;->setContentView(Landroid/view/View;)V

    .line 1545
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0, v6}, Lcom/tencent/open/c/c;->setVerticalScrollBarEnabled(Z)V

    .line 1546
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0, v6}, Lcom/tencent/open/c/c;->setHorizontalScrollBarEnabled(Z)V

    .line 1547
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    new-instance v2, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;

    invoke-direct {v2, p0, v6}, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;-><init>(Lcom/tencent/connect/auth/AuthDialog;B)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1548
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1549
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->clearFormData()V

    .line 1552
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->clearSslPreferences()V

    .line 1553
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    new-instance v2, Lcom/tencent/connect/auth/AuthDialog$1;

    invoke-direct {v2, p0}, Lcom/tencent/connect/auth/AuthDialog$1;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1561
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    new-instance v2, Lcom/tencent/connect/auth/AuthDialog$2;

    invoke-direct {v2, p0}, Lcom/tencent/connect/auth/AuthDialog$2;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1578
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1579
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1580
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1582
    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1585
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 1586
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1587
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1589
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1590
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1592
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1593
    const-string/jumbo v2, "databases"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1597
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-->mUrl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->i:Ljava/lang/String;

    .line 1599
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1603
    new-instance v0, Ljty;

    invoke-direct {v0}, Ljty;-><init>()V

    const-string/jumbo v2, "SecureJsInterface"

    invoke-virtual {v1, v0, v2}, Ljua;->a(Ljta$b;Ljava/lang/String;)V

    .line 1605
    sput-boolean v6, Ljty;->a:Z

    .line 1607
    new-instance v0, Lcom/tencent/connect/auth/AuthDialog$3;

    invoke-direct {v0, p0}, Lcom/tencent/connect/auth/AuthDialog$3;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->l:Ljava/util/HashMap;

    .line 148
    return-void

    .line 1510
    :cond_1
    const-string/jumbo v3, "Logging in..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 162
    return-void
.end method
