.class Lcom/taobao/weex/ui/component/AbstractEditComponent$13;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addKeyboardListener(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardEvent(Z)V
    .locals 3
    .param p1, "isShown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 897
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 899
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "isShow"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string/jumbo v2, "keyboard"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 902
    .end local v0    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-nez p1, :cond_1

    .line 903
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$13;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->blur()V

    .line 905
    :cond_1
    return-void
.end method
