.class Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "JsLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/adapter/JsLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/adapter/JsLogAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;->this$0:Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    .line 123
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v1, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public render(Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;)V
    .locals 2
    .param p1, "logItem"    # Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$ItemHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 128
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 129
    iget v1, p1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->level:I

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    iget-object v1, p1, Lcom/taobao/weex/devtools/adapter/JsLogAdapter$LogItem;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    return-void

    .line 132
    :pswitch_0
    const-string/jumbo v1, "#B4000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    const-string/jumbo v1, "#1E00CA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    const-string/jumbo v1, "#E9B200"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    :pswitch_3
    const-string/jumbo v1, "#EF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
