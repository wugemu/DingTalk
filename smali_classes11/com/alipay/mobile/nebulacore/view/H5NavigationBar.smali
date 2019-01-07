.class public Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
.super Lipd;
.source "H5NavigationBar.java"


# static fields
.field private static final BROADCAST_TITLE_URL:Ljava/lang/String; = "com.alipay.mobile.h5container.titleRefreshed"

.field private static final H5_PAGEERROR_FORTITLEBAR:Ljava/lang/String; = "h5PageErrorForTitlebar"

.field private static final SET_BARBOTTOMLINECOLOR:Ljava/lang/String; = "setBarBottomLineColor"

.field private static final SET_TRANSPARENT_TITLE:Ljava/lang/String; = "setTransparentTitle"

.field private static final TAG:Ljava/lang/String; = "H5NavigationBar"

.field private static final TRANSPARENT_ALWAYS:Ljava/lang/String; = "always"

.field private static final TRANSPARENT_AUTO:Ljava/lang/String; = "auto"

.field private static final blueIconFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final whiteIconFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alpha:F

.field private appId:Ljava/lang/String;

.field private contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private contentView:Landroid/view/View;

.field private defaultTitle:Ljava/lang/String;

.field private delayDy:I

.field private finalMaxScrollHeight:I

.field private finalScale:I

.field private h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

.field private h5Page:Liop;

.field private h5PopMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

.field private h5SharePanelProvider:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

.field private h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

.field private h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

.field private h5_titleHDivider:Landroid/view/View;

.field private icontype:[Ljava/lang/String;

.field private ifImageTitle:Z

.field private ignorePageTitleFromCallbacks:Z

.field private isPageError:Z

.field private isPageFinished:Z

.field private isSwitchMode:Z

.field private isTinyApp:Z

.field private mContext:Landroid/content/Context;

.field private optionMenuPreventDefault:Z

.field private pageStarted:Z

.field private preventScrollTrans:Z

.field private preventSetTitleColor:Z

.field private readTitle:Z

.field private scrollWithTitleText:Z

.field private searchView:Landroid/view/View;

.field private switchThemePoint:I

.field private transTitle:Z

.field private transparentTitle:Ljava/lang/String;

.field private useSearch:Z

.field private version:Ljava/lang/String;

.field private viewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    .line 163
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "user"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "info"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->info:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "locate"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->locate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "add"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->plus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "scan"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->richscan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "search"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->search:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "settings"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "help"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->help:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "filter"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->filter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "mail"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->mail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "more"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->h5_titlebar_more_normal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "user"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->userw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "info"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->infow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "locate"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->locatew:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "add"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->plusw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "scan"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->richscanw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "search"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->searchw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "settings"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->settingsw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "help"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->helpw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "filter"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->filterw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "mail"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->mailw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    const-string/jumbo v1, "more"

    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->h5_white_titlebar_more_normal:I

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startParams"    # Landroid/os/Bundle;
    .param p3, "viewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    invoke-direct {p0}, Lipd;-><init>()V

    .line 112
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    .line 116
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->optionMenuPreventDefault:Z

    .line 122
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isPageFinished:Z

    .line 124
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isPageError:Z

    .line 134
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->useSearch:Z

    .line 136
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    .line 141
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventScrollTrans:Z

    .line 145
    iput v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalScale:I

    .line 147
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isSwitchMode:Z

    .line 153
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    .line 156
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventSetTitleColor:Z

    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->mContext:Landroid/content/Context;

    .line 192
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ignorePageTitleFromCallbacks:Z

    .line 193
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ifImageTitle:Z

    .line 194
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->pageStarted:Z

    .line 195
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->viewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 198
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 199
    .local v3, "viewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    if-eqz v3, :cond_0

    .line 200
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createTitleView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-nez v4, :cond_1

    .line 204
    new-instance v4, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    invoke-direct {v4, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 207
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentView:Landroid/view/View;

    .line 208
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentView:Landroid/view/View;

    const-string/jumbo v5, "h5_titlebar"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 210
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-interface {v4, v5, v7, v8}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 211
    const-string/jumbo v4, "navSearchBar_type"

    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "navSearchBar_type":Ljava/lang/String;
    const-string/jumbo v4, "packageLoadingShown"

    invoke-static {p2, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 215
    .local v2, "packageLoadingShown":Z
    if-eqz v2, :cond_2

    const-string/jumbo v4, "no"

    const-string/jumbo v5, "h5_newloadpage"

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 216
    const-string/jumbo v4, "walletAppName"

    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "appName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 221
    .end local v0    # "appName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    const-string/jumbo v4, "H5NavigationBar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "navSearchBar_type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->useSearch:Z

    .line 224
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4, p2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    .line 226
    :cond_3
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showClose(Z)V

    .line 227
    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-direct {v4, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 228
    const-string/jumbo v4, "isTinyApp"

    invoke-static {p2, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isTinyApp:Z

    .line 230
    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-direct {v4, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5PopMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 232
    const-string/jumbo v4, "appId"

    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->appId:Ljava/lang/String;

    .line 233
    const-string/jumbo v4, "appVersion"

    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->version:Ljava/lang/String;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->delayDy:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->delayDy:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalMaxScrollHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalScale:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->calAlphaValue(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchThemePoint:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchTheme(IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    return-object v0
.end method

.method private calAlphaValue(IIZ)V
    .locals 3
    .param p1, "finalMaxScrollHeight"    # I
    .param p2, "finalScale"    # I
    .param p3, "ifAutoMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 564
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->delayDy:I

    .line 565
    .local v0, "dimen":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 566
    if-gtz v0, :cond_1

    .line 567
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    .line 575
    :goto_1
    return-void

    .line 564
    .end local v0    # "dimen":I
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 569
    .restart local v0    # "dimen":I
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    goto :goto_1

    .line 572
    :cond_2
    div-int v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v1, v2

    .line 573
    .local v1, "orgAlpha":F
    const/high16 v2, 0x437f0000    # 255.0f

    div-float v2, v1, v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    goto :goto_1
.end method

.method private createIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1111
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    if-nez v2, :cond_0

    .line 1112
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return-object v0

    .line 1114
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1115
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1116
    .local v0, "bmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getDownloadImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1225
    move-object v1, p1

    .line 1226
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    if-eqz v2, :cond_0

    .line 1227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "entryUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    .end local v0    # "entryUrl":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getTinyPopMenuData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1321
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 1322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V

    .line 1324
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$7;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Liop;Landroid/content/Context;)V

    .line 1349
    :cond_0
    return-void
.end method

.method private getTitleWithLocale(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 471
    const-string/jumbo v3, "defaultTitle"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v3, "locale"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 476
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "defaultTitle_locale"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 477
    .local v1, "localeObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private loadImageAsync(Ljava/lang/String;I)V
    .locals 6
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1068
    const-string/jumbo v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1069
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1070
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1071
    const-string/jumbo v3, "H5NavigationBar"

    const-string/jumbo v4, "loadImageAsync from base64"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1108
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getSession()Lipc;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getSession()Lipc;

    move-result-object v3

    invoke-interface {v3}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1077
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getDownloadImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "finalImageUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "onlineHost"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "onlineHost":Ljava/lang/String;
    const-string/jumbo v3, "H5NavigationBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadImageAsync originUrl "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", finalImageUrl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", onlineHost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1081
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1082
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getSession()Lipc;

    move-result-object v3

    invoke-interface {v3}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)V

    invoke-interface {v3, v1, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    goto :goto_0

    .line 1096
    :cond_2
    new-instance v3, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)V

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lioi;)V

    goto/16 :goto_0
.end method

.method private needTinyPopMenu(Liop;)Z
    .locals 4
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1311
    if-nez p1, :cond_0

    .line 1312
    const/4 v0, 0x0

    .line 1317
    :goto_0
    return v0

    .line 1315
    :cond_0
    const-string/jumbo v1, "YES"

    .line 1316
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "usePresetPopmenu"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1317
    .local v0, "needTinyPopMenu":Z
    goto :goto_0
.end method

.method private setOptionImage(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 1120
    if-nez p1, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1123
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;ILandroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setOptionMenu(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 979
    .line 7121
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 980
    .local v11, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 981
    :cond_0
    sget-object v13, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v13}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 1065
    :cond_1
    :goto_0
    return-void

    .line 984
    :cond_2
    const-string/jumbo v13, "preventDefault"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->optionMenuPreventDefault:Z

    .line 985
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->optionMenuPreventDefault:Z

    if-nez v13, :cond_1

    .line 988
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v13, v11}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V

    .line 989
    const-string/jumbo v13, "tiny"

    const-string/jumbo v14, "bizType"

    invoke-static {v11, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 990
    .local v6, "isTinySence":Z
    const-string/jumbo v13, "reset"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v12

    .line 991
    .local v12, "reset":Z
    if-eqz v12, :cond_3

    if-nez v6, :cond_3

    .line 992
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->optionMenuPreventDefault:Z

    goto :goto_0

    .line 995
    :cond_3
    const-string/jumbo v13, "override"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v10

    .line 997
    .local v10, "override":Z
    const-string/jumbo v13, "menus"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 998
    .local v8, "menus":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 999
    if-eqz v10, :cond_8

    if-nez v6, :cond_8

    .line 1000
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_5

    const/4 v7, 0x2

    .line 1001
    .local v7, "menuSize":I
    :goto_1
    new-array v13, v7, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    .line 1002
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v7, :cond_9

    .line 1003
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 1004
    .local v9, "menusItem":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const-string/jumbo v14, "icontype"

    invoke-static {v9, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    .line 1005
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    if-eqz v13, :cond_7

    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    aget-object v14, v14, v3

    .line 1006
    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 1008
    .local v2, "currentColor":I
    const/high16 v13, -0x1000000

    or-int/2addr v2, v13

    .line 1009
    const v13, -0xeeeeef

    if-eq v2, v13, :cond_6

    .line 1010
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1002
    .end local v2    # "currentColor":I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1000
    .end local v3    # "i":I
    .end local v7    # "menuSize":I
    .end local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    goto :goto_1

    .line 1012
    .restart local v2    # "currentColor":I
    .restart local v3    # "i":I
    .restart local v7    # "menuSize":I
    .restart local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    .line 1015
    .end local v2    # "currentColor":I
    :cond_7
    const-string/jumbo v13, "icon"

    invoke-static {v9, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    .local v4, "icon":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1017
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->loadImageAsync(Ljava/lang/String;I)V

    goto :goto_3

    .line 1022
    .end local v3    # "i":I
    .end local v4    # "icon":Ljava/lang/String;
    .end local v7    # "menuSize":I
    .end local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 1023
    .restart local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    .line 1024
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "stupid"

    aput-object v15, v13, v14

    .line 1025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v14, 0x1

    const-string/jumbo v15, "icontype"

    invoke-static {v9, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1026
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    if-eqz v13, :cond_b

    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    .line 1027
    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1028
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 1029
    .restart local v2    # "currentColor":I
    const/high16 v13, -0x1000000

    or-int/2addr v2, v13

    .line 1030
    const v13, -0xeeeeef

    if-eq v2, v13, :cond_a

    .line 1031
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1064
    .end local v2    # "currentColor":I
    .end local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    :goto_4
    const-string/jumbo v13, "success"

    const-string/jumbo v14, "true"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1033
    .restart local v2    # "currentColor":I
    .restart local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    goto :goto_4

    .line 1036
    .end local v2    # "currentColor":I
    :cond_b
    const-string/jumbo v13, "icon"

    invoke-static {v9, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1037
    .restart local v4    # "icon":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1038
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->loadImageAsync(Ljava/lang/String;I)V

    goto :goto_4

    .line 1043
    .end local v4    # "icon":Ljava/lang/String;
    .end local v9    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    :cond_c
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    .line 1044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "icontype"

    invoke-static {v11, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1045
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v14, 0x1

    const-string/jumbo v15, "stupid"

    aput-object v15, v13, v14

    .line 1046
    if-eqz v6, :cond_d

    const/4 v5, 0x1

    .line 1047
    .local v5, "index":I
    :goto_5
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    if-eqz v13, :cond_f

    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f

    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    .line 1048
    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1049
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 1050
    .restart local v2    # "currentColor":I
    const/high16 v13, -0x1000000

    or-int/2addr v2, v13

    .line 1051
    const v13, -0xeeeeef

    if-eq v2, v13, :cond_e

    .line 1052
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_4

    .line 1046
    .end local v2    # "currentColor":I
    .end local v5    # "index":I
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 1054
    .restart local v2    # "currentColor":I
    .restart local v5    # "index":I
    :cond_e
    sget-object v13, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_4

    .line 1057
    .end local v2    # "currentColor":I
    :cond_f
    const-string/jumbo v13, "icon"

    invoke-static {v11, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1058
    .restart local v4    # "icon":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1059
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->loadImageAsync(Ljava/lang/String;I)V

    goto/16 :goto_4
.end method

.method private setPageTitle(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 951
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 952
    const-string/jumbo v3, "H5NavigationBar"

    const-string/jumbo v4, "case 1, page title ignored!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :goto_0
    return-void

    .line 956
    :cond_0
    const-string/jumbo v3, "H5NavigationBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readTitle:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->readTitle:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->readTitle:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ignorePageTitleFromCallbacks:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ifImageTitle:Z

    if-nez v3, :cond_3

    .line 958
    const-string/jumbo v3, "title"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 961
    const-string/jumbo v3, "H5NavigationBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not show"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_1
    :try_start_0
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->defaultTitle:Ljava/lang/String;

    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 969
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "H5NavigationBar"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->defaultTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string/jumbo v3, "H5NavigationBar"

    const-string/jumbo v4, "case 2, page title ignored!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setTitle(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 11
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 1134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    const-string/jumbo v8, "fromJS"

    invoke-static {p1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1138
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ignorePageTitleFromCallbacks:Z

    .line 1141
    :cond_2
    const-string/jumbo v8, "image"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1142
    .local v7, "titleImg":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1143
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ifImageTitle:Z

    .line 1144
    const-string/jumbo v8, "contentDesc"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "contentDesc":Ljava/lang/String;
    const-string/jumbo v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1147
    const-string/jumbo v8, "H5NavigationBar"

    const-string/jumbo v9, "setTitle image type base64"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1149
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1150
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v8, v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getSession()Lipc;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getSession()Lipc;

    move-result-object v8

    invoke-interface {v8}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1156
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1157
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getDownloadImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, "finalImageUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "onlineHost"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, "onlineHost":Ljava/lang/String;
    const-string/jumbo v8, "H5NavigationBar"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setTitle image type originUrl "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", finalImageUrl "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", onlineHost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1162
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getSession()Lipc;

    move-result-object v8

    invoke-interface {v8}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

    invoke-direct {v9, p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Ljava/lang/String;)V

    invoke-interface {v8, v2, v9}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    goto/16 :goto_0

    .line 1181
    :cond_4
    new-instance v8, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6;

    invoke-direct {v8, p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImageKeepSize(Ljava/lang/String;Lioi;)V

    goto/16 :goto_0

    .line 1199
    .end local v1    # "contentDesc":Ljava/lang/String;
    .end local v2    # "finalImageUrl":Ljava/lang/String;
    .end local v4    # "onlineHost":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "H5NavigationBar"

    const-string/jumbo v9, "setTitle text type"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v8, "title"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1201
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1202
    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->pageStarted:Z

    if-nez v8, :cond_6

    .line 1203
    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->defaultTitle:Ljava/lang/String;

    .line 1207
    :cond_6
    const/4 v5, 0x0

    .line 1208
    .local v5, "subtitle":Ljava/lang/String;
    const-string/jumbo v8, "subtitle"

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1209
    const-string/jumbo v8, "subtitle"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1211
    :cond_7
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v8, v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 1212
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v8, v5}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setSubTitle(Ljava/lang/String;)V

    .line 1213
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v8, v6}, Liop;->setTitle(Ljava/lang/String;)V

    .line 1215
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1216
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.alipay.mobile.h5container.titleRefreshed"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string/jumbo v8, "title"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    const-string/jumbo v9, "url"

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    const-string/jumbo v8, "H5NavigationBar"

    const-string/jumbo v9, "send page finished broadcast."

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v3}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1218
    :cond_8
    const-string/jumbo v8, ""

    goto :goto_1
.end method

.method private showBackButton(ZLiny;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 944
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackButton(Z)V

    .line 945
    if-eqz p2, :cond_0

    .line 946
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 948
    :cond_0
    return-void
.end method

.method private showClose(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 919
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showCloseButton(Z)V

    .line 920
    return-void
.end method

.method private showNavOptions(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 935
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showOptionMenu(Z)V

    .line 936
    return-void
.end method

.method private showNavOptions(ZLiny;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showNavOptions(Z)V

    .line 940
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 941
    return-void
.end method

.method private showTitleBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 923
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    return-void

    :cond_0
    move v0, v2

    .line 923
    goto :goto_0

    :cond_1
    move v1, v2

    .line 924
    goto :goto_1
.end method

.method private showTitleBar(ZLiny;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showTitleBar(Z)V

    .line 929
    if-eqz p2, :cond_0

    .line 930
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 932
    :cond_0
    return-void
.end method

.method private showTitleLoading(ZLiny;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 912
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showTitleLoading(Z)V

    .line 913
    if-eqz p2, :cond_0

    .line 914
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p2, v0, v1}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 916
    :cond_0
    return-void
.end method

.method private switchIconFontToBlueTheme()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1294
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1296
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 1297
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "stupid"

    .line 1298
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1299
    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->blueIconFontMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    .end local v0    # "i":I
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private switchIconFontToWhiteTheme()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1281
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1283
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->icontype:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 1284
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "stupid"

    .line 1285
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1286
    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->whiteIconFontMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->createIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V

    .line 1282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    .end local v0    # "i":I
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private switchTheme(IIZ)V
    .locals 6
    .param p1, "currentColor"    # I
    .param p2, "switchThemePoint"    # I
    .param p3, "ifAutoMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    if-eqz p3, :cond_4

    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->delayDy:I

    .line 518
    .local v0, "dimen":I
    :goto_0
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventScrollTrans:Z

    if-nez v3, :cond_3

    .line 519
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 520
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 522
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 523
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    .line 525
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 546
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 547
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 548
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    if-eqz v3, :cond_3

    .line 549
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v3, :cond_3

    .line 550
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 551
    .local v1, "mainTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 552
    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 554
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v2

    .line 555
    .local v2, "subTitle":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 556
    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 561
    .end local v1    # "mainTitle":Landroid/widget/TextView;
    .end local v2    # "subTitle":Landroid/widget/TextView;
    :cond_3
    return-void

    .line 517
    .end local v0    # "dimen":I
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 532
    .restart local v0    # "dimen":I
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 533
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToWhiteTheme()V

    .line 535
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 536
    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    const v4, 0x3e19999a    # 0.15f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private transparentTitleBar(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "transparentTitle"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 488
    const-string/jumbo v2, "auto"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V

    .line 508
    :cond_2
    const-string/jumbo v2, "custom"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const-string/jumbo v2, "backBtnImage"

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "backBtnImage":Ljava/lang/String;
    const-string/jumbo v2, "titleColor"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 511
    .local v1, "titleColor":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackCloseBtnImage(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleTxtColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getH5SharePanelProvider()Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5SharePanelProvider:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5SharePanelProvider:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5SharePanelProvider:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 22
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 730
    .line 3065
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 3121
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 732
    .local v10, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v18, "showTitlebar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 734
    const-string/jumbo v18, "hideTitlebar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 736
    const-string/jumbo v18, "showOptionMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 737
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showNavOptions(ZLiny;)V

    .line 908
    :cond_0
    :goto_0
    const/16 v18, 0x1

    :goto_1
    return v18

    .line 738
    :cond_1
    const-string/jumbo v18, "setOptionMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, "setOptionMenuItem"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 739
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionMenu(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 740
    :cond_3
    const-string/jumbo v18, "hideOptionMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 741
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showNavOptions(ZLiny;)V

    goto :goto_0

    .line 742
    :cond_4
    const-string/jumbo v18, "showBackButton"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 743
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showBackButton(ZLiny;)V

    goto :goto_0

    .line 744
    :cond_5
    const-string/jumbo v18, "hideBackButton"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 745
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showBackButton(ZLiny;)V

    goto :goto_0

    .line 746
    :cond_6
    const-string/jumbo v18, "setTitle"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 4121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v18, v0

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitle(Lcom/alibaba/fastjson/JSONObject;)V

    .line 748
    const-string/jumbo v18, "success"

    const-string/jumbo v19, "true"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 749
    :cond_7
    const-string/jumbo v18, "readTitle"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 750
    const-string/jumbo v18, "readTitle"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->readTitle:Z

    goto/16 :goto_0

    .line 752
    :cond_8
    const-string/jumbo v18, "showTips"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentView:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/ViewGroup;

    .line 5121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v20, v0

    .line 755
    const-string/jumbo v21, "tip_content"

    .line 754
    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 753
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Tip;->showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    :cond_9
    const-string/jumbo v18, "h5PageShowClose"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    sget-object v18, Liov$a;->E:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 757
    :cond_a
    const-string/jumbo v18, "show"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v14

    .line 758
    .local v14, "show":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showClose(Z)V

    goto/16 :goto_0

    .line 759
    .end local v14    # "show":Z
    :cond_b
    const-string/jumbo v18, "showTitleLoading"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 760
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showTitleLoading(ZLiny;)V

    goto/16 :goto_0

    .line 761
    :cond_c
    const-string/jumbo v18, "hideTitleLoading"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 762
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showTitleLoading(ZLiny;)V

    goto/16 :goto_0

    .line 763
    :cond_d
    const-string/jumbo v18, "setToolbarMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    const-string/jumbo v18, "showPopMenu"

    .line 764
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 766
    :cond_e
    const-string/jumbo v18, "showPopMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5PopMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setIsShowPopMenu(Z)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5PopMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->pageStarted:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 776
    :goto_2
    const-string/jumbo v18, "showPopMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5PopMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getPopAnchor()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->showMenu(Landroid/view/View;)V

    .line 779
    :cond_f
    const-string/jumbo v18, "success"

    const-string/jumbo v19, "true"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 770
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setIsShowPopMenu(Z)V

    .line 771
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isTinyApp:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->clearMenuList()V

    .line 774
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->pageStarted:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    goto :goto_2

    .line 780
    :cond_12
    const-string/jumbo v18, "setTitleColor"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 6121
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 783
    .local v11, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v18, "color"

    const/high16 v19, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v16

    .line 784
    .local v16, "titleBarColor":I
    const-string/jumbo v18, "reset"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v12

    .line 785
    .local v12, "reset":Z
    const-string/jumbo v18, "resetTransparent"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v13

    .line 786
    .local v13, "resetTransparent":Z
    const/high16 v18, -0x1000000

    or-int v16, v16, v18

    .line 787
    if-eqz v11, :cond_18

    const-string/jumbo v18, "color"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    if-nez v12, :cond_18

    if-nez v13, :cond_18

    .line 789
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setContentBgViewColor(I)V

    .line 790
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventSetTitleColor:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 791
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToWhiteTheme()V

    .line 800
    :cond_13
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 803
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 806
    :cond_15
    if-eqz p2, :cond_16

    .line 807
    const-string/jumbo v18, "success"

    const-string/jumbo v19, "true"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 809
    :cond_16
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 795
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 796
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    goto :goto_3

    .line 812
    :cond_18
    if-eqz v12, :cond_1a

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Lcom/alipay/mobile/nebula/view/H5TitleView;->resetTitleColor(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, -0x1000000

    const-string/jumbo v20, "#C6C8C9"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    or-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundColor(I)V

    .line 817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 821
    :cond_19
    if-eqz p2, :cond_0

    .line 822
    const-string/jumbo v18, "success"

    const-string/jumbo v19, "true"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 824
    :cond_1a
    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToWhiteTheme()V

    .line 827
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 830
    :cond_1b
    if-eqz p2, :cond_0

    .line 831
    const-string/jumbo v18, "success"

    const-string/jumbo v19, "true"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 834
    :cond_1c
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 835
    .local v7, "info":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v18, "error"

    const-string/jumbo v19, "2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 839
    .end local v7    # "info":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "reset":Z
    .end local v13    # "resetTransparent":Z
    .end local v16    # "titleBarColor":I
    :cond_1d
    const-string/jumbo v18, "h5PageErrorForTitlebar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 842
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->isInWallet()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    .line 845
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isPageError:Z

    .line 846
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 848
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventScrollTrans:Z

    goto/16 :goto_0

    .line 852
    :cond_1e
    const-string/jumbo v18, "setBarBottomLineColor"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 854
    const-string/jumbo v18, "color"

    const/high16 v19, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 856
    .local v4, "color":I
    const/high16 v18, -0x1000000

    or-int v4, v4, v18

    .line 857
    const-string/jumbo v18, "H5NavigationBar"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "setBarBottomLineColor color is "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 860
    .end local v4    # "color":I
    :cond_1f
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    goto/16 :goto_0

    .line 861
    :cond_20
    const-string/jumbo v18, "setTransparentTitle"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 862
    const-string/jumbo v18, "transparentTitle"

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 863
    .local v17, "transparentTitleType":Ljava/lang/String;
    const-string/jumbo v18, "H5NavigationBar"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "setTransparentTitle type "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v15

    .line 865
    .local v15, "startParams":Landroid/os/Bundle;
    const-string/jumbo v18, "transparentTitle"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 866
    .local v9, "originType":Ljava/lang/String;
    const-string/jumbo v18, "H5NavigationBar"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "setTransparentTitle originType "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string/jumbo v18, "transparentTitle"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->viewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    .line 869
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isSwitchMode:Z

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Liop;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->viewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 873
    :cond_21
    invoke-interface/range {p2 .. p2}, Liny;->sendSuccess()V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    const-string/jumbo v19, "h5_titlebar_transstate_change"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 877
    .end local v9    # "originType":Ljava/lang/String;
    .end local v15    # "startParams":Landroid/os/Bundle;
    .end local v17    # "transparentTitleType":Ljava/lang/String;
    :cond_22
    const-string/jumbo v18, "optionMenu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 879
    const-string/jumbo v18, "fromMenu"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    .line 882
    .local v6, "fromMenu":Z
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 883
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Liop;->getBridge()Linx;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v5, v1}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 887
    if-eqz v6, :cond_0

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getH5SharePanelProvider()Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    move-result-object v18

    if-eqz v18, :cond_23

    .line 890
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->optionMenuPreventDefault:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getH5SharePanelProvider()Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isPageFinished:Z

    move/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;->showSharePanel(Liop;Z)V

    goto/16 :goto_0

    .line 894
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getPopAnchor()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->showMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 897
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "fromMenu":Z
    :cond_24
    const-string/jumbo v18, "showDisClaimer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 898
    const-string/jumbo v18, "mode"

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 899
    .local v8, "mode":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_25

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_27

    :cond_25
    const/4 v14, 0x1

    .line 900
    .restart local v14    # "show":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showTitleDisclaimer(Z)V

    .line 901
    if-eqz v14, :cond_26

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v18

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v19

    const/high16 v20, 0x43480000    # 200.0f

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 904
    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 899
    .end local v14    # "show":Z
    :cond_27
    const/4 v14, 0x0

    goto :goto_4

    .line 906
    .end local v8    # "mode":I
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 20
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 615
    .line 2065
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2121
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 618
    .local v8, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "h5PageStarted"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 619
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->pageStarted:Z

    .line 620
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->ignorePageTitleFromCallbacks:Z

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v13}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "isTinyApp"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_0

    .line 622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackButton(Z)V

    .line 625
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v13}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v9

    .line 626
    .local v9, "params":Landroid/os/Bundle;
    const-string/jumbo v13, "appType"

    const/4 v14, 0x2

    invoke-static {v9, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v3

    .line 627
    .local v3, "appType":I
    const-string/jumbo v13, "appId"

    invoke-static {v9, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "appId":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isPublicAppId(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x2

    if-ne v3, v13, :cond_4

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v14, "ppchatShare"

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 631
    const-string/jumbo v13, "H5NavigationBar"

    const-string/jumbo v14, "Share menu has been already existed, won\'t bother to add more"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v13, 0x1

    .line 714
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appType":I
    .end local v9    # "params":Landroid/os/Bundle;
    :goto_0
    return v13

    .line 636
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "appType":I
    .restart local v9    # "params":Landroid/os/Bundle;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v14, "shareFriend"

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 640
    .local v10, "resources":Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 641
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v13, v13, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 642
    const-string/jumbo v14, "copy"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v13, v13, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v13, v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string/jumbo v14, "favorites"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v13, v13, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    .line 643
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v13, v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 644
    :cond_2
    move v11, v6

    .line 649
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v14, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_menu_share:I

    .line 650
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "shareFriend"

    sget v17, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_share_friend:I

    .line 652
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 649
    invoke-virtual {v13, v11, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V

    .line 714
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appType":I
    .end local v6    # "i":I
    .end local v9    # "params":Landroid/os/Bundle;
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "size":I
    :cond_4
    :goto_2
    const/4 v13, 0x0

    goto :goto_0

    .line 641
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "appType":I
    .restart local v6    # "i":I
    .restart local v9    # "params":Landroid/os/Bundle;
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "size":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 657
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appType":I
    .end local v6    # "i":I
    .end local v9    # "params":Landroid/os/Bundle;
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "size":I
    :cond_6
    const-string/jumbo v13, "h5PageReceivedTitle"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 658
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPageTitle(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    .line 659
    :cond_7
    const-string/jumbo v13, "h5PageFinished"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 660
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isPageFinished:Z

    .line 661
    const-string/jumbo v13, "pageUpdated"

    const/4 v14, 0x0

    invoke-static {v8, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    .line 662
    .local v7, "pageUpdated":Z
    if-eqz v7, :cond_8

    .line 663
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPageTitle(Lcom/alibaba/fastjson/JSONObject;)V

    .line 665
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "currentTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->defaultTitle:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->defaultTitle:Ljava/lang/String;

    invoke-interface {v13, v14}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 669
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isPageError:Z

    if-nez v13, :cond_4

    .line 671
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    invoke-interface {v13}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "hasH5Pkg"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 672
    .local v5, "hasPackage":Z
    const-string/jumbo v13, "H5NavigationBar"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "transTitle appid "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->appId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", appVersion "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->version:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", hasPackage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    const-string/jumbo v14, "custom"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v13}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToWhiteTheme()V

    goto/16 :goto_2

    .line 681
    .end local v4    # "currentTitle":Ljava/lang/CharSequence;
    .end local v5    # "hasPackage":Z
    .end local v7    # "pageUpdated":Z
    :cond_a
    const-string/jumbo v13, "showFavorites"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v14, "favorites"

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 683
    const-string/jumbo v13, "H5NavigationBar"

    const-string/jumbo v14, "favorites menu has been already existed"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 686
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 688
    .restart local v10    # "resources":Landroid/content/res/Resources;
    const-string/jumbo v12, ""

    .line 689
    .local v12, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v13, v13, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v13, v13, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->menuList:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v12, v13, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    .line 694
    :cond_c
    const-string/jumbo v13, "copy"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const/4 v14, 0x0

    new-instance v15, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v16, Lcom/alipay/mobile/nebula/R$string;->h5_menu_favorites:I

    .line 696
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "favorites"

    sget v18, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_favorites:I

    .line 698
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 695
    invoke-virtual {v13, v14, v15}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V

    .line 700
    :cond_d
    const-string/jumbo v13, "shareFriend"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const/4 v14, 0x1

    new-instance v15, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v16, Lcom/alipay/mobile/nebula/R$string;->h5_menu_favorites:I

    .line 702
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "favorites"

    sget v18, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_favorites:I

    .line 704
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 701
    invoke-virtual {v13, v14, v15}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V

    .line 707
    :cond_e
    const-string/jumbo v13, "status"

    const-string/jumbo v14, "true"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 708
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v12    # "tag":Ljava/lang/String;
    :cond_f
    const-string/jumbo v13, "hideFavorites"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v14, "favorites"

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string/jumbo v14, "favorites"

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 711
    const-string/jumbo v13, "status"

    const-string/jumbo v14, "true"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 583
    const-string/jumbo v0, "showTitlebar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 584
    const-string/jumbo v0, "hideTitlebar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 585
    const-string/jumbo v0, "showTitleLoading"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, "hideTitleLoading"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 587
    const-string/jumbo v0, "showOptionMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 588
    const-string/jumbo v0, "hideOptionMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 589
    const-string/jumbo v0, "showBackButton"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "hideBackButton"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 591
    const-string/jumbo v0, "setOptionMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v0, "setOptionMenuItem"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, "setTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v0, "readTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v0, "setToolbarMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 596
    const-string/jumbo v0, "showPopMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 597
    const-string/jumbo v0, "showTips"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 598
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v0, "h5PageShowClose"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 601
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 602
    const-string/jumbo v0, "showFavorites"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v0, "hideFavorites"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 604
    const-string/jumbo v0, "setTitleColor"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 605
    const-string/jumbo v0, "optionMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 606
    const-string/jumbo v0, "h5PageErrorForTitlebar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 607
    const-string/jumbo v0, "setBarBottomLineColor"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 608
    const-string/jumbo v0, "setTransparentTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 609
    sget-object v0, Liov$a;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 610
    const-string/jumbo v0, "showDisClaimer"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->releaseViewList()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->onRelease()V

    .line 726
    :cond_1
    return-void
.end method

.method public setContentBgViewColor(I)V
    .locals 3
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1265
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1267
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/search/H5SearchView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/search/H5SearchView;

    .line 1268
    .local v0, "h5SearchViewProvider":Lcom/alipay/mobile/nebula/search/H5SearchView;
    if-eqz v0, :cond_0

    .line 1269
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->setSearchBarColor(I)V

    .line 1274
    .end local v0    # "h5SearchViewProvider":Lcom/alipay/mobile/nebula/search/H5SearchView;
    :cond_0
    return-void
.end method

.method public setHdivider(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    .line 1278
    return-void
.end method

.method public setPage(Liop;)V
    .locals 28
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 247
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventSetTitleColor:Z

    .line 248
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Liop;->setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V

    .line 250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->useSearch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 251
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v25

    const-class v26, Lcom/alipay/mobile/nebula/search/H5InputListen;

    .line 252
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;-><init>(Liop;)V

    invoke-virtual/range {v25 .. v27}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5NavMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setPage(Liop;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5PopMenu:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setPage(Liop;)V

    .line 258
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->needTinyPopMenu(Liop;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v14

    .line 260
    .local v14, "optionMenuContainer":Landroid/view/View;
    if-eqz v14, :cond_1

    .line 261
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getTinyPopMenuData(Landroid/content/Context;)V

    .line 266
    .end local v14    # "optionMenuContainer":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setH5Page(Liop;)V

    .line 267
    invoke-interface/range {p1 .. p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v15

    .line 268
    .local v15, "params":Landroid/os/Bundle;
    const-string/jumbo v25, "showOptionMenu"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v24

    .line 270
    .local v24, "visible":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isSwitchMode:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 271
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showNavOptions(Z)V

    .line 273
    :cond_3
    const-string/jumbo v25, "readTitle"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->readTitle:Z

    .line 275
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 276
    .local v9, "defaultTitleParam":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v25, "titleImage"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "defaultTitle":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_15

    .line 278
    const-string/jumbo v25, "image"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v25, "fromJS"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitle(Lcom/alibaba/fastjson/JSONObject;)V

    .line 289
    :cond_4
    :goto_0
    const-string/jumbo v25, "showTitleBar"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v20

    .line 291
    .local v20, "showTitleBar":Z
    if-nez v20, :cond_5

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->isInWallet()Z

    move-result v25

    if-nez v25, :cond_5

    .line 292
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showTitleBar(Z)V

    .line 294
    :cond_5
    const-string/jumbo v25, "showTitleLoading"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v21

    .line 296
    .local v21, "showTitleLoading":Z
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showTitleLoading(ZLiny;)V

    .line 299
    const-string/jumbo v25, ""

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v13

    .line 300
    .local v13, "mode":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v13, v0, :cond_6

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v13, v0, :cond_7

    .line 301
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showTitleDisclaimer(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v25

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v26

    const/high16 v27, 0x43480000    # 200.0f

    invoke-static/range {v26 .. v27}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 305
    :cond_7
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    .line 306
    if-eqz v15, :cond_b

    const-string/jumbo v25, "transparentTitle"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 307
    const-string/jumbo v25, "transparentTitle"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 309
    const-string/jumbo v25, "always"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_8

    const-string/jumbo v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 310
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_16

    :cond_8
    const/16 v25, 0x1

    :goto_1
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    .line 311
    const-string/jumbo v25, "custom"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 312
    const-string/jumbo v25, "backBtnImage"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    const-string/jumbo v25, "backBtnTextColor"

    .line 313
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    const-string/jumbo v25, "titleColor"

    .line 314
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 315
    const-string/jumbo v25, "backBtnImage"

    .line 316
    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "bbi":Ljava/lang/String;
    const-string/jumbo v25, "backBtnTextColor"

    .line 318
    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 319
    .local v4, "bbc":I
    const-string/jumbo v25, "titleColor"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v22

    .line 320
    .local v22, "tc":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    const-string/jumbo v25, "default"

    .line 321
    move-object/from16 v0, v25

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_17

    :cond_9
    const/high16 v25, -0x1000000

    move/from16 v0, v25

    if-ne v4, v0, :cond_17

    const/high16 v25, -0x1000000

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 324
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    .line 330
    .end local v4    # "bbc":I
    .end local v5    # "bbi":Ljava/lang/String;
    .end local v22    # "tc":I
    :cond_a
    :goto_2
    const-string/jumbo v25, "H5NavigationBar"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "transTitle is "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_b
    const-string/jumbo v25, "titleBarColor"

    const/high16 v26, -0x1000000

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v23

    .line 334
    .local v23, "titleBarColor":I
    const/high16 v25, -0x1000000

    or-int v23, v23, v25

    .line 335
    if-eqz v15, :cond_c

    const-string/jumbo v25, "titleBarColor"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 337
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setContentBgViewColor(I)V

    .line 338
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToWhiteTheme()V

    .line 346
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    .line 347
    .local v7, "currentColor":I
    const/high16 v25, -0x1000000

    or-int v7, v7, v25

    .line 348
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "auto"

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 351
    const-string/jumbo v25, "scrollDistance"

    .line 352
    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalMaxScrollHeight:I

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalMaxScrollHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 354
    .local v16, "scale":I
    if-nez v16, :cond_d

    .line 355
    const/16 v16, 0x1

    .line 357
    :cond_d
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalScale:I

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalMaxScrollHeight:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    div-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchThemePoint:I

    .line 359
    const-string/jumbo v25, "H5NavigationBar"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "transparentTitleBar finalMaxScrollHeight is "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalMaxScrollHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", switchThemePoint is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchThemePoint:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventScrollTrans:Z

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalMaxScrollHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->finalScale:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->calAlphaValue(IIZ)V

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchThemePoint:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v7, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchTheme(IIZ)V

    .line 364
    invoke-interface/range {p1 .. p1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->delayDy:I

    .line 365
    const-string/jumbo v25, "YES"

    const-string/jumbo v26, "transparentTitleTextAuto"

    .line 366
    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 365
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 367
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    .line 377
    .end local v16    # "scale":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getHdividerInTitle()Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-interface/range {p1 .. p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v25

    const-string/jumbo v26, "hasH5Pkg"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v12

    .line 382
    .local v12, "hasPackage":Z
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v7, v0, :cond_1b

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 401
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v15}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitleBar(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 437
    .end local v12    # "hasPackage":Z
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/Nebula;->useH5StatusBar(Liop;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 439
    const/high16 v6, 0x4f000000

    .line 441
    .local v6, "color":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v25

    const-class v26, Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;

    .line 442
    .local v11, "h5TransStatusBarColorProvider":Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;
    if-eqz v11, :cond_10

    .line 443
    invoke-interface {v11}, Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;->getColor()I

    move-result v6

    .line 446
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->openTranslucentStatusBarSupport(I)V

    .line 448
    .end local v6    # "color":I
    .end local v11    # "h5TransStatusBarColorProvider":Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;
    :cond_11
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isSwitchMode:Z

    .line 451
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->needTinyPopMenu(Liop;)Z

    move-result v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v25

    const-string/jumbo v26, "isTinyApp"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v25, v0

    .line 452
    invoke-interface/range {v25 .. v25}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v25

    const-string/jumbo v26, "isPrerender"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v25

    if-nez v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 453
    const/16 v19, 0x0

    .line 454
    .local v19, "sessionSize":I
    invoke-interface/range {p1 .. p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v25

    const-string/jumbo v26, "sessionId"

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 455
    .local v17, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v10

    .line 456
    .local v10, "h5Session":Lipc;
    if-eqz v10, :cond_12

    invoke-interface {v10}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v25

    if-eqz v25, :cond_12

    .line 458
    invoke-interface {v10}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v18

    .line 459
    .local v18, "sessionPagesWithOutPrerender":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->size()I

    move-result v19

    .line 462
    .end local v18    # "sessionPagesWithOutPrerender":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    :cond_12
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    const-string/jumbo v25, "subtab"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5Page:Liop;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v26

    const-string/jumbo v27, "fragmentType"

    invoke-static/range {v26 .. v27}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 463
    :cond_13
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->showBackButton(ZLiny;)V

    .line 468
    .end local v10    # "h5Session":Lipc;
    .end local v17    # "sessionId":Ljava/lang/String;
    .end local v19    # "sessionSize":I
    :cond_14
    return-void

    .line 282
    .end local v7    # "currentColor":I
    .end local v13    # "mode":I
    .end local v20    # "showTitleBar":Z
    .end local v21    # "showTitleLoading":Z
    .end local v23    # "titleBarColor":I
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getTitleWithLocale(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 284
    const-string/jumbo v25, "title"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v25, "fromJS"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitle(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 310
    .restart local v13    # "mode":I
    .restart local v20    # "showTitleBar":Z
    .restart local v21    # "showTitleLoading":Z
    :cond_16
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v4    # "bbc":I
    .restart local v5    # "bbi":Ljava/lang/String;
    .restart local v22    # "tc":I
    :cond_17
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transTitle:Z

    goto/16 :goto_2

    .line 342
    .end local v4    # "bbc":I
    .end local v5    # "bbi":Ljava/lang/String;
    .end local v22    # "tc":I
    .restart local v23    # "titleBarColor":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    goto/16 :goto_3

    .line 369
    .restart local v7    # "currentColor":I
    .restart local v16    # "scale":I
    :cond_19
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    goto/16 :goto_4

    .line 373
    .end local v16    # "scale":I
    :cond_1a
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    .line 374
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventScrollTrans:Z

    .line 375
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    goto/16 :goto_4

    .line 385
    .restart local v12    # "hasPackage":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    const-string/jumbo v27, "#C6C8C9"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    or-int v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundColor(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->transparentTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "custom"

    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 387
    const-string/jumbo v25, "H5NavigationBar"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "transTitle appid "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->appId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", appVersion "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->version:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", hasPackage "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz v12, :cond_1c

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToWhiteTheme()V

    goto/16 :goto_5

    .line 393
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->isSwitchMode:Z

    move/from16 v25, v0

    if-nez v25, :cond_e

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    goto/16 :goto_5

    .line 403
    .end local v12    # "hasPackage":Z
    :cond_1d
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    .line 405
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v7, v0, :cond_1e

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 412
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 414
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventScrollTrans:Z

    .line 415
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    .line 418
    const-string/jumbo v25, "backBtnImage"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    const-string/jumbo v25, "backBtnTextColor"

    .line 419
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    const-string/jumbo v25, "titleColor"

    .line 420
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 421
    const-string/jumbo v25, "backBtnImage"

    .line 422
    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .restart local v5    # "bbi":Ljava/lang/String;
    const-string/jumbo v25, "backBtnTextColor"

    .line 424
    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 425
    .restart local v4    # "bbc":I
    const-string/jumbo v25, "titleColor"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v22

    .line 426
    .restart local v22    # "tc":I
    const-string/jumbo v25, "default"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_f

    const/high16 v25, -0x1000000

    move/from16 v0, v25

    if-eq v4, v0, :cond_f

    const/high16 v25, -0x1000000

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 429
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->preventSetTitleColor:Z

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackCloseBtnImage(Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleTxtColor(I)V

    goto/16 :goto_6

    .line 408
    .end local v4    # "bbc":I
    .end local v5    # "bbi":Ljava/lang/String;
    .end local v22    # "tc":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    move-object/from16 v25, v0

    const/high16 v26, -0x1000000

    const-string/jumbo v27, "#C6C8C9"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    or-int v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundColor(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->switchIconFontToBlueTheme()V

    goto/16 :goto_7
.end method

.method public setTitleAlpha()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1238
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->contentBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1239
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5_titleHDivider:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1240
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1241
    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    const v3, 0x3e19999a    # 0.15f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 1242
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1248
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->scrollWithTitleText:Z

    if-eqz v2, :cond_2

    .line 1249
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v2, :cond_2

    .line 1250
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 1251
    .local v0, "mainTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 1252
    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1254
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h5TitleView:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 1255
    .local v1, "subTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 1256
    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->alpha:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1260
    .end local v0    # "mainTitle":Landroid/widget/TextView;
    .end local v1    # "subTitle":Landroid/widget/TextView;
    :cond_2
    return-void

    .line 1244
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->searchView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
