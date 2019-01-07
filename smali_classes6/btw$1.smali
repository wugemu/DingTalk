.class final Lbtw$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lbtw;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lbtw;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 57
    iput-object p1, p0, Lbtw$1;->a:Lbtw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lbtw$1;->a:Lbtw;

    invoke-static {v0}, Lbtw;->a(Lbtw;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
