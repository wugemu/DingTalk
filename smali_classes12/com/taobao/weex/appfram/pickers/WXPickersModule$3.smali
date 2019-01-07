.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;
.super Landroid/widget/ArrayAdapter;
.source "WXPickersModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$selectionColor:I

.field final synthetic val$textColor:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Landroid/content/Context;ILjava/util/List;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/appfram/pickers/WXPickersModule;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 191
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput p5, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$selectionColor:I

    iput p6, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$textColor:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "itemView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {v2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$000(Lcom/taobao/weex/appfram/pickers/WXPickersModule;)I

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .local v1, "needSelected":Z
    :goto_0
    move-object v2, v0

    .line 199
    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 201
    if-eqz v1, :cond_3

    .line 202
    iget v2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$selectionColor:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    .end local v1    # "needSelected":Z
    :cond_0
    :goto_1
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$textColor:I

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 209
    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$3;->val$textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    :cond_1
    return-object v0

    :cond_2
    move v1, v3

    .line 198
    goto :goto_0

    .line 204
    .restart local v1    # "needSelected":Z
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
