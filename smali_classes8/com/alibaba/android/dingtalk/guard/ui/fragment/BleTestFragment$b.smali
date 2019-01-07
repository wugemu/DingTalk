.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;
.super Landroid/widget/BaseAdapter;
.source "BleTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 662
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 663
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;>;"
    const/4 v0, 0x0

    .line 664
    .local v0, "count":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    .line 665
    .local v1, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    if-ne v0, p1, :cond_0

    .line 670
    .end local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    :goto_1
    return-object v1

    .line 668
    .restart local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 669
    goto :goto_0

    .line 670
    .end local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 675
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 681
    if-nez p2, :cond_0

    .line 682
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;B)V

    .line 683
    .local v1, "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbrx$e;->device_beacon_test_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 684
    sget v2, Lbrx$d;->text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;->a:Landroid/widget/TextView;

    .line 685
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 689
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    move-result-object v0

    .line 690
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " major:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " minor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    return-object p2

    .line 687
    .end local v0    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    .end local v1    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;

    .restart local v1    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;
    goto :goto_0
.end method
