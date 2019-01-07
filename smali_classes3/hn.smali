.class public final Lhn;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhn$c;,
        Lhn$a;,
        Lhn$b;
    }
.end annotation


# static fields
.field static final a:Lhn$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 124
    new-instance v0, Lhn$c;

    invoke-direct {v0}, Lhn$c;-><init>()V

    sput-object v0, Lhn;->a:Lhn$b;

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lhn$a;

    invoke-direct {v0}, Lhn$a;-><init>()V

    sput-object v0, Lhn;->a:Lhn$b;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 134
    sget-object v0, Lhn;->a:Lhn$b;

    invoke-interface {v0, p0}, Lhn$b;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 141
    sget-object v0, Lhn;->a:Lhn$b;

    invoke-interface {v0, p0, p1}, Lhn$b;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 142
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 157
    sget-object v0, Lhn;->a:Lhn$b;

    invoke-interface {v0, p0, p1}, Lhn$b;->a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 158
    return-void
.end method

.method public static b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 148
    sget-object v0, Lhn;->a:Lhn$b;

    invoke-interface {v0, p0}, Lhn$b;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method
