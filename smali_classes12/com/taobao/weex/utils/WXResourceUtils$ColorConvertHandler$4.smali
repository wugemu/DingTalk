.class final enum Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$4;
.super Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
.source "WXResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;-><init>(Ljava/lang/String;ILcom/taobao/weex/utils/WXResourceUtils$1;)V

    return-void
.end method


# virtual methods
.method final handle(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .param p1, "rawColor"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 420
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser;

    invoke-static {}, Lcom/taobao/weex/utils/WXResourceUtils;->access$300()Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;)V

    .line 421
    .local v0, "functionParser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Number;>;"
    const-string/jumbo v2, "rgba"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 422
    .local v1, "rgba":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 423
    new-instance v3, Landroid/util/Pair;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    .line 424
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->access$400(F)I

    move-result v5

    .line 425
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v2, 0x1

    .line 426
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v2, 0x2

    .line 427
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 423
    invoke-static {v5, v6, v7, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 429
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/util/Pair;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
