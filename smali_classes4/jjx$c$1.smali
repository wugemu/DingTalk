.class final Ljjx$c$1;
.super Ljava/lang/Object;
.source "PushInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljjx$c;->a(Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljjx$c;


# direct methods
.method constructor <init>(Ljjx$c;Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Ljjx$c;

    .prologue
    .line 642
    iput-object p1, p0, Ljjx$c$1;->c:Ljjx$c;

    iput-object p2, p0, Ljjx$c$1;->a:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    iput-object p3, p0, Ljjx$c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 645
    sget-object v1, Ljjx$2;->b:[I

    iget-object v2, p0, Ljjx$c$1;->a:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-virtual {v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 675
    :cond_0
    return-void

    .line 647
    :pswitch_0
    iget-object v1, p0, Ljjx$c$1;->c:Ljjx$c;

    iget-object v1, v1, Ljjx$c;->a:Ljjx;

    invoke-static {v1}, Ljjx;->f(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljjx$a;

    .line 648
    .local v0, "listener":Ljjx$a;
    if-eqz v0, :cond_1

    .line 649
    invoke-interface {v0}, Ljjx$a;->a()V

    goto :goto_0

    .line 654
    .end local v0    # "listener":Ljjx$a;
    :pswitch_1
    iget-object v1, p0, Ljjx$c$1;->c:Ljjx$c;

    iget-object v1, v1, Ljjx$c;->a:Ljjx;

    invoke-static {v1}, Ljjx;->f(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljjx$a;

    .line 655
    .restart local v0    # "listener":Ljjx$a;
    if-eqz v0, :cond_2

    .line 656
    iget-object v2, p0, Ljjx$c$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljjx$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 661
    .end local v0    # "listener":Ljjx$a;
    :pswitch_2
    iget-object v1, p0, Ljjx$c$1;->c:Ljjx$c;

    iget-object v1, v1, Ljjx$c;->a:Ljjx;

    invoke-static {v1}, Ljjx;->f(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljjx$a;

    .line 662
    .restart local v0    # "listener":Ljjx$a;
    if-eqz v0, :cond_3

    .line 663
    iget-object v2, p0, Ljjx$c$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljjx$a;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 668
    .end local v0    # "listener":Ljjx$a;
    :pswitch_3
    iget-object v1, p0, Ljjx$c$1;->c:Ljjx$c;

    iget-object v1, v1, Ljjx$c;->a:Ljjx;

    invoke-static {v1}, Ljjx;->f(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljjx$a;

    .line 669
    .restart local v0    # "listener":Ljjx$a;
    if-eqz v0, :cond_4

    .line 670
    iget-object v2, p0, Ljjx$c$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljjx$a;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
