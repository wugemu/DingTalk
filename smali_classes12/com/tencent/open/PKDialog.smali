.class public Lcom/tencent/open/PKDialog;
.super Lcom/tencent/open/b;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/PKDialog$b;,
        Lcom/tencent/open/PKDialog$FbWebViewClient;,
        Lcom/tencent/open/PKDialog$a;
    }
.end annotation


# static fields
.field static a:Landroid/widget/Toast;

.field private static final b:Ljava/lang/String;


# instance fields
.field private e:Lcom/tencent/open/c/a;

.field private f:Lcom/tencent/open/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/PKDialog;->b:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/PKDialog;->a:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/PKDialog;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/PKDialog$b;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/open/PKDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/c/b;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 519
    sget-object v0, Lcom/tencent/open/PKDialog;->b:Ljava/lang/String;

    const-string/jumbo v1, "keyboard hide"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    sget-object v0, Lcom/tencent/open/PKDialog;->b:Ljava/lang/String;

    const-string/jumbo v1, "keyboard show"

    invoke-static {v0, v1}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    const-string/jumbo v0, "PKDialog"

    const-string/jumbo v1, "--onConsoleMessage--"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->c:Ljta;

    iget-object v1, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v1, p1}, Ljta;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/tencent/open/b;->onBackPressed()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/tencent/open/b;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0, v6}, Lcom/tencent/open/PKDialog;->requestWindowFeature(I)Z

    .line 95
    invoke-virtual {p0}, Lcom/tencent/open/PKDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 96
    invoke-virtual {p0}, Lcom/tencent/open/PKDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1103
    new-instance v1, Lcom/tencent/open/c/a;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/open/c/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/open/PKDialog;->e:Lcom/tencent/open/c/a;

    .line 1104
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->e:Lcom/tencent/open/c/a;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/a;->setBackgroundColor(I)V

    .line 1105
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->e:Lcom/tencent/open/c/a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    new-instance v1, Lcom/tencent/open/c/b;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    .line 1109
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v5}, Lcom/tencent/open/c/b;->setBackgroundColor(I)V

    .line 1110
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v8}, Lcom/tencent/open/c/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1114
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1124
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1125
    iget-object v1, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v1, v0}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->e:Lcom/tencent/open/c/a;

    iget-object v1, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/a;->addView(Landroid/view/View;)V

    .line 1127
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->e:Lcom/tencent/open/c/a;

    .line 2052
    iput-object p0, v0, Lcom/tencent/open/c/a;->a:Lcom/tencent/open/c/a$a;

    .line 1128
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->e:Lcom/tencent/open/c/a;

    invoke-virtual {p0, v0}, Lcom/tencent/open/PKDialog;->setContentView(Landroid/view/View;)V

    .line 2137
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v5}, Lcom/tencent/open/c/b;->setVerticalScrollBarEnabled(Z)V

    .line 2138
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v5}, Lcom/tencent/open/c/b;->setHorizontalScrollBarEnabled(Z)V

    .line 2139
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    new-instance v1, Lcom/tencent/open/PKDialog$FbWebViewClient;

    invoke-direct {v1, p0, v5}, Lcom/tencent/open/PKDialog$FbWebViewClient;-><init>(Lcom/tencent/open/PKDialog;B)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2140
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    iget-object v1, p0, Lcom/tencent/open/PKDialog;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2141
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->clearFormData()V

    .line 2144
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2145
    if-eqz v0, :cond_1

    .line 2148
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 2149
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 2151
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 2154
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 2155
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2156
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2158
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 2159
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2166
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2168
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->c:Ljta;

    new-instance v1, Lcom/tencent/open/PKDialog$a;

    invoke-direct {v1, p0, v5}, Lcom/tencent/open/PKDialog$a;-><init>(Lcom/tencent/open/PKDialog;B)V

    const-string/jumbo v2, "sdk_js_if"

    invoke-virtual {v0, v1, v2}, Ljta;->a(Ljta$b;Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->clearView()V

    .line 2171
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v8}, Lcom/tencent/open/c/b;->loadUrl(Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/tencent/open/PKDialog;->f:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 99
    :cond_1
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
