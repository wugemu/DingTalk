.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

.field final synthetic val$component:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$d:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;Landroid/view/View;ILcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 652
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 653
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v3, v3, Lcom/taobao/weex/ui/component/WXText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    instance-of v3, v3, Lcom/taobao/weex/ui/view/WXTextView;

    if-eqz v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    check-cast v3, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    .line 656
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 658
    .local v1, "sequence":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/text/SpannableString;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 660
    check-cast v3, Landroid/text/SpannableString;

    .line 662
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/ForegroundColorSpan;

    .line 660
    invoke-virtual {v3, v7, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    .line 664
    .local v2, "spans":[Landroid/text/style/ForegroundColorSpan;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v1

    .line 665
    check-cast v3, Landroid/text/SpannableString;

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    move-object v3, v1

    .line 666
    check-cast v3, Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 668
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x11

    .line 666
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 671
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
