.class final Lhmo$5;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmo;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmo;


# direct methods
.method constructor <init>(Lhmo;)V
    .locals 0
    .param p1, "this$0"    # Lhmo;

    .prologue
    .line 294
    iput-object p1, p0, Lhmo$5;->a:Lhmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lhmo$5;->a:Lhmo;

    const/16 v1, 0xa

    .line 1023
    invoke-virtual {v0, v1}, Lhmo;->b(I)V

    .line 298
    iget-object v0, p0, Lhmo$5;->a:Lhmo;

    const/16 v1, 0xb

    .line 2023
    invoke-virtual {v0, v1}, Lhmo;->b(I)V

    .line 299
    return-void
.end method
