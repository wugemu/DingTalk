.class Lcom/taobao/weex/ui/view/WXTextView$1$1;
.super Ljava/lang/Object;
.source "WXTextView.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXTextView$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXTextView$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/ui/view/WXTextView$1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->val$title:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

    iget-object v3, v3, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXTextView$1$1;->this$1:Lcom/taobao/weex/ui/view/WXTextView$1;

    iget-object v3, v3, Lcom/taobao/weex/ui/view/WXTextView$1;->this$0:Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 146
    .local v1, "clipboardManager":Landroid/content/ClipboardManager;
    if-eqz v1, :cond_0

    .line 147
    invoke-static {v2, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 148
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 150
    .end local v0    # "clipData":Landroid/content/ClipData;
    :cond_0
    const/4 v3, 0x1

    .line 152
    .end local v1    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v2    # "data":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
