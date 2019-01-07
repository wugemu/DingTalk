.class public Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;
.super Landroid/widget/BaseAdapter;
.source "WalletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcan;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->b:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method

.method private a(I)Lcan;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcan;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a(I)Lcan;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a(I)Lcan;

    move-result-object v0

    .line 67
    .local v0, "item":Lcan;
    if-eqz v0, :cond_0

    iget v1, v0, Lcan;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 70
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 76
    if-nez p2, :cond_3

    .line 77
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 78
    .local v0, "isSectionType":Z
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->b:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_2

    sget v3, Lcaj$e;->layout_item_wallet_section:I

    :goto_1
    invoke-virtual {v6, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;

    invoke-direct {v2, p2, v4}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;-><init>(Landroid/view/View;B)V

    .line 82
    .local v2, "viewHolder":Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .end local v0    # "isSectionType":Z
    :goto_2
    if-eqz v2, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter;->a(I)Lcan;

    move-result-object v1

    .line 1109
    .local v1, "item":Lcan;
    if-eqz v1, :cond_0

    .line 1113
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->b:Landroid/widget/TextView;

    iget-object v6, v1, Lcan;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget v3, v1, Lcan;->a:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    .line 1115
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1116
    iget-object v6, v1, Lcan;->e:Ljava/lang/String;

    invoke-static {v6}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1117
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->a:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v6, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1119
    iget-object v3, v1, Lcan;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1120
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    :goto_3
    iget-object v3, v1, Lcan;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1126
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1132
    :goto_4
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iget-boolean v6, v1, Lcan;->h:Z

    if-eqz v6, :cond_6

    :goto_5
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 90
    .end local v1    # "item":Lcan;
    :cond_0
    return-object p2

    .end local v2    # "viewHolder":Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;
    :cond_1
    move v0, v4

    .line 77
    goto :goto_0

    .line 78
    .restart local v0    # "isSectionType":Z
    :cond_2
    sget v3, Lcaj$e;->layout_item_wallet:I

    goto :goto_1

    .line 84
    .end local v0    # "isSectionType":Z
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;

    .restart local v2    # "viewHolder":Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;
    goto :goto_2

    .line 1122
    .restart local v1    # "item":Lcan;
    :cond_4
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->c:Landroid/widget/TextView;

    iget-object v6, v1, Lcan;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1128
    :cond_5
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->d:Landroid/widget/TextView;

    iget-object v6, v1, Lcan;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/redpackets/adapters/WalletAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    move v4, v5

    .line 1132
    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    return v0
.end method
