.class public Lcom/taobao/weex/dom/WXAttr;
.super Ljava/lang/Object;
.source "WXAttr.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2459d3c708082fb2L


# instance fields
.field private attr:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBindingAttrs:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

.field private writeAttr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "standardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extra"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "standardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method private addBindingAttrIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 517
    sget-object v4, Lcom/taobao/weex/dom/binding/ELUtils;->EXCLUDES_BINDING:[Ljava/lang/String;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 518
    .local v0, "exclude":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 557
    .end local v0    # "exclude":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 517
    .restart local v0    # "exclude":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "exclude":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->isBinding(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 523
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    if-nez v1, :cond_3

    .line 524
    new-instance v1, Lfk;

    invoke-direct {v1}, Lfk;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    .line 526
    :cond_3
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 527
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    invoke-virtual {v1, p1, p2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 528
    goto :goto_1

    .line 530
    :cond_4
    const-string/jumbo v3, "[[match]]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 531
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-nez v1, :cond_5

    .line 532
    new-instance v1, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v1}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 534
    :cond_5
    if-eqz p2, :cond_6

    .line 535
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/el/parse/Parser;->parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/taobao/weex/dom/binding/WXStatement;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move v1, v2

    .line 537
    goto :goto_1

    .line 540
    :cond_7
    const-string/jumbo v3, "[[repeat]]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 541
    iget-object v3, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-nez v3, :cond_8

    .line 542
    new-instance v3, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v3}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 544
    :cond_8
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->vforBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 545
    if-eqz p2, :cond_9

    .line 546
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/dom/binding/WXStatement;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 547
    goto :goto_1

    .line 551
    :cond_9
    const-string/jumbo v3, "[[once]]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-nez v3, :cond_a

    .line 553
    new-instance v3, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v3}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 555
    :cond_a
    iget-object v3, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/taobao/weex/dom/binding/WXStatement;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private filterStatementsFromAttrs(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .param p1, "attrs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 494
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 510
    :cond_0
    return-object p1

    .line 497
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 498
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 499
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 501
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "@componentProps"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "blockValue":Ljava/lang/Object;
    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    .end local v0    # "blockValue":Ljava/lang/Object;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/taobao/weex/dom/WXAttr;->addBindingAttrIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static getPrefix(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 85
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v1

    .line 88
    :cond_1
    const-string/jumbo v2, "prefix"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "src":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSuffix(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 96
    if-nez p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 99
    :cond_1
    const-string/jumbo v2, "suffix"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "src":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getValue(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 112
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :cond_1
    const-string/jumbo v2, "value"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 117
    const-string/jumbo v2, "content"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 122
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public autoPlay()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string/jumbo v3, "autoPlay"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 202
    :goto_0
    return v2

    .line 198
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] autoPlay:"

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public canRecycled()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 165
    const-string/jumbo v3, "recycle"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 174
    :goto_0
    return v2

    .line 170
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] recycle:"

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 387
    return-void
.end method

.method public clone()Lcom/taobao/weex/dom/WXAttr;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    .line 575
    .local v0, "wxAttr":Lcom/taobao/weex/dom/WXAttr;
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->skipFilterPutAll(Ljava/util/Map;)V

    .line 576
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    if-eqz v1, :cond_0

    .line 577
    new-instance v1, Lfk;

    iget-object v2, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    invoke-direct {v1, v2}, Lfk;-><init>(Lfw;)V

    iput-object v1, v0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-eqz v1, :cond_1

    .line 580
    new-instance v1, Lcom/taobao/weex/dom/binding/WXStatement;

    iget-object v2, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v1, v2}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>(Lfw;)V

    iput-object v1, v0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 582
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->clone()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    .line 408
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 409
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 414
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindingAttrs()Lfk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 312
    const-string/jumbo v5, "columnCount"

    invoke-virtual {p0, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_1

    move v0, v4

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 319
    goto :goto_0

    .line 323
    :cond_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 324
    .local v0, "columnCount":I
    if-gtz v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 325
    .end local v0    # "columnCount":I
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "[WXAttr] getColumnCount:"

    invoke-static {v5, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 327
    goto :goto_0
.end method

.method public getColumnGap()F
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v0, 0x42000000    # 32.0f

    .line 333
    const-string/jumbo v4, "columnGap"

    invoke-virtual {p0, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "normal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    .local v0, "columnGap":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-gez v4, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 346
    .end local v0    # "columnGap":F
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXAttr] getColumnGap:"

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getColumnWidth()F
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 291
    const-string/jumbo v5, "columnWidth"

    invoke-virtual {p0, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 292
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 302
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 303
    .local v0, "columnWidth":F
    cmpl-float v5, v0, v4

    if-gtz v5, :cond_0

    move v0, v4

    goto :goto_0

    .line 304
    .end local v0    # "columnWidth":F
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXAttr] getColumnWidth:"

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getElevation(I)F
    .locals 4
    .param p1, "viewPortW"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    const-string/jumbo v3, "elevation"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 277
    .local v1, "obj":Ljava/lang/Object;
    const/high16 v2, 0x7fc00000    # NaNf

    .line 278
    .local v2, "ret":F
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    .line 286
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 283
    .restart local v0    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    const-string/jumbo v3, "quality"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "quality"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "obj":Ljava/lang/Object;
    :goto_0
    sget-object v0, Lcom/taobao/weex/dom/WXImageQuality;->AUTO:Lcom/taobao/weex/dom/WXImageQuality;

    .line 129
    .local v0, "imageQuality":Lcom/taobao/weex/dom/WXImageQuality;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/dom/WXImageQuality;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/WXImageQuality;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 126
    .end local v0    # "imageQuality":Lcom/taobao/weex/dom/WXImageQuality;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "imageQuality"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 133
    .restart local v0    # "imageQuality":Lcom/taobao/weex/dom/WXImageQuality;
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Image"

    const-string/jumbo v4, "Invalid value image quality. Only low, normal, high, original are valid"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    const-string/jumbo v3, "sharpen"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 142
    const-string/jumbo v3, "imageSharpen"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    :cond_0
    if-nez v1, :cond_2

    .line 145
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 153
    :cond_1
    :goto_0
    return-object v2

    .line 147
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "imageSharpen":Ljava/lang/String;
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 149
    .local v2, "waImageSharpen":Lcom/taobao/weex/common/WXImageSharpen;
    const-string/jumbo v3, "sharpen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    goto :goto_0
.end method

.method public getImageSrc()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    const-string/jumbo v1, "src"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 161
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIsRecycleImage()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    const-string/jumbo v2, "recycleImage"

    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 243
    const/4 v2, 0x1

    .line 251
    :goto_0
    return v2

    .line 247
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXAttr] recycleImage:"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLayoutType()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 353
    const-string/jumbo v3, "layout"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 354
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 370
    :goto_0
    return v2

    .line 359
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    const/4 v2, 0x3

    goto :goto_0

    .line 359
    :sswitch_0
    const-string/jumbo v5, "multi-column"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "grid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_1

    .line 363
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] getLayoutType:"

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x308b46 -> :sswitch_1
        0x2839c66a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLoadMoreOffset()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    const-string/jumbo v1, "loadmoreoffset"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadMoreRetry()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v1, "loadmoreretry"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 215
    const/4 v1, 0x0

    .line 217
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "direction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    const-string/jumbo v3, "horizontal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 268
    :cond_1
    const-string/jumbo v3, "orientation"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_2

    const-string/jumbo v3, "horizontal"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    const-string/jumbo v1, "scope"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getScrollDirection()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    const-string/jumbo v1, "scrollDirection"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "scrollDirection":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 256
    const-string/jumbo v1, "vertical"

    .line 258
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStatement()Lcom/taobao/weex/dom/binding/WXStatement;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mergeAttr()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 566
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    iget-object v1, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    .line 570
    :cond_0
    return-void
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Ljava/lang/String;

    .line 237
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 233
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 234
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public parseStatements()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/WXAttr;->filterStatementsFromAttrs(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    .line 488
    :cond_0
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/dom/WXAttr;->addBindingAttrIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->writeAttr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 443
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBindingAttrs(Lfk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "mBindingAttrs":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/taobao/weex/dom/WXAttr;->mBindingAttrs:Lfk;

    .line 478
    return-void
.end method

.method public setStatement(Lcom/taobao/weex/dom/binding/WXStatement;)V
    .locals 0
    .param p1, "mStatement"    # Lcom/taobao/weex/dom/binding/WXStatement;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/taobao/weex/dom/WXAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 482
    return-void
.end method

.method public showIndicators()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 178
    const-string/jumbo v3, "showIndicators"

    invoke-virtual {p0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 188
    :goto_0
    return v2

    .line 184
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] showIndicators:"

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public skipFilterPutAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 562
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/taobao/weex/dom/WXAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
