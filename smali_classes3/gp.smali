.class public final Lgp;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgp$b;,
        Lgp$a;,
        Lgp$c;
    }
.end annotation


# static fields
.field static final a:Lgp$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Lgp$b;

    invoke-direct {v0}, Lgp$b;-><init>()V

    sput-object v0, Lgp;->a:Lgp$c;

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 108
    new-instance v0, Lgp$a;

    invoke-direct {v0}, Lgp$a;-><init>()V

    sput-object v0, Lgp;->a:Lgp$c;

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Lgp$c;

    invoke-direct {v0}, Lgp$c;-><init>()V

    sput-object v0, Lgp;->a:Lgp$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "split"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 164
    return-void
.end method
