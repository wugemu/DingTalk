.class public Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;
.super Landroid/widget/LinearLayout;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;,
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

.field private c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

.field private f:Landroid/widget/LinearLayout;

.field public mMenuListView:Lcom/alipay/mobile/verifyidentity/ui/APListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    .line 39
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ligh$g;->verify_menu_listview:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->f:Landroid/widget/LinearLayout;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->f:Landroid/widget/LinearLayout;

    sget v1, Ligh$f;->menuList:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->mMenuListView:Lcom/alipay/mobile/verifyidentity/ui/APListView;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->f:Landroid/widget/LinearLayout;

    sget v1, Ligh$f;->titleText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->d:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->mMenuListView:Lcom/alipay/mobile/verifyidentity/ui/APListView;

    .line 1047
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :cond_0
    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    iget-object v3, v3, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->e:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    .line 1051
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->e:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1052
    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1053
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->setListViewHeightBasedOnChildren(Lcom/alipay/mobile/verifyidentity/ui/APListView;)V

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setFocusable(Z)V

    .line 44
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    return-object v0
.end method


# virtual methods
.method public setListViewHeightBasedOnChildren(Lcom/alipay/mobile/verifyidentity/ui/APListView;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 133
    if-nez v3, :cond_0

    .line 148
    :goto_0
    return-void

    :cond_0
    move v0, v1

    move v2, v1

    .line 138
    :goto_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 139
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
