.class final Lfrf$4;
.super Ljava/lang/Object;
.source "AlipayLoginPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcga;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrf;


# direct methods
.method constructor <init>(Lfrf;)V
    .locals 0
    .param p1, "this$0"    # Lfrf;

    .prologue
    .line 168
    iput-object p1, p0, Lfrf$4;->a:Lfrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 168
    check-cast p1, Lcga;

    .line 1171
    iget-object v0, p0, Lfrf$4;->a:Lfrf;

    iget-object v0, v0, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    if-nez p1, :cond_1

    .line 1175
    const-string/jumbo v0, "AlipayLoginPresenter"

    const-string/jumbo v1, "authRes == null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v1, p0, Lfrf$4;->a:Lfrf;

    .line 2208
    iget-object v0, p1, Lcga;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 2209
    packed-switch v0, :pswitch_data_0

    .line 2239
    iget-object v0, v1, Lfrf;->a:Lfre$b;

    iget-object v1, p1, Lcga;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfre$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2211
    :pswitch_0
    iget-object v0, v1, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->f()V

    goto :goto_0

    .line 2215
    :pswitch_1
    iget-object v0, v1, Lfrf;->a:Lfre$b;

    invoke-interface {v0, p1}, Lfre$b;->a(Lcga;)V

    goto :goto_0

    .line 2219
    :pswitch_2
    iget-object v0, v1, Lfrf;->a:Lfre$b;

    iget-object v1, p1, Lcga;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfre$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2223
    :pswitch_3
    iget-object v0, v1, Lfrf;->a:Lfre$b;

    iget-object v1, p1, Lcga;->a:Ljava/lang/String;

    iget-object v2, p1, Lcga;->b:Ljava/lang/String;

    iget-object v3, p1, Lcga;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lfre$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2227
    :pswitch_4
    iget-object v0, v1, Lfrf;->a:Lfre$b;

    iget-object v1, p1, Lcga;->b:Ljava/lang/String;

    iget-object v2, p1, Lcga;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lfre$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2231
    :pswitch_5
    const-string/jumbo v0, "AlipayLoginPresenter"

    .line 2232
    iget-object v2, p1, Lcga;->e:Lcee;

    if-eqz v2, :cond_2

    .line 2233
    iget-object v0, p1, Lcga;->e:Lcee;

    iget-object v0, v0, Lcee;->m:Ljava/lang/String;

    .line 2235
    :cond_2
    iget-object v1, v1, Lfrf;->a:Lfre$b;

    iget-object v2, p1, Lcga;->b:Ljava/lang/String;

    iget-object v3, p1, Lcga;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lfre$b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 188
    const-string/jumbo v0, "AlipayLoginPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lfrf$4;->a:Lfrf;

    iget-object v0, v0, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 184
    return-void
.end method
