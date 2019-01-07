.class final Lbxb$1;
.super Landroid/os/Handler;
.source "VideoListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxb;


# direct methods
.method constructor <init>(Lbxb;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lbxb;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 65
    iput-object p1, p0, Lbxb$1;->a:Lbxb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->c()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
