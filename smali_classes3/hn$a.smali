.class Lhn$a;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"

# interfaces
.implements Lhn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    instance-of v0, p1, Lht;

    if-eqz v0, :cond_0

    check-cast p1, Lht;

    .line 44
    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1}, Lht;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 50
    instance-of v0, p1, Lht;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lht;

    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1, p2}, Lht;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 57
    instance-of v0, p1, Lht;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lht;

    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1, p2}, Lht;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_0
    return-void
.end method

.method public b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 64
    instance-of v0, p1, Lht;

    if-eqz v0, :cond_0

    check-cast p1, Lht;

    .line 65
    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1}, Lht;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
