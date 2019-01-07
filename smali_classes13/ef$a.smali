.class final Lef$a;
.super Led$a;
.source "DrawableWrapperApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Led$a;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "orig"    # Led$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    invoke-direct {p0, p1}, Led$a;-><init>(Led$a;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    new-instance v0, Lef;

    invoke-direct {v0, p0, p1}, Lef;-><init>(Led$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
