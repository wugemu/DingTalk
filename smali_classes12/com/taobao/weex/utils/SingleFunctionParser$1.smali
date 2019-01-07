.class Lcom/taobao/weex/utils/SingleFunctionParser$1;
.super Ljava/lang/Object;
.source "SingleFunctionParser.java"

# interfaces
.implements Lcom/taobao/weex/utils/FunctionParser$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/FunctionParser$Mapper",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lcom/taobao/weex/utils/SingleFunctionParser$1;, "Lcom/taobao/weex/utils/SingleFunctionParser$1;"
    iput-object p1, p0, Lcom/taobao/weex/utils/SingleFunctionParser$1;->val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    .local p0, "this":Lcom/taobao/weex/utils/SingleFunctionParser$1;, "Lcom/taobao/weex/utils/SingleFunctionParser$1;"
    .local p2, "raw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<TV;>;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/utils/SingleFunctionParser$1;->val$mapper:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-interface {v4, v0}, Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;->map(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object v2
.end method
