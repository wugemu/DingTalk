.class public final Lavj;
.super Ljava/lang/Object;
.source "CalendarColorUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "#6D4C41"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#F06292"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "#7B89C7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "#00695C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "#EF9A9A"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "#1A237E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "#AED581"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "#C2185B"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "#9E9D24"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "#8C32A6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "#607D8B"

    aput-object v2, v0, v1

    sput-object v0, Lavj;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 3
    .param p0, "color"    # I

    .prologue
    .line 24
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 28
    sget v0, Laow$a;->ui_common_safe_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-static {p0, v0}, Lavj;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 36
    .end local p1    # "defaultColor":I
    :goto_0
    return p1

    .line 34
    .restart local p1    # "defaultColor":I
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[CalendarColorUtils]parseColor failed"

    invoke-static {v1, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "folderKey"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string/jumbo v2, "#F25643"

    .line 72
    :goto_0
    return-object v2

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 71
    .local v0, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    rem-int/lit8 v1, v2, 0xb

    .line 72
    .local v1, "index":I
    sget-object v2, Lavj;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_0
.end method
