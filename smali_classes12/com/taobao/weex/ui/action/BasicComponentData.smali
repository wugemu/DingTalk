.class public Lcom/taobao/weex/ui/action/BasicComponentData;
.super Ljava/lang/Object;
.source "BasicComponentData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAttributes:Lcom/taobao/weex/dom/WXAttr;

.field private mBorders:Lcom/taobao/weex/dom/CSSShorthand;

.field public mComponentType:Ljava/lang/String;

.field private mEvents:Lcom/taobao/weex/dom/WXEvent;

.field private mMargins:Lcom/taobao/weex/dom/CSSShorthand;

.field private mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

.field public mParentRef:Ljava/lang/String;

.field public mRef:Ljava/lang/String;

.field private mStyles:Lcom/taobao/weex/dom/WXStyle;

.field private renderObjectPr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "parentRef"    # Ljava/lang/String;

    .prologue
    .line 48
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    .line 49
    iput-object p1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mRef:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mParentRef:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "spacingType"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p2, "border"    # F

    .prologue
    .line 195
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 199
    return-void
.end method

.method private addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "spacingType"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p2, "margin"    # F

    .prologue
    .line 181
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 185
    return-void
.end method

.method private addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "spacingType"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p2, "padding"    # F

    .prologue
    .line 188
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 192
    return-void
.end method


# virtual methods
.method public final addAttr(Ljava/util/Map;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/dom/WXAttr;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXAttr;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final addEvent(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-nez v0, :cond_2

    .line 87
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final addShorthand(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    .local p1, "shorthand":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "key":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_0

    .line 129
    :sswitch_0
    const-string/jumbo v4, "margin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "marginLeft"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "marginTop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "marginRight"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "marginBottom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "borderWidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "borderTopWidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "borderRightWidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "borderBottomWidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v4, "borderLeftWidth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v4, "padding"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v4, "paddingLeft"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v4, "paddingTop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v4, "paddingRight"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v4, "paddingBottom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    .line 134
    :pswitch_1
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 140
    :pswitch_3
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 143
    :pswitch_4
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 146
    :pswitch_5
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 149
    :pswitch_6
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 152
    :pswitch_7
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 155
    :pswitch_8
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 158
    :pswitch_9
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 161
    :pswitch_a
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 164
    :pswitch_b
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 167
    :pswitch_c
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 170
    :pswitch_d
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 173
    :pswitch_e
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_7
        -0x597a2048 -> :sswitch_b
        -0x56940a43 -> :sswitch_6
        -0x4cec9971 -> :sswitch_8
        -0x40737a52 -> :sswitch_0
        -0x3e464339 -> :sswitch_2
        -0x300fc3ef -> :sswitch_a
        -0x113c6e87 -> :sswitch_4
        -0xd59d8cd -> :sswitch_9
        0x55f4784 -> :sswitch_c
        0xc0fb19c -> :sswitch_e
        0x2a8c788b -> :sswitch_d
        0x2c2c84fa -> :sswitch_5
        0x3a1ea90e -> :sswitch_3
        0x757a12d5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final addShorthand([FLcom/taobao/weex/dom/CSSShorthand$TYPE;)V
    .locals 2
    .param p1, "shorthand"    # [F
    .param p2, "type"    # Lcom/taobao/weex/dom/CSSShorthand$TYPE;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    const/4 v1, 0x4

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-array p1, v1, [F

    .end local p1    # "shorthand":[F
    fill-array-data p1, :array_0

    .line 96
    .restart local p1    # "shorthand":[F
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    .line 97
    sget-object v0, Lcom/taobao/weex/ui/action/BasicComponentData$1;->$SwitchMap$com$taobao$weex$dom$CSSShorthand$TYPE:[I

    invoke-virtual {p2}, Lcom/taobao/weex/dom/CSSShorthand$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->replace([F)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->replace([F)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_4

    .line 114
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->replace([F)V

    goto :goto_0

    .line 94
    .line 97
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addStyle(Ljava/util/Map;)V
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
    .line 55
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->addStyle(Ljava/util/Map;Z)V

    .line 56
    return-void
.end method

.method public final addStyle(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {v0, p1}, Lcom/taobao/weex/dom/WXStyle;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->putAll(Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public clone()Lcom/taobao/weex/ui/action/BasicComponentData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    new-instance v0, Lcom/taobao/weex/ui/action/BasicComponentData;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mRef:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mParentRef:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v0, "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 276
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 277
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 278
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->clone()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->clone()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->clone()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    .line 288
    :cond_2
    iget-wide v2, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 289
    iget-wide v2, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    invoke-static {v2, v3}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeCopyRenderObject(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    .line 291
    :cond_3
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
    .line 35
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->clone()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    return-object v0
.end method

.method public final getAttrs()Lcom/taobao/weex/dom/WXAttr;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lcom/taobao/weex/dom/WXAttr;

    return-object v0
.end method

.method public getBorder()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public final getEvents()Lcom/taobao/weex/dom/WXEvent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lcom/taobao/weex/dom/WXEvent;

    return-object v0
.end method

.method public final getMargin()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public final getPadding()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public getRenderObjectPr()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-wide v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    return-wide v0
.end method

.method public final getStyles()Lcom/taobao/weex/dom/WXStyle;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXStyle;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lcom/taobao/weex/dom/WXStyle;

    return-object v0
.end method

.method public isRenderPtrEmpty()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iget-wide v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 0
    .param p1, "mBorders"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mBorders:Lcom/taobao/weex/dom/CSSShorthand;

    .line 268
    return-void
.end method

.method public final setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 0
    .param p1, "mMargins"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mMargins:Lcom/taobao/weex/dom/CSSShorthand;

    .line 260
    return-void
.end method

.method public final setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 0
    .param p1, "mPaddings"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mPaddings:Lcom/taobao/weex/dom/CSSShorthand;

    .line 264
    return-void
.end method

.method public declared-synchronized setRenderObjectPr(J)V
    .locals 5
    .param p1, "renderObjectPr"    # J

    .prologue
    .line 303
    .local p0, "this":Lcom/taobao/weex/ui/action/BasicComponentData;, "Lcom/taobao/weex/ui/action/BasicComponentData<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 304
    iget-wide v0, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RenderObjectPr has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " old renderObjectPtr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    :try_start_1
    iput-wide p1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_1
    monitor-exit p0

    return-void
.end method
