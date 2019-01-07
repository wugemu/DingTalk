.class final Lcom/im/av/view/WxAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "WxAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/av/view/WxAlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/im/av/view/WxAlertController$RecycleListView;

.field final synthetic b:Lcom/im/av/view/WxAlertController;

.field final synthetic c:Lcom/im/av/view/WxAlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/im/av/view/WxAlertController$AlertParams;Lcom/im/av/view/WxAlertController$RecycleListView;Lcom/im/av/view/WxAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/im/av/view/WxAlertController$AlertParams;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->c:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    iput-object p3, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->b:Lcom/im/av/view/WxAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 936
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->c:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->v:[Z

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->c:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->v:[Z

    iget-object v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    .line 938
    invoke-virtual {v1, p3}, Lcom/im/av/view/WxAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->c:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->b:Lcom/im/av/view/WxAlertController;

    .line 1057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->d:Landroid/content/DialogInterface;

    .line 941
    iget-object v2, p0, Lcom/im/av/view/WxAlertController$AlertParams$4;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    .line 942
    invoke-virtual {v2, p3}, Lcom/im/av/view/WxAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 940
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 943
    return-void
.end method
