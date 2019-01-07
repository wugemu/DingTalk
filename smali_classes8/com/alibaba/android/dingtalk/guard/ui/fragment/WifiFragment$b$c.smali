.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;
.super Landroid/widget/BaseAdapter;
.source "WifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 673
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->a:Landroid/view/LayoutInflater;

    .line 674
    return-void
.end method

.method private a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .line 2515
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    .line 683
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    .line 1515
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;->a:Ljava/util/List;

    .line 678
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 688
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 694
    if-nez p2, :cond_0

    .line 695
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b;B)V

    .line 696
    .local v1, "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->a:Landroid/view/LayoutInflater;

    sget v4, Lbrx$e;->device_wifi_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 697
    sget v2, Lbrx$d;->ssid_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;->a:Landroid/widget/TextView;

    .line 698
    sget v2, Lbrx$d;->password_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;->b:Landroid/view/View;

    .line 700
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 704
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$c;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;

    move-result-object v0

    .line 705
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;->b:Landroid/view/View;

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 708
    return-object p2

    .line 702
    .end local v0    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    .end local v1    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;

    .restart local v1    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$a;
    goto :goto_0

    .restart local v0    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$b;
    :cond_1
    move v2, v3

    .line 706
    goto :goto_1
.end method
