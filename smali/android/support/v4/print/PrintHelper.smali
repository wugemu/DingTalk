.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$d;,
        Landroid/support/v4/print/PrintHelper$c;,
        Landroid/support/v4/print/PrintHelper$b;,
        Landroid/support/v4/print/PrintHelper$a;,
        Landroid/support/v4/print/PrintHelper$e;,
        Landroid/support/v4/print/PrintHelper$f;,
        Landroid/support/v4/print/PrintHelper$Orientation;,
        Landroid/support/v4/print/PrintHelper$ColorMode;,
        Landroid/support/v4/print/PrintHelper$ScaleMode;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/print/PrintHelper$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 890
    new-instance v0, Landroid/support/v4/print/PrintHelper$d;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->a:Landroid/support/v4/print/PrintHelper$f;

    .line 901
    :goto_0
    return-void

    .line 891
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 892
    new-instance v0, Landroid/support/v4/print/PrintHelper$c;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->a:Landroid/support/v4/print/PrintHelper$f;

    goto :goto_0

    .line 893
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 894
    new-instance v0, Landroid/support/v4/print/PrintHelper$b;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->a:Landroid/support/v4/print/PrintHelper$f;

    goto :goto_0

    .line 895
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 896
    new-instance v0, Landroid/support/v4/print/PrintHelper$a;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->a:Landroid/support/v4/print/PrintHelper$f;

    goto :goto_0

    .line 899
    :cond_3
    new-instance v0, Landroid/support/v4/print/PrintHelper$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/print/PrintHelper$e;-><init>(B)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->a:Landroid/support/v4/print/PrintHelper$f;

    goto :goto_0
.end method
