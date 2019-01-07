.class final Liey$c;
.super Landroid/telephony/PhoneStateListener;
.source "AVDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method constructor <init>(Liey;)V
    .locals 0
    .param p1, "this$0"    # Liey;

    .prologue
    .line 595
    iput-object p1, p0, Liey$c;->a:Liey;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 598
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Listener] number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Liey$c;->a:Liey;

    invoke-static {v1}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Liey$c;->a:Liey;

    invoke-static {v1}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lied$h;

    .line 601
    .local v0, "listener":Lied$h;
    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0, p1, p2}, Lied$h;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 607
    .end local v0    # "listener":Lied$h;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 608
    return-void
.end method
