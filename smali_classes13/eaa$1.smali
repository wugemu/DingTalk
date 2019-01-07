.class final Leaa$1;
.super Landroid/os/Handler;
.source "PushTaskHeaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leaa;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leaa;


# direct methods
.method constructor <init>(Leaa;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Leaa;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 76
    iput-object p1, p0, Leaa$1;->a:Leaa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-static {}, Leal;->a()Leal;

    move-result-object v0

    invoke-virtual {v0}, Leal;->c()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
