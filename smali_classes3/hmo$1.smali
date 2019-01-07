.class final Lhmo$1;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmo;
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
    .line 60
    iput-object p1, p0, Lhmo$1;->a:Lhmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 6
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 63
    const-string/jumbo v0, "BackgroundAudioManager"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onAudioFocusChange: focusChange = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 66
    iget-object v0, p0, Lhmo$1;->a:Lhmo;

    .line 1023
    invoke-virtual {v0}, Lhmo;->f()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-ne p1, v5, :cond_2

    .line 68
    iget-object v0, p0, Lhmo$1;->a:Lhmo;

    invoke-static {v0}, Lhmo;->a(Lhmo;)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lhmo$1;->a:Lhmo;

    invoke-virtual {v0}, Lhmo;->d()V

    goto :goto_0
.end method
