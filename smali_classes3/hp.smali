.class public final Lhp;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhp$c;,
        Lhp$b;,
        Lhp$a;,
        Lhp$d;
    }
.end annotation


# static fields
.field static final a:Lhp$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 186
    new-instance v0, Lhp$c;

    invoke-direct {v0}, Lhp$c;-><init>()V

    sput-object v0, Lhp;->a:Lhp$d;

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 188
    new-instance v0, Lhp$b;

    invoke-direct {v0}, Lhp$b;-><init>()V

    sput-object v0, Lhp;->a:Lhp$d;

    goto :goto_0

    .line 189
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 190
    new-instance v0, Lhp$a;

    invoke-direct {v0}, Lhp$a;-><init>()V

    sput-object v0, Lhp;->a:Lhp$d;

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Lhp$d;

    invoke-direct {v0}, Lhp$d;-><init>()V

    sput-object v0, Lhp;->a:Lhp$d;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 251
    sget-object v0, Lhp;->a:Lhp$d;

    invoke-virtual {v0, p0, p1}, Lhp$d;->a(Landroid/widget/PopupWindow;I)V

    .line 252
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 218
    sget-object v0, Lhp;->a:Lhp$d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lhp$d;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 219
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 228
    sget-object v0, Lhp;->a:Lhp$d;

    invoke-virtual {v0, p0, p1}, Lhp$d;->a(Landroid/widget/PopupWindow;Z)V

    .line 229
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 238
    sget-object v0, Lhp;->a:Lhp$d;

    invoke-virtual {v0, p0}, Lhp$d;->a(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method
