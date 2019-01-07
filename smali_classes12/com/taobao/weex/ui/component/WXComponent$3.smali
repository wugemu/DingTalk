.class Lcom/taobao/weex/ui/component/WXComponent$3;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 581
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$3;, "Lcom/taobao/weex/ui/component/WXComponent$3;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$3;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$3;, "Lcom/taobao/weex/ui/component/WXComponent$3;"
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$3;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXComponent;->access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    .line 585
    .local v0, "listener":Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;
    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0, p2}, Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;->onFocusChange(Z)V

    goto :goto_0

    .line 589
    .end local v0    # "listener":Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;
    :cond_1
    return-void
.end method
