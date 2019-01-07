.class final Lcom/im/av/view/WxAlertController$AlertParams$3;
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
.field final synthetic a:Lcom/im/av/view/WxAlertController;

.field final synthetic b:Lcom/im/av/view/WxAlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/im/av/view/WxAlertController$AlertParams;Lcom/im/av/view/WxAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/im/av/view/WxAlertController$AlertParams;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/im/av/view/WxAlertController$AlertParams$3;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, p0, Lcom/im/av/view/WxAlertController$AlertParams$3;->a:Lcom/im/av/view/WxAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 924
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$3;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$3;->a:Lcom/im/av/view/WxAlertController;

    .line 1057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->d:Landroid/content/DialogInterface;

    .line 924
    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 926
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$3;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    if-nez v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$3;->a:Lcom/im/av/view/WxAlertController;

    .line 2057
    iget-object v0, v0, Lcom/im/av/view/WxAlertController;->d:Landroid/content/DialogInterface;

    .line 927
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 929
    :cond_0
    return-void
.end method
