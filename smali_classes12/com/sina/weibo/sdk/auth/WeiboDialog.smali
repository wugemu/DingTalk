.class public Lcom/sina/weibo/sdk/auth/WeiboDialog;
.super Landroid/app/Dialog;
.source "WeiboDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;
    }
.end annotation


# static fields
.field private static j:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/webkit/WebView;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljha;

.field private i:Ljgz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const v0, 0x1030010

    sput v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljha;Ljgz;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Ljha;
    .param p4, "weibo"    # Ljgz;

    .prologue
    .line 93
    sget v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->j:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->f:Z

    .line 94
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->g:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->h:Ljha;

    .line 96
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a:Landroid/content/Context;

    .line 97
    iput-object p4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->i:Ljgz;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Ljha;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->h:Ljha;

    return-object v0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/auth/WeiboDialog;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 353
    .line 2355
    invoke-static {p1}, Ljhk;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2357
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2358
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2359
    const-string/jumbo v3, "error_description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2361
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 2362
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->h:Ljha;

    invoke-interface {v1, v0}, Ljha;->onComplete(Landroid/os/Bundle;)V

    .line 2363
    :goto_0
    return-void

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->h:Ljha;

    .line 2365
    new-instance v4, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    invoke-direct {v4, v2, v1, v3}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    invoke-interface {v0, v4}, Ljha;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Ljgz;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->i:Ljgz;

    return-object v0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->f:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->f:Z

    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 108
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->h:Ljha;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->h:Ljha;

    invoke-interface {v0}, Ljha;->onCancel()V

    .line 111
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 157
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1173
    invoke-virtual {p0, v5}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->requestWindowFeature(I)Z

    .line 1174
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1175
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1177
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->b:Landroid/widget/RelativeLayout;

    .line 1178
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1179
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    .line 1189
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 1191
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->d:Landroid/app/ProgressDialog;

    invoke-static {v5}, Ljhi;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1199
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    .line 1200
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    .line 1201
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1203
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1204
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;

    invoke-direct {v1, p0, v3}, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1205
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1206
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1207
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a:Landroid/content/Context;

    .line 1264
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 1265
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1266
    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 1267
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1268
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1269
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1211
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1213
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1216
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1220
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1221
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1222
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1223
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1224
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Ljhi;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1226
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1229
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 1232
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a:Landroid/content/Context;

    invoke-static {v1, v7}, Ljhi;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1233
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 1242
    const/high16 v3, 0x41c80000    # 25.0f

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1243
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2251
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->a:Landroid/content/Context;

    invoke-static {v0, v7}, Ljhi;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2252
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2253
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2266
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2268
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2269
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2270
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2271
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 142
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->e:Landroid/webkit/WebView;

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->f:Z

    .line 148
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 149
    return-void
.end method
