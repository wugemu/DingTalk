.class public final Ljwt;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/devicediscover/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ljwt;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Ljwt;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-static {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Lcom/xiaomi/metoknlp/devicediscover/g;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Ljwt;->a:Lcom/xiaomi/metoknlp/devicediscover/g;

    invoke-static {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/g;->b(Lcom/xiaomi/metoknlp/devicediscover/g;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
