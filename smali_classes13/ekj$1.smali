.class final Lekj$1;
.super Ljava/lang/Object;
.source "CompressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekj;->exec(Lhac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhag;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

.field final synthetic c:Lekj;


# direct methods
.method constructor <init>(Lekj;Lhag;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V
    .locals 0
    .param p1, "this$0"    # Lekj;

    .prologue
    .line 104
    iput-object p1, p0, Lekj$1;->c:Lekj;

    iput-object p2, p0, Lekj$1;->a:Lhag;

    iput-object p3, p0, Lekj$1;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 1019
    iget-object v0, v0, Lekj;->b:Ljava/util/List;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lekj$1;->c:Lekj;

    .line 2019
    iget-object v1, v1, Lekj;->c:Ljava/util/List;

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 3019
    iget-object v0, v0, Lekj;->c:Ljava/util/List;

    .line 107
    iget-object v1, p0, Lekj$1;->a:Lhag;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lekj$2;->a:[I

    iget-object v1, p0, Lekj$1;->b:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 4019
    iget-object v0, v0, Lekj;->c:Ljava/util/List;

    .line 110
    iget-object v1, p0, Lekj$1;->a:Lhag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 5019
    iget-object v0, v0, Lekj;->c:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lekj$1;->c:Lekj;

    .line 6019
    iget-object v1, v1, Lekj;->b:Ljava/util/List;

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v0

    iget-object v1, p0, Lekj$1;->c:Lekj;

    invoke-virtual {v0, v1}, Lhad;->b(Lhae;)V

    .line 114
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 7019
    iget-object v0, v0, Lekj;->a:Lekj$a;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 8019
    iget-object v0, v0, Lekj;->a:Lekj$a;

    .line 115
    iget-object v1, p0, Lekj$1;->c:Lekj;

    .line 9019
    iget-object v1, v1, Lekj;->c:Ljava/util/List;

    .line 115
    invoke-interface {v0, v1}, Lekj$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v0

    iget-object v1, p0, Lekj$1;->c:Lekj;

    invoke-virtual {v0, v1}, Lhad;->b(Lhae;)V

    .line 122
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 10019
    iget-object v0, v0, Lekj;->a:Lekj$a;

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 11019
    iget-object v0, v0, Lekj;->a:Lekj$a;

    .line 123
    invoke-interface {v0}, Lekj$a;->b()V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v0

    iget-object v1, p0, Lekj$1;->c:Lekj;

    invoke-virtual {v0, v1}, Lhad;->b(Lhae;)V

    .line 129
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 12019
    iget-object v0, v0, Lekj;->a:Lekj$a;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lekj$1;->c:Lekj;

    .line 13019
    iget-object v0, v0, Lekj;->a:Lekj$a;

    .line 130
    invoke-interface {v0}, Lekj$a;->c()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
