.class final Lcom/taobao/weex/ui/WXComponentRegistry$1;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$componentInfo:Ljava/util/Map;

.field final synthetic val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$componentInfo:Ljava/util/Map;

    iput-object p2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$componentInfo:Ljava/util/Map;

    .line 59
    .local v1, "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .restart local v1    # "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v2, "methods"

    iget-object v3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v3}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethods()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v2, v3}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 66
    invoke-static {v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100(Ljava/util/Map;)Z

    .line 67
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lcom/taobao/weex/common/WXException;
    const-string/jumbo v2, "register component error:"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
