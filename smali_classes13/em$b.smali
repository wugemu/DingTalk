.class public final Lem$b;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lem$a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final a:Lem$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lem$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lem$b;, "Lem$b<TT;>;"
    .local p1, "connectionCallback":Lem$a;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 97
    iput-object p1, p0, Lem$b;->a:Lem$a;

    .line 98
    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lem$b;, "Lem$b<TT;>;"
    iget-object v0, p0, Lem$b;->a:Lem$a;

    invoke-interface {v0}, Lem$a;->a()V

    .line 103
    return-void
.end method

.method public final onConnectionFailed()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lem$b;, "Lem$b<TT;>;"
    iget-object v0, p0, Lem$b;->a:Lem$a;

    invoke-interface {v0}, Lem$a;->c()V

    .line 113
    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lem$b;, "Lem$b<TT;>;"
    iget-object v0, p0, Lem$b;->a:Lem$a;

    invoke-interface {v0}, Lem$a;->b()V

    .line 108
    return-void
.end method
