.class final Leab$1;
.super Landroid/os/Handler;
.source "PushTaskListHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leab;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leab;


# direct methods
.method constructor <init>(Leab;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Leab;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 137
    iput-object p1, p0, Leab$1;->a:Leab;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 147
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-static {}, Leal;->a()Leal;

    move-result-object v0

    invoke-virtual {v0}, Leal;->d()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
