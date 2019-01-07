.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "H5TabLayout.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 194
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .prologue
    .line 204
    return-void
.end method

.method public onTabSelected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 198
    return-void
.end method

.method public onTabUnselected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .prologue
    .line 201
    return-void
.end method
