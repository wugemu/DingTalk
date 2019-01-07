.class Lcom/taobao/weex/ui/component/WXText$1;
.super Landroid/content/BroadcastReceiver;
.source "WXText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXText;->registerTypefaceObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXText;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    const-string/jumbo v4, "fontFamily"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "fontFamily":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-static {v4}, Lcom/taobao/weex/ui/component/WXText;->access$000(Lcom/taobao/weex/ui/component/WXText;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {v1}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object v0

    .line 240
    .local v0, "fontDO":Lcom/taobao/weex/utils/FontDO;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXText$1;->this$0:Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/WXTextView;

    .line 242
    .local v2, "hostView":Lcom/taobao/weex/ui/view/WXTextView;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v3

    .line 243
    .local v3, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 245
    const-string/jumbo v4, "WXText"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Apply font family "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to paint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_1
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXTextView;->invalidate()V

    .line 251
    .end local v2    # "hostView":Lcom/taobao/weex/ui/view/WXTextView;
    .end local v3    # "layout":Landroid/text/Layout;
    :cond_1
    const-string/jumbo v4, "WXText"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Font family "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .restart local v2    # "hostView":Lcom/taobao/weex/ui/view/WXTextView;
    .restart local v3    # "layout":Landroid/text/Layout;
    :cond_2
    const-string/jumbo v4, "WXText"

    const-string/jumbo v5, "Layout not created"

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
