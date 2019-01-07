.class final Ldq$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldq;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldq;


# direct methods
.method constructor <init>(Ldq;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Ldq;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, Ldq$1;->a:Ldq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Ldq$1;->a:Ldq;

    invoke-static {v0}, Ldq;->a(Ldq;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
