.class public final Lbs;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lby;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 45
    new-instance v0, Lbx;

    invoke-direct {v0}, Lbx;-><init>()V

    sput-object v0, Lbs;->c:Lby;

    .line 60
    :goto_0
    new-instance v0, Lbs$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lbs$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lbs;->a:Landroid/util/Property;

    .line 75
    new-instance v0, Lbs$2;

    const-class v1, Landroid/graphics/Rect;

    const-string/jumbo v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lbs$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lbs;->b:Landroid/util/Property;

    return-void

    .line 46
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 47
    new-instance v0, Lbw;

    invoke-direct {v0}, Lbw;-><init>()V

    sput-object v0, Lbs;->c:Lby;

    goto :goto_0

    .line 48
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 49
    new-instance v0, Lbv;

    invoke-direct {v0}, Lbv;-><init>()V

    sput-object v0, Lbs;->c:Lby;

    goto :goto_0

    .line 50
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 51
    new-instance v0, Lbu;

    invoke-direct {v0}, Lbu;-><init>()V

    sput-object v0, Lbs;->c:Lby;

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Lbt;

    invoke-direct {v0}, Lbt;-><init>()V

    sput-object v0, Lbs;->c:Lby;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcc;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0}, Lby;->a(Landroid/view/View;)Lcc;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "alpha"    # F

    .prologue
    .line 105
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0, p1}, Lby;->a(Landroid/view/View;F)V

    .line 106
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    .line 1209
    sget-boolean v1, Lbs;->e:Z

    if-nez v1, :cond_0

    .line 1211
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1212
    sput-object v1, Lbs;->d:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1216
    :goto_0
    sput-boolean v3, Lbs;->e:Z

    .line 144
    :cond_0
    sget-object v1, Lbs;->d:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 146
    :try_start_1
    sget-object v1, Lbs;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "viewFlags":I
    sget-object v1, Lbs;->d:Ljava/lang/reflect/Field;

    and-int/lit8 v2, v0, -0xd

    or-int/2addr v2, p1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .end local v0    # "viewFlags":I
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 205
    sget-object v0, Lbs;->c:Lby;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lby;->a(Landroid/view/View;IIII)V

    .line 206
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0, p1}, Lby;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 168
    return-void
.end method

.method public static b(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0}, Lby;->b(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "matrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0, p1}, Lby;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 184
    return-void
.end method

.method public static c(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0}, Lby;->c(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public static c(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "m"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 193
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0, p1}, Lby;->c(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 194
    return-void
.end method

.method public static d(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    sget-object v0, Lbs;->c:Lby;

    invoke-interface {v0, p0}, Lby;->d(Landroid/view/View;)V

    .line 127
    return-void
.end method
