.class public Ldny;
.super Ljava/lang/Object;
.source "WhiteTextColorProvider.java"

# interfaces
.implements Ldnx;


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->text_color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Ldny;->a:I

    .line 17
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_theme_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Ldny;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    sget v0, Ldny;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    sget v0, Ldny;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    sget v0, Ldny;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 36
    sget v0, Ldny;->a:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 41
    sget v0, Ldny;->b:I

    return v0
.end method
