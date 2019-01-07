.class Lee;
.super Led;
.source "DrawableWrapperApi19.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Led;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method constructor <init>(Led$a;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Led$a;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Led;-><init>(Led$a;Landroid/content/res/Resources;)V

    .line 34
    return-void
.end method


# virtual methods
.method b()Led$a;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lee$a;

    iget-object v1, p0, Lee;->b:Led$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lee$a;-><init>(Led$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lee;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lee;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 39
    return-void
.end method
