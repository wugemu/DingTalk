.class public Lcom/taobao/weex/utils/SingleFunctionParser;
.super Lcom/taobao/weex/utils/FunctionParser;
.source "SingleFunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;,
        Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/weex/utils/FunctionParser",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<TV;>;"
    .local p2, "mapper":Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;, "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<TV;>;"
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser$1;

    invoke-direct {v0, p2}, Lcom/taobao/weex/utils/SingleFunctionParser$1;-><init>(Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/utils/FunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<TV;>;"
    .local p2, "mapper":Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;, "Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper<TV;>;"
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser$2;

    invoke-direct {v0, p2}, Lcom/taobao/weex/utils/SingleFunctionParser$2;-><init>(Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/utils/FunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/FunctionParser$Mapper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .local p0, "this":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<TV;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 78
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<TV;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 81
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
