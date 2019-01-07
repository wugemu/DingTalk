.class public Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
.super Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;
.source "H5SessionTabBar.java"


# static fields
.field private static final SET_TABBAR:Ljava/lang/String; = "setTabBar"

.field private static final SPACE_TIME:I = 0x1f4

.field private static final SWITCH_TAB:Ljava/lang/String; = "switchTab"

.field private static final TABANIM_DURATION:Ljava/lang/String; = "tabanimduration"

.field private static final TABANIM_STARTOFF:Ljava/lang/String; = "tabanimstartoff"


# instance fields
.field private enableAutoRender:Z

.field private enableTabbarClick:Z

.field private enableWaitRender:Z

.field private h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private hasShowTab:Z

.field private index2Tag:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastClickTime:J

.field private sessionTabContainer:Landroid/widget/RelativeLayout;

.field private tabDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 3
    .param p1, "h5Session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    .line 73
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableTabbarClick:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->hasShowTab:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->lastClickTime:J

    .line 86
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableAutoRender:Z

    .line 87
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableWaitRender:Z

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->performSwitchTab(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Liny;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->beginShowTab(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createSessionTabInternal(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableTabbarClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->onTabClickInternal(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$601(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "x4"    # Landroid/content/Context;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    return-void
.end method

.method private beginShowTab(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->hasShowTab:Z

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->hasShowTab:Z

    .line 316
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Liny;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private createSessionTabInternal(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 33
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "isFromJSAPI"    # Z
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v30

    if-nez v30, :cond_0

    .line 350
    const/16 v30, 0x0

    .line 512
    :goto_0
    return v30

    .line 353
    :cond_0
    new-instance v30, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 356
    const/16 v24, -0x1

    .line 357
    .local v24, "selectedIndex":I
    if-eqz p3, :cond_7

    .line 358
    const-string/jumbo v30, "url"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 359
    .local v12, "entryUrl":Ljava/lang/String;
    const-string/jumbo v30, "appId"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "appId":Ljava/lang/String;
    const-string/jumbo v30, "disableOnInit"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    .line 361
    .local v11, "disableOnInit":Z
    const-string/jumbo v30, "H5BaseTabBar"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableOnInit "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v11, :cond_1

    if-nez p4, :cond_1

    .line 363
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableTabbarClick:Z

    .line 365
    :cond_1
    const-string/jumbo v30, "items"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v20

    .line 366
    .local v20, "items":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p3

    invoke-static {v8, v12, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->ifUrlMatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v24

    .line 367
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_5

    .line 368
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v21

    .line 369
    .local v21, "itemsLength":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 370
    const/16 v30, 0x5

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 374
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    .line 375
    .local v19, "item":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_4

    .line 376
    const-string/jumbo v30, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 377
    .local v25, "shortUrl":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "abUrl":Ljava/lang/String;
    const-string/jumbo v30, "url"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v30, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 380
    .local v17, "icon":Ljava/lang/String;
    const-string/jumbo v30, "activeIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "activeIcon":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 383
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_2

    .line 384
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "abIcon":Ljava/lang/String;
    const-string/jumbo v30, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v5    # "abIcon":Ljava/lang/String;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    :try_start_1
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 393
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_3

    .line 394
    move-object/from16 v0, p3

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "abActiveIcon":Ljava/lang/String;
    const-string/jumbo v30, "activeIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    .end local v4    # "abActiveIcon":Ljava/lang/String;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->inflateTabData(ILcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V

    .line 369
    .end local v6    # "abUrl":Ljava/lang/String;
    .end local v7    # "activeIcon":Ljava/lang/String;
    .end local v17    # "icon":Ljava/lang/String;
    .end local v25    # "shortUrl":Ljava/lang/String;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 388
    .restart local v6    # "abUrl":Ljava/lang/String;
    .restart local v7    # "activeIcon":Ljava/lang/String;
    .restart local v17    # "icon":Ljava/lang/String;
    .restart local v25    # "shortUrl":Ljava/lang/String;
    :catch_0
    move-exception v30

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .restart local v5    # "abIcon":Ljava/lang/String;
    const-string/jumbo v30, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 398
    .end local v5    # "abIcon":Ljava/lang/String;
    :catch_1
    move-exception v30

    move-object/from16 v0, p3

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .restart local v4    # "abActiveIcon":Ljava/lang/String;
    const-string/jumbo v30, "activeIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 405
    .end local v4    # "abActiveIcon":Ljava/lang/String;
    .end local v6    # "abUrl":Ljava/lang/String;
    .end local v7    # "activeIcon":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "icon":Ljava/lang/String;
    .end local v19    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "itemsLength":I
    .end local v25    # "shortUrl":Ljava/lang/String;
    :cond_5
    if-eqz p4, :cond_6

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getindexByTag(Ljava/lang/String;)I

    move-result v24

    .line 408
    :cond_6
    const-string/jumbo v30, "H5BaseTabBar"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "selectedIndex "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v30, -0x1

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 410
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 414
    .end local v8    # "appId":Ljava/lang/String;
    .end local v11    # "disableOnInit":Z
    .end local v12    # "entryUrl":Ljava/lang/String;
    .end local v20    # "items":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    const-string/jumbo v30, "selectedIndex"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 417
    .local v14, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, p3

    invoke-super {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->createTabBar(Lcom/alibaba/fastjson/JSONObject;Liny;Landroid/os/Bundle;)V

    .line 419
    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v15

    .line 420
    .local v15, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    .line 421
    .local v29, "tabStartParams":Landroid/os/Bundle;
    const-string/jumbo v30, "fragmentType"

    const-string/jumbo v31, "subtab"

    invoke-virtual/range {v29 .. v31}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v15, v0, v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 443
    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->peekFragment()Landroid/support/v4/app/Fragment;

    move-result-object v23

    check-cast v23, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 444
    .local v23, "parentFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->setCurrentIndex(I)V

    .line 449
    const-string/jumbo v30, "sessionId"

    invoke-static/range {v29 .. v30}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 450
    .local v13, "finalSessionId":Ljava/lang/String;
    const-string/jumbo v30, "H5BaseTabBar"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "finalSessionId is "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v30, "autoPreRender"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, "autoPreRender":Ljava/lang/String;
    const-string/jumbo v30, "isTinyApp"

    const/16 v31, 0x0

    .line 455
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v18

    .line 456
    .local v18, "isTinyApp":Z
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->initConfig()V

    .line 457
    const-string/jumbo v30, "H5BaseTabBar"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "autoPreRender "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", isTinyApp "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", enableAutoRender "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableAutoRender:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string/jumbo v30, "YES"

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_9

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableAutoRender:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->size()I

    move-result v26

    .line 461
    .local v26, "size":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v22

    .line 463
    .local v22, "key":I
    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 464
    const-string/jumbo v30, "H5BaseTabBar"

    const-string/jumbo v31, "##h5prerender## add prerender in sessiontabbar"

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 466
    .local v27, "tabParams":Landroid/os/Bundle;
    invoke-virtual/range {v27 .. v27}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    .line 467
    .local v28, "tabParamsTmp":Landroid/os/Bundle;
    const-string/jumbo v30, "isPrerender"

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 468
    const-string/jumbo v30, "fragmentType"

    const-string/jumbo v31, "subtab"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/16 v30, 0x0

    .line 470
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;I)V

    .line 461
    .end local v27    # "tabParams":Landroid/os/Bundle;
    .end local v28    # "tabParamsTmp":Landroid/os/Bundle;
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 475
    .end local v16    # "i":I
    .end local v22    # "key":I
    .end local v26    # "size":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move-object/from16 v30, v0

    new-instance v31, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v13}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setTabListener(Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;)V

    .line 512
    .end local v9    # "autoPreRender":Ljava/lang/String;
    .end local v13    # "finalSessionId":Ljava/lang/String;
    .end local v14    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .end local v15    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .end local v18    # "isTinyApp":Z
    .end local v23    # "parentFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v24    # "selectedIndex":I
    .end local v29    # "tabStartParams":Landroid/os/Bundle;
    :cond_a
    const/16 v30, 0x1

    goto/16 :goto_0
.end method

.method private detachOtherFragment(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)V
    .locals 7
    .param p1, "currentIndex"    # I
    .param p2, "h5FragmentManager"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 610
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 611
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v2

    .line 612
    .local v2, "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 613
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 616
    if-eqz p2, :cond_0

    .line 617
    const-string/jumbo v3, "H5BaseTabBar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "detachOtherFragment index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;Z)Z

    goto :goto_0

    .line 621
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 622
    .local v0, "eventBuilder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    sget-object v3, Liov$a;->F:Ljava/lang/String;

    .line 3202
    iput-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 623
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 3207
    iput-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 624
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 625
    return-void
.end method

.method private enableReCreateTabBar()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 780
    const-string/jumbo v1, "h5_enableReCreateTabBar"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    const/4 v1, 0x0

    .line 784
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getindexByTag(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 628
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 629
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 630
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 631
    .local v1, "key":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    .end local v1    # "key":I
    :goto_1
    return v1

    .line 629
    .restart local v1    # "key":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v1    # "key":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private inflateTabData(ILcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 127
    const-string/jumbo v6, "url"

    invoke-static {p2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, "launchParams"

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 130
    .local v1, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v4, "tabStartParams":Landroid/os/Bundle;
    invoke-virtual {v4, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 132
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 134
    const-string/jumbo v6, "launchParamsTag"

    invoke-static {p2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "launchParamsTag":Ljava/lang/String;
    const-string/jumbo v6, "appId"

    invoke-static {p3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 138
    .local v3, "launcher":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 139
    const-string/jumbo v6, "H5BaseTabBar"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "launchParamsTag "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 142
    :cond_0
    const-string/jumbo v6, "url"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v6, "tabanimstartoff"

    const-string/jumbo v7, "waitRender"

    invoke-static {p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v6, "tabanimduration"

    const-string/jumbo v7, "transDuration"

    invoke-static {p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    const-string/jumbo v7, "tag"

    invoke-static {p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "launchParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "launchParamsTag":Ljava/lang/String;
    .end local v3    # "launcher":Landroid/os/Bundle;
    .end local v4    # "tabStartParams":Landroid/os/Bundle;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initConfig()V
    .locals 4

    .prologue
    .line 99
    const-string/jumbo v1, "h5_tabBarOptimizeConfig"

    .line 100
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 101
    .local v0, "optimizeCfgObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "enableAutoRender"

    const-string/jumbo v3, "YES"

    .line 102
    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableAutoRender:Z

    .line 103
    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "enableWaitRender"

    const-string/jumbo v3, "YES"

    .line 104
    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableWaitRender:Z

    .line 105
    const-string/jumbo v1, "H5BaseTabBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableAutoRender "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableAutoRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", enableWaitRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableWaitRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private needWithAnim(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->initConfig()V

    .line 551
    const-string/jumbo v2, "tabanimstartoff"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 552
    .local v1, "startOff":I
    const-string/jumbo v2, "tabanimduration"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, "duration":I
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableWaitRender:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onTabClickInternal(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "h5FragmentManager"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .param p3, "finalSessionId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 517
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->setCurrentIndex(I)V

    .line 518
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 519
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 520
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragmentByIndex(I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v0

    .line 522
    .local v0, "selectedFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    if-eqz v0, :cond_1

    .line 524
    if-eqz p2, :cond_0

    .line 525
    invoke-virtual {p2, v0, v6, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;ZZ)Z

    .line 526
    const-string/jumbo v4, "H5BaseTabBar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reuse sub fragment index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", obj "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->detachOtherFragment(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)V

    .line 547
    return-void

    .line 531
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 532
    .local v1, "startParams":Landroid/os/Bundle;
    const-string/jumbo v4, "sessionId"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string/jumbo v4, "fragmentType"

    const-string/jumbo v5, "subtab"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-eqz p2, :cond_0

    .line 535
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->needWithAnim(Landroid/os/Bundle;)Z

    move-result v3

    .line 536
    .local v3, "withAnim":Z
    invoke-virtual {p2, v1, v3, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 538
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->peekFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 539
    .local v2, "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v4

    .line 540
    invoke-virtual {v4, p1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 541
    const-string/jumbo v4, "H5BaseTabBar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add new sub fragment index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", obj "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", withAnim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performSwitchTab(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;
    .param p3, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 236
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3081
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 238
    check-cast v5, Liop;

    .line 239
    .local v5, "h5Page":Liop;
    if-eqz v5, :cond_0

    .line 240
    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    .line 241
    .local v6, "startParams":Landroid/os/Bundle;
    const-string/jumbo v0, "tabBarJson"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "tabBarJson":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;Liop;)V

    const-string/jumbo v1, "appId"

    .line 271
    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v7, v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 308
    .end local v5    # "h5Page":Liop;
    .end local v6    # "startParams":Landroid/os/Bundle;
    .end local v7    # "tabBarJson":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v5    # "h5Page":Liop;
    .restart local v6    # "startParams":Landroid/os/Bundle;
    .restart local v7    # "tabBarJson":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;Liop;)V

    const-string/jumbo v1, "appId"

    .line 301
    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v5    # "h5Page":Liop;
    .end local v6    # "startParams":Landroid/os/Bundle;
    .end local v7    # "tabBarJson":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->switchTab(Lcom/alipay/mobile/h5container/api/H5Event;Landroid/app/Activity;Liny;)V

    goto :goto_0
.end method


# virtual methods
.method public addTabBar()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 114
    .local v0, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    .line 115
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 119
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .end local v0    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v2, "H5BaseTabBar"

    const-string/jumbo v3, "not in h5activity"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createDefaultSessionTab(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 640
    const/4 v14, 0x2

    move/from16 v0, p2

    if-lt v0, v14, :cond_2

    .line 642
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 643
    .local v9, "rootDefaultView":Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 644
    new-instance v3, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;-><init>(Landroid/content/Context;)V

    .line 645
    .local v3, "defaultTabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_0

    .line 646
    const/4 v14, 0x5

    if-ge v6, v14, :cond_0

    .line 650
    const-string/jumbo v13, ""

    .line 651
    .local v13, "title":Ljava/lang/String;
    new-instance v12, Lcom/alipay/mobile/nebula/view/H5TabbarItem;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;-><init>(Landroid/content/Context;)V

    .line 652
    .local v12, "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getIconAreaView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 653
    .local v7, "iconArea":Landroid/widget/TextView;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/alipay/mobile/nebula/R$drawable;->h5_sessiontab_defaultitem:I

    .line 655
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 656
    .local v2, "defaultIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab_icon:I

    .line 657
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 658
    .local v4, "drawableSize":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 659
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v2, v15, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 660
    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getRootView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->addTab(Landroid/view/View;)V

    .line 645
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 662
    .end local v2    # "defaultIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "drawableSize":I
    .end local v7    # "iconArea":Landroid/widget/TextView;
    .end local v12    # "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    .end local v13    # "title":Ljava/lang/String;
    :cond_0
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-direct {v10, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 664
    .local v10, "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 665
    .local v1, "borderLine":Landroid/view/View;
    const v14, -0x545452

    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 666
    invoke-virtual {v9, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    const v14, -0x70707

    invoke-virtual {v3, v14}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setBackgroundColor(I)V

    .line 669
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 671
    .local v11, "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v14, :cond_1

    move-object/from16 v5, p1

    .line 673
    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 675
    .local v5, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    .line 676
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 679
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v14, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 687
    .end local v1    # "borderLine":Landroid/view/View;
    .end local v3    # "defaultTabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    .end local v5    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .end local v6    # "i":I
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "rootDefaultView":Landroid/widget/LinearLayout;
    .end local v10    # "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 682
    .restart local v1    # "borderLine":Landroid/view/View;
    .restart local v3    # "defaultTabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    .restart local v6    # "i":I
    .restart local v9    # "rootDefaultView":Landroid/widget/LinearLayout;
    .restart local v10    # "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const-string/jumbo v14, "H5BaseTabBar"

    const-string/jumbo v15, "not in h5activity"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 685
    .end local v1    # "borderLine":Landroid/view/View;
    .end local v3    # "defaultTabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    .end local v6    # "i":I
    .end local v9    # "rootDefaultView":Landroid/widget/LinearLayout;
    .end local v10    # "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const-string/jumbo v14, "H5BaseTabBar"

    const-string/jumbo v15, "createDefaultSessionTab num < 2"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public createSessionTab(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 342
    const/4 v4, 0x0

    const-string/jumbo v5, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createSessionTabInternal(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 18
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 173
    .line 1065
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 174
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v14, "switchTab"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 175
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableTabbarClick:Z

    .line 1121
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 177
    .local v10, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "tag"

    invoke-static {v10, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v14, "recreate"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    .line 179
    .local v11, "reCreate":Z
    if-eqz v11, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableReCreateTabBar()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 180
    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 181
    const-string/jumbo v14, "H5BaseTabBar"

    const-string/jumbo v15, "tabBar recreate"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 184
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->hasShowTab:Z

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v9

    .line 187
    .local v9, "pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual {v9}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liop;

    .line 188
    .local v7, "item":Liop;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 189
    invoke-interface {v7}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    .line 190
    .local v8, "itemParams":Landroid/os/Bundle;
    const-string/jumbo v15, "fragmentType"

    const-string/jumbo v16, "normal"

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 192
    .local v13, "type":Ljava/lang/String;
    const-string/jumbo v15, "subtab"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "isPrerender"

    const/16 v16, 0x0

    .line 193
    move/from16 v0, v16

    invoke-static {v10, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_0

    .line 195
    invoke-interface {v7}, Liop;->sendExitEvent()V

    .line 196
    const-string/jumbo v15, "fragmentType"

    const-string/jumbo v16, "normal"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v7    # "item":Liop;
    .end local v8    # "itemParams":Landroid/os/Bundle;
    .end local v13    # "type":Ljava/lang/String;
    :cond_1
    new-instance v14, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v14, v0, v1, v2, v12}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 207
    const/4 v14, 0x1

    .line 231
    .end local v9    # "pages":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .end local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "reCreate":Z
    .end local v12    # "tag":Ljava/lang/String;
    :goto_1
    return v14

    .line 209
    .restart local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "reCreate":Z
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->performSwitchTab(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V

    .line 210
    const/4 v14, 0x1

    goto :goto_1

    .line 212
    .end local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "reCreate":Z
    .end local v12    # "tag":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "setTabBar"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2121
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 214
    .restart local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "actionType"

    invoke-static {v10, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "actionType":Ljava/lang/String;
    const-string/jumbo v14, "redDot"

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 216
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createTabBadge(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 229
    :cond_4
    :goto_2
    const/4 v14, 0x1

    goto :goto_1

    .line 217
    :cond_5
    const-string/jumbo v14, "enable"

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 218
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableTabbarClick:Z

    goto :goto_2

    .line 219
    :cond_6
    const-string/jumbo v14, "disable"

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->enableTabbarClick:Z

    goto :goto_2

    .line 221
    :cond_7
    const-string/jumbo v14, "textColor"

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 222
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createTabTextColor(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_2

    .line 223
    :cond_8
    const-string/jumbo v14, "icon"

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v6

    .line 225
    .local v6, "h5Page":Liop;
    if-eqz v6, :cond_4

    .line 226
    const/4 v14, 0x0

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14, v15}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createTabIcon(Lcom/alibaba/fastjson/JSONObject;Liny;Landroid/os/Bundle;)V

    goto :goto_2

    .line 231
    .end local v5    # "actionType":Ljava/lang/String;
    .end local v6    # "h5Page":Liop;
    .end local v10    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v14

    goto/16 :goto_1
.end method

.method public declared-synchronized isFastClick()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 765
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->lastClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 767
    const/4 v2, 0x0

    .line 771
    .local v2, "isFastClick":Z
    :goto_0
    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return v2

    .line 769
    .end local v2    # "isFastClick":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "isFastClick":Z
    goto :goto_0

    .line 763
    .end local v0    # "currentTime":J
    .end local v2    # "isFastClick":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 19
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "iconArea"    # Landroid/widget/TextView;
    .param p3, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "drawableSize"    # I
    .param p6, "isCheckedState"    # Z
    .param p7, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 693
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    :goto_0
    return-void

    .line 697
    :cond_0
    const-string/jumbo v3, "sessionId"

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 698
    .local v16, "sessionId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v14

    .line 699
    .local v14, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-eqz v14, :cond_2

    .line 701
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v13

    .line 702
    .local v13, "data":[B
    if-eqz v13, :cond_2

    .line 703
    const-string/jumbo v3, "H5BaseTabBar"

    const-string/jumbo v4, "loadImageAsync offlinepkg preFetchPackage"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v3, 0x0

    array-length v4, v13

    invoke-static {v13, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 705
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 706
    .local v17, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p5

    move/from16 v2, p5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 707
    if-eqz p6, :cond_1

    .line 708
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 712
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 710
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 717
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "data":[B
    .end local v17    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 718
    const-string/jumbo v3, "onlineHost"

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 719
    .local v15, "onlineHost":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v18

    new-instance v3, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    goto/16 :goto_0

    .line 750
    :cond_3
    invoke-super/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 753
    .end local v15    # "onlineHost":Ljava/lang/String;
    :cond_4
    invoke-super/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->loadImageAsync(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 152
    const-string/jumbo v0, "switchTab"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "setTabBar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->onRelease()V

    .line 159
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->sessionTabContainer:Landroid/widget/RelativeLayout;

    .line 160
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->pageViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 161
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 162
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabBarView:Landroid/widget/LinearLayout;

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->index2Tag:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 169
    :cond_1
    return-void
.end method

.method public setHasShowTab(Z)V
    .locals 0
    .param p1, "hasShowTab"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->hasShowTab:Z

    .line 777
    return-void
.end method

.method public setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    .line 92
    return-void
.end method

.method public switchTab(Lcom/alipay/mobile/h5container/api/H5Event;Landroid/app/Activity;Liny;)V
    .locals 12
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 557
    if-nez p2, :cond_1

    .line 558
    const-string/jumbo v9, "H5BaseTabBar"

    const-string/jumbo v10, "activity == null"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 561
    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 562
    .local v0, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3121
    iget-object v9, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 563
    const-string/jumbo v10, "tag"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "tag":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getindexByTag(Ljava/lang/String;)I

    move-result v2

    .line 565
    .local v2, "index":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_4

    .line 567
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getId()Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "sessionId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v1

    .line 570
    .local v1, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 571
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragmentByIndex(I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v3

    .line 573
    .local v3, "selectedFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->setCurrentIndex(I)V

    .line 574
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v9, v2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 575
    if-eqz v3, :cond_3

    .line 577
    if-eqz v1, :cond_2

    .line 578
    invoke-virtual {v1, v3, v11, v11}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;ZZ)Z

    .line 579
    const-string/jumbo v9, "H5BaseTabBar"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "reuse sub fragment index "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", obj "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_2
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->detachOtherFragment(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabDatas:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 585
    .local v5, "startParams":Landroid/os/Bundle;
    const-string/jumbo v9, "sessionId"

    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v9, "fragmentType"

    const-string/jumbo v10, "subtab"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-eqz v1, :cond_2

    .line 588
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->needWithAnim(Landroid/os/Bundle;)Z

    move-result v8

    .line 589
    .local v8, "withAnim":Z
    invoke-virtual {v1, v5, v8, v11}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 591
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->peekFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 592
    .local v6, "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v9

    .line 593
    invoke-virtual {v9, v2, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 594
    const-string/jumbo v9, "H5BaseTabBar"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "add new sub fragment index "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", obj "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", withAnim "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 601
    .end local v1    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .end local v3    # "selectedFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v4    # "sessionId":Ljava/lang/String;
    .end local v5    # "startParams":Landroid/os/Bundle;
    .end local v6    # "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v8    # "withAnim":Z
    :cond_4
    const-string/jumbo v9, "H5BaseTabBar"

    const-string/jumbo v10, "invalid tag name"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sget-object v9, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p3, p1, v9}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto/16 :goto_0
.end method
