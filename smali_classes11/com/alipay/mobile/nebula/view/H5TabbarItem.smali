.class public Lcom/alipay/mobile/nebula/view/H5TabbarItem;
.super Ljava/lang/Object;
.source "H5TabbarItem.java"


# instance fields
.field private badgeArea:Landroid/widget/TextView;

.field private iconArea:Landroid/widget/TextView;

.field private rootView:Landroid/widget/RelativeLayout;

.field private smallbadgeArea:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_tabbaritem:I

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->iconArea:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->badgeArea:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_badge_small:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->smallbadgeArea:Landroid/widget/ImageView;

    .line 27
    return-void
.end method


# virtual methods
.method public getBadgeAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->badgeArea:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->iconArea:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSmallBadgeAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->smallbadgeArea:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
