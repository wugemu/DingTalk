.class Lcom/taobao/weex/ui/component/WXA$1;
.super Ljava/lang/Object;
.source "WXA.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXA;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXA;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXA;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXA$1;->this$0:Lcom/taobao/weex/ui/component/WXA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXA$1;->this$0:Lcom/taobao/weex/ui/component/WXA;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXA;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    .line 48
    .local v0, "attr":Lcom/taobao/weex/dom/WXAttr;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "href"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "href":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXA$1;->this$0:Lcom/taobao/weex/ui/component/WXA;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXA;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/taobao/weex/utils/ATagUtil;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v1    # "href":Ljava/lang/String;
    :cond_0
    return-void
.end method
