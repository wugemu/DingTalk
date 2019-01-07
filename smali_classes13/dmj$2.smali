.class final Ldmj$2;
.super Ljava/lang/Object;
.source "ChatScenePresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmj;


# direct methods
.method constructor <init>(Ldmj;)V
    .locals 0
    .param p1, "this$0"    # Ldmj;

    .prologue
    .line 301
    iput-object p1, p0, Ldmj$2;->a:Ldmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 306
    :pswitch_0
    iget-object v0, p0, Ldmj$2;->a:Ldmj;

    .line 1031
    iget-object v0, v0, Ldmj;->e:Landroid/os/Handler;

    .line 306
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Ldmj$2;->a:Ldmj;

    invoke-virtual {v0}, Ldmj;->x_()V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
