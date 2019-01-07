.class Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;
.super Ljava/lang/Object;
.source "EnvironmentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->showModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

.field final synthetic val$modules:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;->this$0:Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    iput-object p2, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;->val$modules:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 107
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;->this$0:Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    iget-object v4, v4, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->items:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;->val$modules:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/TypeModuleFactory;

    .line 109
    .local v2, "factory":Lcom/taobao/weex/common/TypeModuleFactory;
    if-eqz v2, :cond_0

    .line 110
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lcom/taobao/weex/common/TypeModuleFactory;->getMethods()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    iget-object v4, p0, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment$2;->this$0:Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;

    iget-object v4, v4, Lcom/taobao/weex/devtools/toolbox/EnvironmentFragment;->info:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
