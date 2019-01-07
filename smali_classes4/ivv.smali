.class public final Livv;
.super Ljava/lang/Object;
.source "ImageSource.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field public b:Z

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Livv;->c:Landroid/graphics/Bitmap;

    .line 38
    iput-object p1, p0, Livv;->a:Landroid/net/Uri;

    .line 39
    iput-object v0, p0, Livv;->d:Ljava/lang/Integer;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Livv;->b:Z

    .line 41
    return-void
.end method
