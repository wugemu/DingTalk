.class public abstract Lbz;
.super Lbf;
.source "VisibilityPropagation.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:visibilityPropagation:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:visibilityPropagation:center"

    aput-object v2, v0, v1

    sput-object v0, Lbz;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lbf;-><init>()V

    return-void
.end method

.method static a(Lbh;I)I
    .locals 4
    .param p0, "values"    # Lbh;
    .param p1, "coordinateIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 106
    if-nez p0, :cond_0

    move v1, v2

    .line 115
    :goto_0
    return v1

    .line 110
    :cond_0
    iget-object v1, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibilityPropagation:center"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 111
    .local v0, "coordinates":[I
    if-nez v0, :cond_1

    move v1, v2

    .line 112
    goto :goto_0

    .line 115
    :cond_1
    aget v1, v0, p1

    goto :goto_0
.end method

.method public static b(Lbh;)I
    .locals 4
    .param p0, "values"    # Lbh;

    .prologue
    const/16 v1, 0x8

    .line 73
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    iget-object v2, p0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibilityPropagation:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "visibility":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbh;)V
    .locals 7
    .param p1, "values"    # Lbh;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    iget-object v1, p1, Lbh;->b:Landroid/view/View;

    .line 46
    .local v1, "view":Landroid/view/View;
    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 47
    .local v2, "visibility":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 50
    :cond_0
    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:visibilityPropagation:visibility"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 52
    .local v0, "loc":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 53
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v5

    .line 54
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v5

    .line 55
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 56
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 57
    iget-object v3, p1, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v4, "android:visibilityPropagation:center"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lbz;->a:[Ljava/lang/String;

    return-object v0
.end method
