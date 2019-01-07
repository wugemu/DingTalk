.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "H5DevAppInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInfoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lft",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lft",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lft<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$1;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_appinfo_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;

    .line 110
    .local v1, "holder":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 111
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$1;)V

    .line 112
    .restart local v1    # "holder":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;
    sget v3, Lcom/alipay/mobile/nebula/R$id;->info_key:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;->infoKey:Landroid/widget/TextView;

    .line 113
    sget v3, Lcom/alipay/mobile/nebula/R$id;->info_value:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;->infoValue:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lft;

    .line 119
    .local v2, "kvPair":Lft;, "Lft<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;->infoKey:Landroid/widget/TextView;

    iget-object v3, v2, Lft;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const-string/jumbo v3, "update_app_time"

    iget-object v4, v2, Lft;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v0, Ljava/util/Date;

    iget-object v3, v2, Lft;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 122
    .local v0, "date":Ljava/util/Date;
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;->infoValue:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object p2

    .line 124
    :cond_2
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment$AppInfoListAdapter$ViewHolder;->infoValue:Landroid/widget/TextView;

    iget-object v3, v2, Lft;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
