.class Lcom/taobao/weex/devtools/toolbox/JsLogFragment$3;
.super Ljava/lang/Object;
.source "JsLogFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 73
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/JsLogFragment$3;->this$0:Lcom/taobao/weex/devtools/toolbox/JsLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getInstance()Lcom/taobao/weex/devtools/adapter/JsLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/adapter/JsLogAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
