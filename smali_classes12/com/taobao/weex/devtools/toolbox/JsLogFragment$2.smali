.class Lcom/taobao/weex/devtools/toolbox/JsLogFragment$2;
.super Ljava/lang/Object;
.source "JsLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/toolbox/JsLogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/toolbox/JsLogFragment;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/toolbox/JsLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/toolbox/JsLogFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$2;->this$0:Lcom/taobao/weex/devtools/toolbox/JsLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getInstance()Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    move-result-object v0

    add-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->setLogLevel(I)V

    .line 65
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
