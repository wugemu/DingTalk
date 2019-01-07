.class public final Lgd;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgd$a;,
        Lgd$b;,
        Lgd$d;,
        Lgd$c;
    }
.end annotation


# static fields
.field static final a:Lgd$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 277
    new-instance v0, Lgd$a;

    invoke-direct {v0}, Lgd$a;-><init>()V

    sput-object v0, Lgd;->a:Lgd$c;

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v0, Lgd$b;

    invoke-direct {v0}, Lgd$b;-><init>()V

    sput-object v0, Lgd;->a:Lgd$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "provider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    .line 369
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 370
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Lei;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Lei;

    move-result-object p0

    .line 374
    :goto_0
    return-object p0

    .line 373
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "listener"    # Lgd$d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    new-instance v0, Lgd$1;

    invoke-direct {v0, p1}, Lgd$1;-><init>(Lgd$d;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;CI)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .prologue
    .line 574
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 575
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1, p2}, Lei;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 579
    :goto_0
    return-void

    .line 577
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Lgd;->a:Lgd$c;

    invoke-interface {v0, p0, p1, p2}, Lgd$c;->b(Landroid/view/MenuItem;CI)V

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 653
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 654
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Lei;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 658
    :goto_0
    return-void

    .line 656
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Lgd;->a:Lgd$c;

    invoke-interface {v0, p0, p1}, Lgd$c;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 681
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 682
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Lei;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 686
    :goto_0
    return-void

    .line 684
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Lgd;->a:Lgd$c;

    invoke-interface {v0, p0, p1}, Lgd$c;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 484
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 485
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Lei;->setContentDescription(Ljava/lang/CharSequence;)Lei;

    .line 489
    :goto_0
    return-void

    .line 487
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Lgd;->a:Lgd$c;

    invoke-interface {v0, p0, p1}, Lgd$c;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .prologue
    .line 616
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 617
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1, p2}, Lei;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 621
    :goto_0
    return-void

    .line 619
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Lgd;->a:Lgd$c;

    invoke-interface {v0, p0, p1, p2}, Lgd$c;->a(Landroid/view/MenuItem;CI)V

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 510
    instance-of v0, p0, Lei;

    if-eqz v0, :cond_0

    .line 511
    check-cast p0, Lei;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Lei;->setTooltipText(Ljava/lang/CharSequence;)Lei;

    .line 515
    :goto_0
    return-void

    .line 513
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Lgd;->a:Lgd$c;

    invoke-interface {v0, p0, p1}, Lgd$c;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
