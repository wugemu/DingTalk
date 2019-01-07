.class Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;
.super Ljava/lang/Object;
.source "PerformanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->addTab(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    iput-object p2, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-static {v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->access$100(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-static {v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->access$100(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 106
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-static {v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->access$100(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    iget-object v1, p0, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity$4;->this$0:Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;

    invoke-static {v1}, Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;->access$100(Lcom/taobao/weex/devtools/toolbox/PerformanceActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "#1E90FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 110
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
