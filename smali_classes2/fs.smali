.class public final Lfs;
.super Ljava/lang/Object;
.source "ObjectsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs$a;,
        Lfs$b;
    }
.end annotation


# static fields
.field private static final a:Lfs$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Lfs$a;

    invoke-direct {v0, v2}, Lfs$a;-><init>(B)V

    sput-object v0, Lfs;->a:Lfs$b;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lfs$b;

    invoke-direct {v0, v2}, Lfs$b;-><init>(B)V

    sput-object v0, Lfs;->a:Lfs$b;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 58
    sget-object v0, Lfs;->a:Lfs$b;

    invoke-virtual {v0, p0, p1}, Lfs$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
