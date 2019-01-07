.class public Lcom/alibaba/aliweex/adapter/component/WXMask;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x3

.field private static final LEFT:I = 0x0

.field private static final RIGHT:I = 0x1

.field private static final TOP:I = 0x2


# instance fields
.field private lastHeight:I

.field private lastWidth:I

.field private mContainerView:Lcom/alibaba/aliweex/adapter/view/WXMaskView;

.field private mDecorView:Landroid/view/View;

.field private mObserver:Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 154
    iput v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastWidth:I

    .line 155
    iput v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastHeight:I

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/aliweex/adapter/component/WXMask;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/aliweex/adapter/component/WXMask;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->fireVisibleChangedEvent(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/aliweex/adapter/component/WXMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/aliweex/adapter/component/WXMask;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->detectWindowFrameAndUpdate()V

    return-void
.end method

.method private add(FF)I
    .locals 1
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 367
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 p1, 0x0

    .line 371
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const/4 p2, 0x0

    .line 375
    :cond_1
    add-float v0, p1, p2

    float-to-int v0, v0

    return v0
.end method

.method private detectWindowFrameAndUpdate()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->initLastSize()V

    .line 224
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 225
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v2, "windowFrame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 229
    .local v1, "w":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 231
    .local v0, "h":I
    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastHeight:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastWidth:I

    if-ne v3, v1, :cond_1

    .line 232
    const-string/jumbo v3, "WXMask"

    const-string/jumbo v4, "Frame not changed"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v0    # "h":I
    .end local v1    # "w":I
    .end local v2    # "windowFrame":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0    # "h":I
    .restart local v1    # "w":I
    .restart local v2    # "windowFrame":Landroid/graphics/Rect;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v3, v4, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 241
    const-string/jumbo v3, "Mask"

    const-string/jumbo v4, "Mask is not fullscreen"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    iput v1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastWidth:I

    .line 246
    iput v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastHeight:I

    .line 248
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/alibaba/aliweex/adapter/component/WXMask$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/alibaba/aliweex/adapter/component/WXMask$3;-><init>(Lcom/alibaba/aliweex/adapter/component/WXMask;II)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fireVisibleChangedEvent(Z)V
    .locals 3
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 325
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 326
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "visible"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v1, "visiblechanged"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 328
    return-void
.end method

.method private get(I)I
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    .line 349
    .local v0, "margin":Lcom/taobao/weex/dom/CSSShorthand;
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    .line 350
    .local v1, "style":Lcom/taobao/weex/dom/WXStyle;
    packed-switch p1, :pswitch_data_0

    .line 363
    .end local v0    # "margin":Lcom/taobao/weex/dom/CSSShorthand;
    .end local v1    # "style":Lcom/taobao/weex/dom/WXStyle;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 352
    .restart local v0    # "margin":Lcom/taobao/weex/dom/CSSShorthand;
    .restart local v1    # "style":Lcom/taobao/weex/dom/WXStyle;
    :pswitch_0
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getLeft()F

    move-result v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/aliweex/adapter/component/WXMask;->add(FF)I

    move-result v2

    goto :goto_1

    .line 354
    :pswitch_1
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getRight()F

    move-result v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/aliweex/adapter/component/WXMask;->add(FF)I

    move-result v2

    goto :goto_1

    .line 356
    :pswitch_2
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getTop()F

    move-result v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/aliweex/adapter/component/WXMask;->add(FF)I

    move-result v2

    goto :goto_1

    .line 358
    :pswitch_3
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getBottom()F

    move-result v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/aliweex/adapter/component/WXMask;->add(FF)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .end local v0    # "margin":Lcom/taobao/weex/dom/CSSShorthand;
    .end local v1    # "style":Lcom/taobao/weex/dom/WXStyle;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initLastSize()V
    .locals 12

    .prologue
    .line 271
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    .line 272
    .local v3, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-nez v3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v1

    .line 277
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 281
    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 282
    .local v2, "height":I
    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 283
    .local v7, "width":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 284
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_2

    .line 285
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 286
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 289
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 290
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-le v8, v9, :cond_3

    .line 291
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 293
    .local v0, "application":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "status_bar_height"

    const-string/jumbo v10, "dimen"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 294
    .local v4, "resourceId":I
    if-lez v4, :cond_3

    .line 295
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 296
    .local v6, "statusBarHeight":I
    sub-int/2addr v2, v6

    .line 301
    .end local v0    # "application":Landroid/app/Application;
    .end local v4    # "resourceId":I
    .end local v6    # "statusBarHeight":I
    :cond_3
    iput v7, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastWidth:I

    .line 302
    iput v2, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->lastHeight:I

    goto :goto_0
.end method

.method private isFullScreen()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "fullscreen"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "fullscreen"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 266
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 164
    new-instance v3, Lcom/alibaba/aliweex/adapter/view/WXMaskView;

    invoke-direct {v3, p1}, Lcom/alibaba/aliweex/adapter/view/WXMaskView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mContainerView:Lcom/alibaba/aliweex/adapter/view/WXMaskView;

    .line 165
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 166
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_0

    .line 169
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mContainerView:Lcom/alibaba/aliweex/adapter/view/WXMaskView;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 176
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 177
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 178
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 180
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 182
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/alibaba/aliweex/adapter/component/WXMask$1;

    invoke-direct {v4, p0}, Lcom/alibaba/aliweex/adapter/component/WXMask$1;-><init>(Lcom/alibaba/aliweex/adapter/component/WXMask;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "status_bar_height"

    const-string/jumbo v5, "dimen"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "resourceId":I
    if-lez v0, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 194
    .local v1, "statusBarHeight":I
    move v2, v1

    .line 197
    .end local v1    # "statusBarHeight":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x800033

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 201
    invoke-direct {p0, v7}, Lcom/alibaba/aliweex/adapter/component/WXMask;->fireVisibleChangedEvent(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    .line 205
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 206
    new-instance v3, Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;-><init>(Lcom/alibaba/aliweex/adapter/component/WXMask;Lcom/alibaba/aliweex/adapter/component/WXMask$1;)V

    iput-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mObserver:Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;

    .line 207
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mObserver:Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mContainerView:Lcom/alibaba/aliweex/adapter/view/WXMaskView;

    new-instance v4, Lcom/alibaba/aliweex/adapter/component/WXMask$2;

    invoke-direct {v4, p0}, Lcom/alibaba/aliweex/adapter/component/WXMask$2;-><init>(Lcom/alibaba/aliweex/adapter/component/WXMask;)V

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/aliweex/adapter/view/WXMaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mContainerView:Lcom/alibaba/aliweex/adapter/view/WXMaskView;

    return-object v3
.end method

.method public isVirtualComponent()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public removeVirtualComponent()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mObserver:Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 320
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask;->mObserver:Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;

    .line 322
    :cond_2
    return-void
.end method

.method protected setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 332
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->get(I)I

    move-result p4

    .line 333
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->get(I)I

    move-result p5

    .line 334
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->get(I)I

    move-result p6

    .line 335
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->get(I)I

    move-result p7

    .line 336
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p4, p6, p5, p7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    return-void
.end method
