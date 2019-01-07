.class public final Lba;
.super Ljava/lang/Object;
.source "Scene.java"


# direct methods
.method static a(Landroid/view/View;)Lba;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 206
    sget v0, Lay$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba;

    return-object v0
.end method
