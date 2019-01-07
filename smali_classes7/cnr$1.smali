.class final Lcnr$1;
.super Landroid/os/Handler;
.source "ExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcnr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcnr;


# direct methods
.method constructor <init>(Lcnr;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcnr;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 34
    iput-object p1, p0, Lcnr$1;->a:Lcnr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcnr$a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcnr$1;->a:Lcnr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcnr$a;

    invoke-static {v1, v0}, Lcnr;->a(Lcnr;Lcnr$a;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
