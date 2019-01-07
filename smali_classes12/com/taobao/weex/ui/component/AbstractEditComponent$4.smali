.class Lcom/taobao/weex/ui/component/AbstractEditComponent$4;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$editText:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 285
    .local v0, "watcher":Landroid/text/TextWatcher;
    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    .line 288
    .end local v0    # "watcher":Landroid/text/TextWatcher;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 251
    .local v0, "watcher":Landroid/text/TextWatcher;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 254
    .end local v0    # "watcher":Landroid/text/TextWatcher;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 258
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 259
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "raw":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "result":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 263
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v6}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 264
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result v1

    .line 265
    .local v1, "index":I
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v6}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v6

    invoke-interface {p1, v7, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 266
    .local v0, "cursorIndex":I
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v5, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    .line 279
    .end local v0    # "cursorIndex":I
    .end local v1    # "index":I
    .end local v2    # "raw":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    return-void

    .line 271
    .restart local v2    # "raw":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5, v7}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 274
    .end local v2    # "raw":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/TextWatcher;

    .line 276
    .local v4, "watcher":Landroid/text/TextWatcher;
    invoke-interface {v4, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method
