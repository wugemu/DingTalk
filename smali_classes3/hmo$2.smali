.class final Lhmo$2;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 234
    iput-object p1, p0, Lhmo$2;->a:Lhmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 237
    const-string/jumbo v0, "BackgroundAudioManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "player on prepared ready to start"

    aput-object v3, v1, v2

    .line 1098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lhmo$2;->a:Lhmo;

    const/4 v1, 0x7

    .line 2023
    iput v1, v0, Lhmo;->d:I

    .line 239
    iget-object v0, p0, Lhmo$2;->a:Lhmo;

    const/16 v1, 0xb

    .line 3023
    invoke-virtual {v0, v1}, Lhmo;->b(I)V

    .line 240
    iget-object v0, p0, Lhmo$2;->a:Lhmo;

    .line 4023
    iget-boolean v0, v0, Lhmo;->g:Z

    .line 240
    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lhmo$2;->a:Lhmo;

    .line 5023
    invoke-virtual {v0}, Lhmo;->h()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lhmo$2;->a:Lhmo;

    .line 6023
    iget-boolean v0, v0, Lhmo;->e:Z

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lhmo$2;->a:Lhmo;

    .line 7023
    invoke-virtual {v0}, Lhmo;->h()V

    goto :goto_0
.end method
