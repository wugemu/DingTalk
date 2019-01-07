.class Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;
.super Landroid/widget/Filter;
.source "JsLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 89
    .local v0, "filterResults":Landroid/widget/Filter$FilterResults;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-static {v2}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->access$000(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;

    .line 91
    .local v1, "item":Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;
    iget v2, v1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->level:I

    iget-object v4, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-static {v4}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->access$100(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, v1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v1    # "item":Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;
    :cond_2
    iget-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 100
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-static {v0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->access$200(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-static {v0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->access$200(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$1;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method
