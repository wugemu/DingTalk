.class final Lcom/im/av/view/WxAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "WxAlertController.java"


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

.field final synthetic b:Lcom/im/av/view/WxAlertController$AlertParams;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/im/av/view/WxAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/im/av/view/WxAlertController$RecycleListView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/im/av/view/WxAlertController$AlertParams;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 862
    iput-object p1, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p5, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 867
    invoke-virtual {p0}, Lcom/im/av/view/WxAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 868
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->B:Ljava/lang/String;

    .line 869
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->c:I

    .line 870
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->C:Ljava/lang/String;

    .line 871
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->d:I

    .line 872
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 877
    const v2, 0x1020014

    .line 878
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 879
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->c:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v2, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->a:Lcom/im/av/view/WxAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->d:I

    .line 881
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 880
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/im/av/view/WxAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 882
    return-void

    .line 881
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 887
    iget-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams$2;->b:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    sget v1, Ljou$d;->im_select_dialog_multichoice:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
