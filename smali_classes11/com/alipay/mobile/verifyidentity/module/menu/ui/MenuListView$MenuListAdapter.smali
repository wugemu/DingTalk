.class Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->b:Landroid/view/LayoutInflater;

    .line 64
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    .line 65
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->getItem(I)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Ligh$g;->verify_menu_item:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V

    .line 91
    sget v0, Ligh$f;->moduleMenuName:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->menuName:Landroid/widget/TextView;

    .line 92
    sget v0, Ligh$f;->menu_splitter:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->spliter:Landroid/view/View;

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    .line 98
    iget-object v2, v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->menuName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 100
    iget-object v0, v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->spliter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :goto_1
    return-object p2

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->spliter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
