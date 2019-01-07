.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "H5TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V
    .locals 1
    .param p1, "tabLayout"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 212
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 215
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 219
    .local v0, "tabLayout":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setScrollPosition(IF)V

    .line 223
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 227
    .local v0, "tabLayout":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getTabAt(I)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->selectTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 231
    :cond_0
    return-void
.end method
