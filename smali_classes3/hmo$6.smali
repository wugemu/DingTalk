.class final Lhmo$6;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 302
    iput-object p1, p0, Lhmo$6;->a:Lhmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 305
    packed-switch p2, :pswitch_data_0

    .line 313
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 307
    :pswitch_0
    iget-object v0, p0, Lhmo$6;->a:Lhmo;

    const/16 v1, 0x8

    .line 1023
    invoke-virtual {v0, v1}, Lhmo;->b(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lhmo$6;->a:Lhmo;

    const/16 v1, 0xb

    .line 2023
    invoke-virtual {v0, v1}, Lhmo;->b(I)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
