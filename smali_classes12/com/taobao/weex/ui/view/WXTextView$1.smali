.class Lcom/taobao/weex/ui/view/WXTextView$1;
.super Ljava/lang/Object;
.source "WXTextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXTextView;->enableCopy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXTextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/WXTextView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    .local v0, "popupMenu":Landroid/support/v7/widget/PopupMenu;
    const-string/jumbo v1, "Copy"

    .line 134
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    move-object v2, v1

    .line 139
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 140
    new-instance v3, Lcom/taobao/weex/ui/view/WXTextView$1$1;

    invoke-direct {v3, p0, v2}, Lcom/taobao/weex/ui/view/WXTextView$1$1;-><init>(Lcom/taobao/weex/ui/view/WXTextView$1;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 155
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 156
    const/4 v3, 0x1

    return v3

    .end local v2    # "title":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
