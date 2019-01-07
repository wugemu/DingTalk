.class public final Landroid/support/v4/media/session/MediaControllerCompat$f;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stream"    # I
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .prologue
    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->a:I

    .line 1275
    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:I

    .line 1276
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->c:I

    .line 1277
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->d:I

    .line 1278
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->e:I

    .line 1279
    return-void
.end method
