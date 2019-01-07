.class public Lcom/alipay/mobile/nebula/util/H5ViewStubUtil;
.super Ljava/lang/Object;
.source "H5ViewStubUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/view/View;II)Ljava/lang/Object;
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "stubId"    # I
    .param p2, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "II)TT;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 19
    .local v0, "viewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static isViewVisible(Landroid/view/View;II)Z
    .locals 4
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "stubId"    # I
    .param p2, "targetId"    # I

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 31
    .local v1, "viewStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "targetView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setViewVisibility(Landroid/view/View;III)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "stubId"    # I
    .param p2, "targetId"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 52
    if-nez p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 57
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "targetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 62
    .end local v0    # "targetView":Landroid/view/View;
    :cond_2
    if-nez p3, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 64
    .local v1, "viewStub":Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
