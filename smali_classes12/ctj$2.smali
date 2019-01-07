.class final Lctj$2;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lctj;


# direct methods
.method constructor <init>(Lctj;)V
    .locals 0
    .param p1, "this$0"    # Lctj;

    .prologue
    .line 374
    iput-object p1, p0, Lctj$2;->a:Lctj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 378
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 379
    iget-object v0, p0, Lctj$2;->a:Lctj;

    invoke-virtual {v0}, Lctj;->b()V

    .line 381
    :cond_0
    return-void
.end method
