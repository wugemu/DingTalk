.class final Lbtw$4;
.super Lbxc;
.source "ViewerFloatWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtw;


# direct methods
.method constructor <init>(Lbtw;)V
    .locals 0
    .param p1, "this$0"    # Lbtw;

    .prologue
    .line 222
    iput-object p1, p0, Lbtw$4;->a:Lbtw;

    invoke-direct {p0}, Lbxc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;IILjava/lang/Object;)Z
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I
    .param p4, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 225
    packed-switch p2, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lbtw$4;->a:Lbtw;

    iget-object v0, v0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lbtw$4;->a:Lbtw;

    iget-object v0, v0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getTvStatus()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lbtp$g;->and_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
