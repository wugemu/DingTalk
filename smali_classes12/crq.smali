.class public final Lcrq;
.super Lcrs;
.source "EmotionAutoToucher.java"

# interfaces
.implements Lcrs$a;


# instance fields
.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/PopupWindow;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcrs;-><init>(Landroid/view/View;)V

    .line 25
    iput-object p2, p0, Lcrq;->e:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcrq;->f:Ljava/util/Map;

    .line 27
    iput-object p4, p0, Lcrq;->g:Ljava/util/Map;

    .line 1036
    iput-object p0, p0, Lcrs;->b:Lcrs$a;

    .line 29
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "requestHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcrq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcrq;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 3053
    .local v0, "emotionAutoToucher":Lcrq;
    iput-object p4, v0, Lcrq;->c:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, -0x2

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    iget-object v10, p0, Lcrq;->a:Landroid/view/View;

    iget-object v2, p0, Lcrq;->e:Ljava/lang/String;

    iget-object v7, p0, Lcrq;->f:Ljava/util/Map;

    .line 2037
    if-eqz v10, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    iput-object v3, p0, Lcrq;->d:Landroid/widget/PopupWindow;

    .line 35
    return-void

    .line 2040
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->emotion_popupwindow_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 2041
    sget v0, Lcig$f;->iv_thumb:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2042
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2043
    invoke-static {v2}, Lcru;->a(Ljava/lang/String;)I

    move-result v4

    .line 2046
    if-ne v4, v9, :cond_2

    move v4, v9

    :goto_1
    move-object v8, v3

    .line 2049
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 2050
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v11, v12, v12, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 2054
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2055
    invoke-virtual {v11, v6, v6}, Landroid/view/View;->measure(II)V

    .line 2057
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2059
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2061
    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2062
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2063
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2064
    new-array v2, v9, [I

    .line 2065
    invoke-virtual {v10, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2066
    aget v4, v2, v6

    .line 2067
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    aget v2, v2, v5

    sub-int v0, v2, v0

    .line 2066
    invoke-virtual {v3, v10, v6, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcrq;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcrq;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcrq;->d:Landroid/widget/PopupWindow;

    .line 43
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcrq;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcrq;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 50
    :cond_0
    return-void
.end method
