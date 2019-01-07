.class public final Len$b;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "MediaBrowserCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Len$a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ItemCallback;"
    }
.end annotation


# instance fields
.field protected final a:Len$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Len$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Len$b;, "Len$b<TT;>;"
    .local p1, "callback":Len$a;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 44
    iput-object p1, p0, Len$b;->a:Len$a;

    .line 45
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Len$b;, "Len$b<TT;>;"
    return-void
.end method

.method public final onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 3
    .param p1, "item"    # Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    .local p0, "this":Len$b;, "Len$b<TT;>;"
    if-nez p1, :cond_0

    .line 50
    iget-object v1, p0, Len$b;->a:Len$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Len$a;->a(Landroid/os/Parcel;)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object v1, p0, Len$b;->a:Len$a;

    invoke-interface {v1, v0}, Len$a;->a(Landroid/os/Parcel;)V

    goto :goto_0
.end method
