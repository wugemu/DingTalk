.class final Ldjb$5;
.super Ljava/lang/Object;
.source "ChatVoiceController.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjb;


# direct methods
.method constructor <init>(Ldjb;)V
    .locals 0
    .param p1, "this$0"    # Ldjb;

    .prologue
    .line 570
    iput-object p1, p0, Ldjb$5;->a:Ldjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 573
    iget-object v0, p0, Ldjb$5;->a:Ldjb;

    invoke-static {v0}, Ldjb;->r(Ldjb;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Ldjb$5;->a:Ldjb;

    invoke-static {v0}, Ldjb;->r(Ldjb;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 575
    iget-object v0, p0, Ldjb$5;->a:Ldjb;

    iget-object v1, p0, Ldjb$5;->a:Ldjb;

    invoke-static {v1}, Ldjb;->s(Ldjb;)I

    move-result v1

    invoke-static {v0, v1}, Ldjb;->a(Ldjb;I)V

    .line 577
    :cond_0
    return-void
.end method
