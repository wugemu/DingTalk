.class public final Lheb;
.super Lhdu;
.source "PhotoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lheb$b;,
        Lheb$c;,
        Lheb$a;
    }
.end annotation


# instance fields
.field b:Landroid/graphics/Bitmap;

.field c:Ljava/lang/Object;

.field final d:Ljava/lang/Object;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 49
    const-string/jumbo v0, "PhotoDelegate"

    iput-object v0, p0, Lheb;->e:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lheb;->d:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lheb;->a:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method static synthetic a(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static a(Ljava/lang/String;Lhpj;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "netCallback"    # Lhpj;

    .prologue
    .line 102
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3, p1}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    .line 106
    .local v0, "response":Lcom/uc/webview/export/WebResourceResponse;
    return-object v0
.end method

.method static synthetic a(Lheb;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lheb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    .line 1247
    iget-object v0, p0, Lheb;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lheb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    :cond_0
    sget v0, Lhdn$k;->pic_save_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1264
    :goto_0
    return-void

    .line 1253
    :cond_1
    :try_start_0
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lheb;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1, p1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1255
    sget v1, Lhdn$k;->dt_lightapp_webview_save_photo_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1256
    iget-object v1, p0, Lheb;->a:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    sget v1, Lhdn$k;->pic_save_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1263
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "PhotoDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveImageToPhone exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_2
    :try_start_1
    sget v0, Lhdn$k;->pic_save_fail:I

    invoke-static {v0}, Lcms;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic k(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic n(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic p(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic q(Lheb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lheb;

    .prologue
    .line 40
    iget-object v0, p0, Lheb;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ContextMenu;Lcom/uc/webview/export/WebView$HitTestResult;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "result"    # Lcom/uc/webview/export/WebView$HitTestResult;
    .param p3, "itemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-virtual {p2}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-virtual {p2}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lheb;->a(Ljava/lang/String;Lhpj;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v2

    .line 72
    .local v2, "response":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v2, :cond_2

    .line 74
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {p2}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lheb;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lheb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    iget-object v3, p0, Lheb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lhdn$k;->dt_lightapp_webview_browse_big_photo:I

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 83
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    sget v6, Lhdn$k;->save_to_phone:I

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 85
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "PhotoDelegate"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_checkQr"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lheb$a;

    new-instance v5, Lheb$1;

    invoke-direct {v5, p0, p1, p3, v1}, Lheb$1;-><init>(Lheb;Landroid/view/ContextMenu;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/content/Intent;)V

    iget-object v6, p0, Lheb;->a:Landroid/app/Activity;

    .line 93
    invoke-virtual {v2}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lheb$a;-><init>(Lheb;Lheb$b;Landroid/app/Activity;Ljava/io/InputStream;)V

    .line 85
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "response":Lcom/uc/webview/export/WebResourceResponse;
    :cond_2
    :goto_0
    return-void

    .line 94
    .restart local v2    # "response":Lcom/uc/webview/export/WebResourceResponse;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "PhotoDelegate"

    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "menuAddItem Exception"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lheb;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lheb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lheb;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lheb;->c:Ljava/lang/Object;

    .line 273
    return-void
.end method
