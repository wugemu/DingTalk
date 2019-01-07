.class public abstract Landroid/support/v4/media/MediaBrowserCompat$n;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$n$b;,
        Landroid/support/v4/media/MediaBrowserCompat$n$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/IBinder;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 680
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$n$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$n$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V

    .line 1029
    new-instance v1, Leo$b;

    invoke-direct {v1, v0}, Leo$b;-><init>(Leo$a;)V

    .line 681
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Ljava/lang/Object;

    .line 682
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/os/IBinder;

    .line 691
    :goto_0
    return-void

    .line 683
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 684
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$n$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$n$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V

    .line 1073
    new-instance v1, Lem$d;

    invoke-direct {v1, v0}, Lem$d;-><init>(Lem$c;)V

    .line 685
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Ljava/lang/Object;

    .line 686
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/os/IBinder;

    goto :goto_0

    .line 688
    :cond_1
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Ljava/lang/Object;

    .line 689
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/os/IBinder;

    goto :goto_0
.end method
