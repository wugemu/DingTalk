.class final Lfbq$2;
.super Landroid/content/BroadcastReceiver;
.source "CertifyTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbq;


# direct methods
.method constructor <init>(Lfbq;)V
    .locals 0
    .param p1, "this$0"    # Lfbq;

    .prologue
    .line 609
    iput-object p1, p0, Lfbq$2;->a:Lfbq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 612
    iget-object v2, p0, Lfbq$2;->a:Lfbq;

    invoke-static {v2}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string/jumbo v2, "intent_key_menu_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lfbq$2;->a:Lfbq;

    invoke-static {v4}, Lfbq;->e(Lfbq;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 619
    const-string/jumbo v2, "intent_action_rp_take_photo_result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 620
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/certify/ImageData;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/certify/ImageData;

    .line 622
    .local v0, "image":Lcom/alibaba/android/user/certify/ImageData;
    if-eqz v0, :cond_0

    .line 626
    iget-object v2, p0, Lfbq$2;->a:Lfbq;

    invoke-static {v2}, Lfbq;->i(Lfbq;)V

    .line 627
    sget-object v2, Lfbq$5;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/user/certify/ImageData;->getType()Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 629
    :pswitch_0
    iget-object v2, p0, Lfbq$2;->a:Lfbq;

    const/4 v3, 0x6

    invoke-static {v2, v3, v0}, Lfbq;->a(Lfbq;ILcom/alibaba/android/user/certify/ImageData;)V

    goto :goto_0

    .line 632
    :pswitch_1
    iget-object v2, p0, Lfbq$2;->a:Lfbq;

    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lfbq;->a(Lfbq;ILcom/alibaba/android/user/certify/ImageData;)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v2, p0, Lfbq$2;->a:Lfbq;

    const/16 v3, 0x8

    invoke-static {v2, v3, v0}, Lfbq;->a(Lfbq;ILcom/alibaba/android/user/certify/ImageData;)V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
