.class final Lfrd$1;
.super Landroid/os/Handler;
.source "AlipayAuthCodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrd;


# direct methods
.method constructor <init>(Lfrd;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lfrd;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 35
    iput-object p1, p0, Lfrd$1;->a:Lfrd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 38
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 41
    const-string/jumbo v2, "AlipayAuthCodeHelper"

    const-string/jumbo v3, "!(msg.obj instanceof Map)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v2, p0, Lfrd$1;->a:Lfrd;

    .line 1024
    iget-object v2, v2, Lfrd;->b:Lcma;

    .line 42
    invoke-interface {v2, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lfrh;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lfrh;-><init>(Ljava/util/Map;Z)V

    .line 1078
    .local v0, "authResult":Lfrh;
    iget-object v1, v0, Lfrh;->a:Ljava/lang/String;

    .line 51
    .local v1, "resultStatus":Ljava/lang/String;
    const-string/jumbo v2, "9000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1099
    iget-object v2, v0, Lfrh;->b:Ljava/lang/String;

    .line 51
    const-string/jumbo v3, "200"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lfrd$1;->a:Lfrd;

    .line 2024
    iget-object v2, v2, Lfrd;->b:Lcma;

    .line 2106
    iget-object v3, v0, Lfrh;->c:Ljava/lang/String;

    .line 54
    invoke-interface {v2, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 55
    const-string/jumbo v2, "AlipayAuthCodeHelper"

    const-string/jumbo v3, "resultStatus ok"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, p0, Lfrd$1;->a:Lfrd;

    .line 3024
    iget-object v2, v2, Lfrd;->b:Lcma;

    .line 58
    invoke-interface {v2, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 59
    const-string/jumbo v2, "AlipayAuthCodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resultStatus error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
