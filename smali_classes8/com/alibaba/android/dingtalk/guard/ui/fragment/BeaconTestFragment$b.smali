.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;
.super Landroid/widget/BaseAdapter;
.source "BeaconTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    return-void
.end method

.method private a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;

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
    .line 238
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
    .line 244
    if-nez p2, :cond_0

    .line 245
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;B)V

    .line 246
    .local v1, "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbrx$e;->device_beacon_test_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 247
    sget v2, Lbrx$d;->text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;->a:Landroid/widget/TextView;

    .line 248
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;->a(I)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;

    move-result-object v0

    .line 253
    .local v0, "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " major:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " minor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-object p2

    .line 250
    .end local v0    # "data":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    .end local v1    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;

    .restart local v1    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;
    goto :goto_0
.end method
