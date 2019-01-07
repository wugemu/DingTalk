.class final Lhmo$4$1;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmo$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhmo$4;


# direct methods
.method constructor <init>(Lhmo$4;I)V
    .locals 0
    .param p1, "this$1"    # Lhmo$4;

    .prologue
    .line 268
    iput-object p1, p0, Lhmo$4$1;->b:Lhmo$4;

    iput p2, p0, Lhmo$4$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 271
    iget-object v0, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v0, v0, Lhmo$4;->a:Lhmo;

    .line 1023
    iget-object v0, v0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 271
    if-eqz v0, :cond_0

    .line 272
    iget v0, p0, Lhmo$4$1;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 284
    iget-object v0, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v0, v0, Lhmo$4;->a:Lhmo;

    .line 8023
    iget-object v0, v0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 284
    iget-object v1, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v1, v1, Lhmo$4;->a:Lhmo;

    .line 9023
    iget-object v1, v1, Lhmo;->c:Ljava/lang/String;

    .line 284
    const/4 v2, 0x3

    const-string/jumbo v3, "unknown error"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 274
    :sswitch_0
    iget-object v0, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v0, v0, Lhmo$4;->a:Lhmo;

    .line 2023
    iget-object v0, v0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 274
    iget-object v1, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v1, v1, Lhmo$4;->a:Lhmo;

    .line 3023
    iget-object v1, v1, Lhmo;->c:Ljava/lang/String;

    .line 274
    const/16 v2, 0x2713

    const-string/jumbo v3, "IO error"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 278
    :sswitch_1
    iget-object v0, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v0, v0, Lhmo$4;->a:Lhmo;

    .line 4023
    iget-object v0, v0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 278
    iget-object v1, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v1, v1, Lhmo$4;->a:Lhmo;

    .line 5023
    iget-object v1, v1, Lhmo;->c:Ljava/lang/String;

    .line 278
    const/16 v2, 0x2714

    const-string/jumbo v3, "format error"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 281
    :sswitch_2
    iget-object v0, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v0, v0, Lhmo$4;->a:Lhmo;

    .line 6023
    iget-object v0, v0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 281
    iget-object v1, p0, Lhmo$4$1;->b:Lhmo$4;

    iget-object v1, v1, Lhmo$4;->a:Lhmo;

    .line 7023
    iget-object v1, v1, Lhmo;->c:Ljava/lang/String;

    .line 281
    const/16 v2, 0x2711

    const-string/jumbo v3, "system error"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_1
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_2
    .end sparse-switch
.end method
