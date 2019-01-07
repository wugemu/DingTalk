.class public abstract Lhcf;
.super Ljava/lang/Object;
.source "PlatformDecoder.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lhcf;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhcf;
    .locals 2

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 25
    new-instance v0, Lhcc;

    invoke-direct {v0}, Lhcc;-><init>()V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhce;

    invoke-direct {v0}, Lhce;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;
.end method

.method public abstract a([BILgzt$a;)Landroid/graphics/Bitmap;
.end method
