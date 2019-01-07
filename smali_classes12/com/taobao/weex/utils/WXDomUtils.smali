.class public Lcom/taobao/weex/utils/WXDomUtils;
.super Ljava/lang/Object;
.source "WXDomUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F
    .locals 8
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v4

    .line 66
    .local v4, "rawHeight":F
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v3

    .line 67
    .local v3, "padding":Lcom/taobao/weex/dom/CSSShorthand;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    .line 69
    .local v0, "border":Lcom/taobao/weex/dom/CSSShorthand;
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    .local v6, "topPadding":F
    invoke-static {v6}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 70
    sub-float/2addr v4, v6

    .line 72
    :cond_0
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    .local v2, "bottomPadding":F
    invoke-static {v2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 73
    sub-float/2addr v4, v2

    .line 76
    :cond_1
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    .local v5, "topBorder":F
    invoke-static {v5}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_2

    .line 77
    sub-float/2addr v4, v5

    .line 79
    :cond_2
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v1

    .local v1, "bottomBorder":F
    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_3

    .line 80
    sub-float/2addr v4, v1

    .line 82
    :cond_3
    return v4
.end method

.method public static getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F
    .locals 5
    .param p0, "padding"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "border"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutWidth"    # F

    .prologue
    .line 91
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v1

    .local v1, "leftPadding":F
    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    sub-float/2addr p2, v1

    .line 94
    :cond_0
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    .local v3, "rightPadding":F
    invoke-static {v3}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    sub-float/2addr p2, v3

    .line 98
    :cond_1
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    .local v0, "leftBorder":F
    invoke-static {v0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    sub-float/2addr p2, v0

    .line 101
    :cond_2
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    .local v2, "rightBorder":F
    invoke-static {v2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 102
    sub-float/2addr p2, v2

    .line 104
    :cond_3
    return p2
.end method

.method public static getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F
    .locals 8
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v4

    .line 39
    .local v4, "rawWidth":F
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v3

    .line 40
    .local v3, "padding":Lcom/taobao/weex/dom/CSSShorthand;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    .line 42
    .local v0, "border":Lcom/taobao/weex/dom/CSSShorthand;
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    .local v2, "leftPadding":F
    invoke-static {v2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 43
    sub-float/2addr v4, v2

    .line 45
    :cond_0
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    .local v6, "rightPadding":F
    invoke-static {v6}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    sub-float/2addr v4, v6

    .line 49
    :cond_1
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v1

    .local v1, "leftBorder":F
    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_2

    .line 50
    sub-float/2addr v4, v1

    .line 52
    :cond_2
    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    .local v5, "rightBorder":F
    invoke-static {v5}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_3

    .line 53
    sub-float/2addr v4, v5

    .line 55
    :cond_3
    return v4
.end method
