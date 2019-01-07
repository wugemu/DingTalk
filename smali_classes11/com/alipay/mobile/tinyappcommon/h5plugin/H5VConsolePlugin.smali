.class public Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;
.super Lipd;
.source "H5VConsolePlugin.java"


# static fields
.field public static final CLEAR_STORAGE_FOR_DEBUG:Ljava/lang/String; = "clearStorage4Debug"

.field public static final ON_TINY_DEBUG_CONSOLE:Ljava/lang/String; = "onTinyDebugConsole"

.field public static final SHOULD_SHOW_VCONSOLE_BTN:Ljava/lang/String; = "shouldShowConsoleBtn"

.field public static final SHOW_TOGGLE_BUTTON:Ljava/lang/String; = "showToggleButton"

.field protected static final TAG:Ljava/lang/String;

.field public static final TOGGLE_DEBUG_PANEL:Ljava/lang/String; = "toggleDebugPanel"


# instance fields
.field private a:Liop;

.field private b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xc

    const/4 v4, -0x2

    .line 148
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_1
    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 158
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-direct {v2, p1}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    .line 159
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    const-string/jumbo v3, "#2A96E7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setBackgroundColor(I)V

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    const-string/jumbo v3, "\u8c03\u8bd5\u9762\u677f"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setTextSize(F)V

    .line 162
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setTextColor(I)V

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-virtual {v2, v6, v5, v6, v5}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setPadding(IIII)V

    .line 164
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setViewContainer(Landroid/view/ViewGroup;)V

    .line 165
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-static {p1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b(Landroid/app/Activity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setMaxTopMargin(I)V

    .line 166
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    new-instance v3, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    const/16 v2, 0xc8

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 176
    const/16 v2, 0x1e

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preLoad"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 9035
    :cond_0
    sget-object v2, Liqf$a;->a:Liqf;

    .line 9047
    iget-object v0, v2, Liqf;->a:Landroid/widget/FrameLayout;

    .line 228
    .local v0, "containerView":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 230
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_2
    new-instance v1, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V

    .line 244
    .local v1, "mainRunnable":Ljava/lang/Runnable;
    const-string/jumbo v2, "NORMAL"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V
    .locals 10
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    const/4 v2, -0x1

    .line 40
    .line 11262
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 11263
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11264
    const-string/jumbo v3, "appId"

    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->getVConsoleAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11265
    const-string/jumbo v3, "createPageSence"

    const-string/jumbo v4, "H5Activity"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11266
    const-string/jumbo v3, "fragmentType"

    const-string/jumbo v4, "subtab"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11267
    new-instance v3, Linz;

    invoke-direct {v3}, Linz;-><init>()V

    .line 12043
    iput-object v1, v3, Linz;->b:Landroid/os/Bundle;

    .line 11269
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 11270
    invoke-virtual {v1, p1, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Linz;)Liop;

    move-result-object v3

    .line 11271
    invoke-interface {v3}, Liop;->applyParamsIfNeed()V

    .line 11273
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 12341
    if-nez p1, :cond_1

    move v1, v2

    .line 11274
    :goto_0
    invoke-direct {v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11275
    const/16 v1, 0x50

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11276
    invoke-interface {v3}, Liop;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 11277
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 11279
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11280
    new-instance v6, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$4;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11286
    const-string/jumbo v6, "#99191919"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 11287
    invoke-virtual {v5, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11289
    if-eqz p2, :cond_0

    .line 11291
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11294
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12350
    invoke-static {p1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b(Landroid/app/Activity;)I

    move-result v2

    .line 11296
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11297
    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11299
    const-string/jumbo v0, "DEBUG_PANEL_PAGE_TAG"

    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a:Liop;

    invoke-interface {v3, v0, v1}, Liop;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13035
    sget-object v0, Liqf$a;->a:Liqf;

    .line 13051
    iput-object v5, v0, Liqf;->a:Landroid/widget/FrameLayout;

    .line 14035
    sget-object v0, Liqf$a;->a:Liqf;

    .line 14059
    iput-object v3, v0, Liqf;->b:Liop;

    .line 40
    return-void

    .line 12345
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 12346
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-int v1, v6

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;)I
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080059

    .line 322
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 324
    .local v3, "titleBarHeight":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 326
    iget v2, v1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .local v2, "statusBarHeight":I
    float-to-int v4, v3

    add-int/2addr v4, v2

    .line 330
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "statusBarHeight":I
    .end local v3    # "titleBarHeight":F
    :goto_0
    return v4

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getTitleAndStatusBarHeight...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x49

    goto :goto_0
.end method

.method public static sendWebWorkerLog(Ljava/lang/Object;)V
    .locals 12
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 358
    if-eqz p0, :cond_0

    instance-of v8, p0, Ljava/util/HashMap;

    if-nez v8, :cond_2

    .line 359
    :cond_0
    sget-object v8, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "sendWebWorkerLog..result type illegal"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 10035
    :cond_2
    sget-object v8, Liqf$a;->a:Liqf;

    .line 10055
    iget-object v4, v8, Liqf;->b:Liop;

    .line 364
    .local v4, "debugH5Page":Liop;
    if-eqz v4, :cond_1

    .line 371
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 372
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "msg"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 374
    sget-object v8, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "sendWebWorkerLog..content is null"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 390
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sendWebWorkerLog...e="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v3    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v8, "event"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 379
    .local v6, "event":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 381
    .local v7, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "type"

    const-string/jumbo v8, "level"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 10395
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v8, "log"

    .line 381
    :goto_1
    invoke-virtual {v7, v10, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v8, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sendWebWorkerLog...event="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v8, "content"

    invoke-virtual {v7, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 387
    .local v1, "consoleData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "data"

    invoke-virtual {v1, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-interface {v4}, Liop;->getBridge()Linx;

    move-result-object v8

    const-string/jumbo v9, "onTinyDebugConsole"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v1, v10}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto/16 :goto_0

    .line 10397
    .end local v1    # "consoleData":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_5
    move v8, v9

    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 10414
    const-string/jumbo v8, "log"

    goto :goto_1

    .line 10397
    :pswitch_0
    const-string/jumbo v11, "1"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :pswitch_1
    const-string/jumbo v11, "2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :pswitch_2
    const-string/jumbo v11, "3"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    goto :goto_2

    :pswitch_3
    const-string/jumbo v11, "4"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    goto :goto_2

    :pswitch_4
    const-string/jumbo v11, "5"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x4

    goto :goto_2

    .line 10399
    :pswitch_5
    const-string/jumbo v8, "log"

    goto/16 :goto_1

    .line 10402
    :pswitch_6
    const-string/jumbo v8, "warn"

    goto/16 :goto_1

    .line 10405
    :pswitch_7
    const-string/jumbo v8, "error"

    goto/16 :goto_1

    .line 10408
    :pswitch_8
    const-string/jumbo v8, "debug"

    goto/16 :goto_1

    .line 10411
    :pswitch_9
    const-string/jumbo v8, "info"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 10397
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected ensurePackageReady(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method protected getVConsoleAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "68687029"

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 83
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2081
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 84
    instance-of v2, v2, Liop;

    if-eqz v2, :cond_0

    .line 3081
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 85
    check-cast v2, Liop;

    iput-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a:Liop;

    .line 88
    :cond_0
    const-string/jumbo v2, "shouldShowConsoleBtn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 3112
    const-string/jumbo v3, "showBtn"

    invoke-static {v2, v3, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3114
    iget-object v3, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a:Liop;

    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3115
    sget-object v4, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showVConsoleBtn...show="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",appId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4131
    sget-object v5, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "toggleButton...appId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4132
    if-eqz v2, :cond_1

    .line 4133
    invoke-direct {p0, v4}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;)V

    .line 4135
    invoke-static {}, Liqe;->a()Liqe;

    move-result-object v2

    invoke-virtual {v2, v3, v8}, Liqe;->a(Ljava/lang/String;Z)V

    .line 3119
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3120
    const-string/jumbo v3, "success"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 103
    :goto_1
    return v8

    .line 4189
    :cond_1
    if-eqz v4, :cond_3

    .line 4192
    const v2, 0x1020002

    invoke-virtual {v4, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 4193
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    if-eqz v4, :cond_2

    .line 4194
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4195
    iput-object v10, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->b:Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    .line 5035
    :cond_2
    sget-object v4, Liqf$a;->a:Liqf;

    .line 5047
    iget-object v4, v4, Liqf;->a:Landroid/widget/FrameLayout;

    .line 4197
    if-eqz v4, :cond_3

    .line 6035
    sget-object v4, Liqf$a;->a:Liqf;

    .line 6047
    iget-object v4, v4, Liqf;->a:Landroid/widget/FrameLayout;

    .line 4198
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7035
    sget-object v2, Liqf$a;->a:Liqf;

    .line 7051
    iput-object v10, v2, Liqf;->a:Landroid/widget/FrameLayout;

    .line 8035
    sget-object v2, Liqf$a;->a:Liqf;

    .line 8059
    iput-object v10, v2, Liqf;->b:Liop;

    .line 4139
    :cond_3
    invoke-static {}, Liqe;->a()Liqe;

    move-result-object v2

    invoke-virtual {v2, v3, v9}, Liqe;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 91
    :cond_4
    const-string/jumbo v2, "toggleDebugPanel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8210
    sget-object v2, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "toggleDebugPanel..."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8212
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v9}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V

    .line 8214
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8215
    const-string/jumbo v3, "success"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8216
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_1

    .line 94
    :cond_5
    const-string/jumbo v2, "showToggleButton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;)V

    .line 97
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 98
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "success"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 100
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    const-string/jumbo v2, "clearStorage4Debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 68
    const-string/jumbo v0, "shouldShowConsoleBtn"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "toggleDebugPanel"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "showToggleButton"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "clearStorage4Debug"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a:Liop;

    .line 1035
    sget-object v0, Liqf$a;->a:Liqf;

    .line 1051
    iput-object v1, v0, Liqf;->a:Landroid/widget/FrameLayout;

    .line 2035
    sget-object v0, Liqf$a;->a:Liqf;

    .line 2059
    iput-object v1, v0, Liqf;->b:Liop;

    .line 79
    return-void
.end method
