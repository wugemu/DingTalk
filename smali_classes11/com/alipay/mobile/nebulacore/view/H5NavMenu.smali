.class public Lcom/alipay/mobile/nebulacore/view/H5NavMenu;
.super Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.source "H5NavMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NavMenu"


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private context:Landroid/content/Context;

.field private h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

.field private hasClearList4Tiny:Z

.field private itemViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchParentLP:Landroid/view/ViewGroup$LayoutParams;

.field private maskView:Landroid/view/View;

.field private popContainer:Landroid/widget/LinearLayout;

.field private rootView:Landroid/view/View;

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasClearList4Tiny:Z

    .line 48
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->contentView:Landroid/widget/FrameLayout;

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->itemViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->maskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private tryInitView()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->maskView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->maskView:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->maskView:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->maskView:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 61
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->mMatchParentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->context:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_popmenu:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->contentView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->rootView:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->rootView:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    goto :goto_0
.end method


# virtual methods
.method public clearMenuList()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasClearList4Tiny:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasClearList4Tiny:Z

    .line 74
    :cond_0
    return-void
.end method

.method public initMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 80
    .local v0, "h5ViewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    if-nez v0, :cond_1

    .line 81
    new-instance v2, Lioo;

    invoke-direct {v2}, Lioo;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    .line 91
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_copy:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "copy"

    sget v6, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_copy:I

    .line 95
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 93
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_refresh:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "refresh"

    sget v6, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_refresh:I

    .line 98
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 96
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_open_in_browser:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "openInBrowser"

    sget v6, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_browse:I

    .line 101
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_font:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "h5MenuActionOfFont"

    sget v6, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_font:I

    .line 104
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_report_new:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "report"

    sget v6, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_complain:I

    .line 107
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/view/H5NavMenuView;->setList(Ljava/util/List;)V

    .line 109
    return-void

    .line 83
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createNavMenu()Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lioo;

    invoke-direct {v2}, Lioo;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    goto/16 :goto_0
.end method

.method public refreshIcon(I)V
    .locals 3
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->isShowPopMenu:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->itemViewList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->itemViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->itemViewList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 185
    .local v0, "content":Landroid/view/View;
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_iv_icon:I

    .line 186
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public showMenu(Landroid/view/View;)V
    .locals 12
    .param p1, "anchor"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 112
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->tryInitView()V

    .line 113
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 114
    const-string/jumbo v7, "H5NavMenu"

    const-string/jumbo v8, "menu is showing!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuUpdated:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v7, :cond_0

    .line 118
    :cond_2
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 119
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->isShowPopMenu:Z

    if-eqz v7, :cond_3

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->itemViewList:Ljava/util/List;

    .line 123
    :cond_3
    const/4 v0, 0x0

    .line 124
    .local v0, "containerWidth":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuView;->getListCount()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 125
    if-eqz v3, :cond_4

    .line 126
    new-instance v1, Landroid/view/View;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, "divider":Landroid/view/View;
    sget v7, Lcom/alipay/mobile/nebula/R$drawable;->h5_popmenu_divider:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v2, v7, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    .local v2, "dividerParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .end local v1    # "divider":Landroid/view/View;
    .end local v2    # "dividerParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h5NavMenuView:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    invoke-interface {v7, v3, v8}, Lcom/alipay/mobile/nebula/view/H5NavMenuView;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 134
    .local v4, "item":Landroid/view/View;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 141
    .local v6, "width":I
    if-le v0, v6, :cond_6

    .line 142
    :goto_3
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->isShowPopMenu:Z

    if-eqz v7, :cond_5

    .line 144
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->itemViewList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    .end local v6    # "width":I
    :catch_0
    move-exception v7

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->context:Landroid/content/Context;

    const/16 v8, 0xc8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    .restart local v6    # "width":I
    :cond_6
    move v0, v6

    .line 141
    goto :goto_3

    .line 148
    .end local v4    # "item":Landroid/view/View;
    .end local v6    # "width":I
    :cond_7
    neg-int v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1c

    iput v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->xOffset:I

    .line 149
    iput v10, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->yOffset:I

    .line 150
    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->rootView:Landroid/view/View;

    const/4 v9, -0x2

    invoke-direct {v7, v8, v0, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 152
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 154
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 155
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 156
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 157
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v8, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 170
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->contentView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->maskView:Landroid/view/View;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->mMatchParentLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :try_start_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    iget v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->xOffset:I

    iget v9, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->yOffset:I

    invoke-virtual {v7, p1, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 173
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->update()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v5

    .line 175
    .local v5, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5NavMenu"

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
