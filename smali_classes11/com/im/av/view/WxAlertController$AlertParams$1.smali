.class final Lcom/im/av/view/WxAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "WxAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/av/view/WxAlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/av/view/WxAlertController$RecycleListView;

.field final synthetic b:Lcom/im/av/view/WxAlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/im/av/view/WxAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/im/av/view/WxAlertController$RecycleListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/im/av/view/WxAlertController$AlertParams;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/im/av/view/WxAlertController$AlertParams$1;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p6, p0, Lcom/im/av/view/WxAlertController$AlertParams$1;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    const v0, 0x1020014

    invoke-direct {p0, p2, p3, v0, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 850
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 852
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/im/av/view/WxAlertController$AlertParams$1;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v2, v2, Lcom/im/av/view/WxAlertController$AlertParams;->v:[Z

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/im/av/view/WxAlertController$AlertParams$1;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v2, v2, Lcom/im/av/view/WxAlertController$AlertParams;->v:[Z

    aget-boolean v0, v2, p1

    .line 854
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 855
    iget-object v2, p0, Lcom/im/av/view/WxAlertController$AlertParams$1;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/im/av/view/WxAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 858
    .end local v0    # "isItemChecked":Z
    :cond_0
    return-object v1
.end method
