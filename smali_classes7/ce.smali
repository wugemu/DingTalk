.class public Lce;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce$c;,
        Lce$b;,
        Lce$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    return-void
.end method

.method public static a(Landroid/content/Context;II)Lce;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 66
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 1243
    new-instance v0, Lce$c;

    invoke-direct {v0, v1}, Lce$c;-><init>(Landroid/app/ActivityOptions;)V

    .line 1245
    :goto_0
    return-object v0

    .line 1244
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 1245
    new-instance v0, Lce$b;

    invoke-direct {v0, v1}, Lce$b;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 1247
    :cond_1
    new-instance v0, Lce$a;

    invoke-direct {v0, v1}, Lce$a;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lce;

    invoke-direct {v0}, Lce;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method
