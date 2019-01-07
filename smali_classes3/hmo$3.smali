.class final Lhmo$3;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 254
    iput-object p1, p0, Lhmo$3;->a:Lhmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x6

    .line 257
    iget-object v0, p0, Lhmo$3;->a:Lhmo;

    .line 1023
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhmo;->g:Z

    .line 258
    iget-object v0, p0, Lhmo$3;->a:Lhmo;

    .line 2023
    invoke-virtual {v0}, Lhmo;->j()V

    .line 259
    iget-object v0, p0, Lhmo$3;->a:Lhmo;

    .line 3023
    iput v2, v0, Lhmo;->d:I

    .line 260
    iget-object v0, p0, Lhmo$3;->a:Lhmo;

    .line 4023
    invoke-virtual {v0, v2}, Lhmo;->b(I)V

    .line 261
    return-void
.end method
