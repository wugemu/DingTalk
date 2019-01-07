.class public abstract Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.super Ljava/lang/Object;
.source "H5PopMenu.java"


# static fields
.field private static final MAX_MENU_LEN:I = 0x8

.field private static final MAX_TEMP_COUNT:I = 0xb

.field public static final TAG:Ljava/lang/String; = "H5PopMenu"


# instance fields
.field h5Page:Liop;

.field isShowPopMenu:Z

.field menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field menuUpdated:Z

.field onClickListener:Landroid/view/View$OnClickListener;

.field popupWindow:Landroid/widget/PopupWindow;

.field tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->onClickListener:Landroid/view/View$OnClickListener;

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->initMenu()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuUpdated:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->setMenuIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    .local v0, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, "ppchatReportAbuse"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_complain:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    :goto_0
    return-object v1

    .line 343
    :cond_0
    const-string/jumbo v1, "ppchatShare"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "shareFriend"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_share_friend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 346
    :cond_2
    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private hasMenu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 311
    .local v0, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-object v2, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    :cond_1
    const/4 v1, 0x1

    .line 315
    .end local v0    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setMenuIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 307
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    .line 297
    .local v0, "i":I
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 298
    .local v1, "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-object v3, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    iput-object p2, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 300
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->refreshIcon(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    .end local v1    # "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 305
    .restart local v0    # "i":I
    .restart local v1    # "menuItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 306
    goto :goto_1
.end method


# virtual methods
.method public addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "menu"    # Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract clearMenuList()V
.end method

.method public getMenuIcon()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 268
    .local v3, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-object v2, v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconUrl:Ljava/lang/String;

    .line 269
    .local v2, "iconUrl":Ljava/lang/String;
    iget-boolean v0, v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconDownloading:Z

    .line 270
    .local v0, "downloading":Z
    iget-object v4, v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    .line 271
    .local v4, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    .line 275
    const-string/jumbo v6, "http://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "https://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 276
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->byteToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 277
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->setMenuIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 282
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v6, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;

    invoke-direct {v6, p0, v4}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;-><init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lioi;)V

    goto :goto_0

    .line 290
    .end local v0    # "downloading":Z
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v3    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public hasMenu(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v2

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_0

    .line 105
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 106
    .local v1, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const/4 v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public abstract initMenu()V
.end method

.method public abstract refreshIcon(I)V
.end method

.method public removeMenu(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 332
    .local v1, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public resetMenu()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 352
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 353
    .local v1, "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-boolean v2, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 351
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 357
    .end local v1    # "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuUpdated:Z

    .line 358
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->initMenu()V

    .line 361
    :cond_2
    return-void
.end method

.method public setIsShowPopMenu(Z)V
    .locals 0
    .param p1, "isShowPopMenu"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    .line 91
    return-void
.end method

.method public setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V
    .locals 28
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "temp"    # Z

    .prologue
    .line 114
    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v18, v0

    .line 115
    .local v18, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v24, "reset"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v21

    .line 116
    .local v21, "reset":Z
    if-eqz v21, :cond_1

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->resetMenu()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string/jumbo v24, "menus"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    .line 121
    .local v14, "menus":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v24, "override"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    move/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v17

    .line 123
    .local v17, "overrideSystemDefault":Z
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    .line 131
    :cond_3
    if-eqz p2, :cond_5

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 132
    :cond_4
    const-string/jumbo v24, "H5PopMenu"

    const-string/jumbo v25, "menu not set"

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_5
    const/16 v23, 0x0

    .line 137
    .local v23, "tempCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 138
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 140
    .local v13, "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-boolean v0, v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 141
    add-int/lit8 v23, v23, 0x1

    .line 138
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 144
    .end local v13    # "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_7
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz p2, :cond_8

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 147
    const-string/jumbo v24, "H5PopMenu"

    const-string/jumbo v25, "reach max temp count!"

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :catchall_0
    move-exception v24

    :try_start_1
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 151
    :cond_8
    if-eqz v14, :cond_9

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v16

    .line 153
    .local v16, "oriCount":I
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 154
    .local v3, "addCount":I
    add-int v24, v16, v3

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 155
    const-string/jumbo v24, "H5PopMenu"

    const-string/jumbo v25, "(oriCount + addCount) >= MAX_TEMP_COUNT!"

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v3    # "addCount":I
    .end local v16    # "oriCount":I
    :cond_9
    rsub-int/lit8 v4, v23, 0xb

    .line 162
    .local v4, "availableTemp":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->tempList:Ljava/util/List;

    .line 163
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_12

    .line 164
    invoke-virtual {v14, v10}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 165
    .local v12, "jsonobject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v24, "name"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v24, "tag"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 167
    .local v22, "tag":Ljava/lang/String;
    const-string/jumbo v24, "icon"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "iconUrl":Ljava/lang/String;
    const-string/jumbo v24, "redDot"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 169
    .local v20, "redDot":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 170
    :cond_a
    const-string/jumbo v24, "H5PopMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "invalid tag: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 174
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->hasMenu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 175
    const-string/jumbo v24, "H5PopMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "existed tag: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 179
    :cond_c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_d

    .line 180
    const/16 v24, 0x0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 182
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 183
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 184
    const/4 v8, 0x0

    .line 186
    :cond_e
    new-instance v19, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v15, v1, v8, v2}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 187
    .local v19, "popupItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 188
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 189
    invoke-virtual/range {v19 .. v20}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->setRedDotNum(Ljava/lang/String;)V

    .line 192
    :cond_f
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconUrl:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->tempList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v0, v4, :cond_12

    .line 197
    const-string/jumbo v24, "ppchatShare"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 198
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 200
    :cond_10
    const-string/jumbo v24, "ppchatReportAbuse"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 201
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 204
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->tempList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 208
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "iconUrl":Ljava/lang/String;
    .end local v12    # "jsonobject":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "name":Ljava/lang/String;
    .end local v19    # "popupItem":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    .end local v20    # "redDot":Ljava/lang/String;
    .end local v22    # "tag":Ljava/lang/String;
    :cond_12
    const/4 v6, -0x1

    .line 209
    .local v6, "firstTemp":I
    const/4 v5, -0x1

    .line 210
    .local v5, "firstSys":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 211
    const/4 v10, 0x0

    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_16

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 213
    .restart local v13    # "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    iget-boolean v0, v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 215
    if-gez v6, :cond_13

    .line 216
    move v6, v10

    .line 211
    :cond_13
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 220
    :cond_14
    if-gez v5, :cond_13

    if-nez v10, :cond_15

    const-string/jumbo v24, "ppchatShare"

    iget-object v0, v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 222
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 223
    :cond_15
    move v5, v10

    goto :goto_5

    .line 227
    .end local v13    # "menu":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :cond_16
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_17

    .line 231
    const/4 v6, 0x0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_17

    const-string/jumbo v25, "ppchatShare"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    .line 234
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 235
    const/4 v6, 0x1

    .line 239
    :cond_17
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_18

    .line 240
    const/4 v5, 0x0

    .line 243
    :cond_18
    if-eqz p2, :cond_19

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->tempList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 249
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->getMenuIcon()V

    .line 251
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v24

    const-class v25, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    .line 252
    .local v7, "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    if-eqz v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    move/from16 v24, v0

    if-nez v24, :cond_1a

    .line 253
    const-string/jumbo v24, "H5SharePanelProviderImp"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "param = "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v24, "H5SharePanelProviderImp"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "h5page = "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->hashCode()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v7, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;->addMenuList(ILjava/util/List;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 257
    .local v11, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    const-string/jumbo v25, "H5SharePanelProviderImp"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "### addMenuList ### menu : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " tag:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v11, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 227
    .end local v7    # "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    .end local v11    # "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    :catchall_1
    move-exception v24

    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v24

    .line 246
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->tempList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v5, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_6

    .line 261
    .restart local v7    # "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    :cond_1a
    const-string/jumbo v25, "H5PopMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "h5SharePanelProvider null ? "

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_1b

    const/16 v24, 0x1

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, "   h5Page null ? "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    move-object/from16 v24, v0

    if-nez v24, :cond_1c

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const/16 v24, 0x0

    goto :goto_8

    :cond_1c
    const/16 v24, 0x0

    goto :goto_9
.end method

.method public setPage(Liop;)V
    .locals 0
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    .line 85
    return-void
.end method

.method public abstract showMenu(Landroid/view/View;)V
.end method
