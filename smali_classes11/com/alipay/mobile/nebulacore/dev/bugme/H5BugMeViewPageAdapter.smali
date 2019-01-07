.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;
.super Lgl;
.source "H5BugMeViewPageAdapter.java"


# instance fields
.field private mDebugConsole:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V
    .locals 0
    .param p1, "console"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 15
    invoke-direct {p0}, Lgl;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;->mDebugConsole:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 17
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;->mDebugConsole:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->getTabSize()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->LOG_KEYS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;->mDebugConsole:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->getSubContentView(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
