.class public final Landroid/support/v4/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/TextViewCompat$e;,
        Landroid/support/v4/widget/TextViewCompat$d;,
        Landroid/support/v4/widget/TextViewCompat$c;,
        Landroid/support/v4/widget/TextViewCompat$b;,
        Landroid/support/v4/widget/TextViewCompat$a;,
        Landroid/support/v4/widget/TextViewCompat$f;,
        Landroid/support/v4/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/TextViewCompat$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 370
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$e;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    .line 382
    :goto_0
    return-void

    .line 371
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 372
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$d;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    goto :goto_0

    .line 373
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 374
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$c;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    goto :goto_0

    .line 375
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 376
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$b;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    goto :goto_0

    .line 377
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 378
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$a;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    goto :goto_0

    .line 380
    :cond_4
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$f;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 454
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$f;->a(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 475
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/TextViewCompat$f;->a(Landroid/widget/TextView;I)V

    .line 476
    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$f;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 403
    return-void
.end method

.method public static b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 482
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$f;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/TextViewCompat$f;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
