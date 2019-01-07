.class final Lexm$31;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Lied$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 2204
    iput-object p1, p0, Lexm$31;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2208
    packed-switch p1, :pswitch_data_0

    .line 2237
    :cond_0
    :goto_0
    return-void

    .line 2210
    :pswitch_0
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Phone incoming: "

    aput-object v2, v1, v4

    aput-object p2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, " no end"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2213
    :pswitch_1
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Phone offhook."

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->m(Lexm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0, v3}, Lexm;->d(Lexm;Z)Z

    .line 2218
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0, v4}, Lexm;->c(Lexm;Z)V

    .line 2219
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Z)V

    goto :goto_0

    .line 2224
    :pswitch_2
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Phone idle."

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0, v3, v3}, Lexm;->a(Lexm;ZZ)V

    .line 2227
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->m(Lexm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0, v4}, Lexm;->d(Lexm;Z)Z

    .line 2229
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Z)V

    goto :goto_0

    .line 2208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2260
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "net changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->c(Z)V

    .line 2264
    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 3
    .param p1, "isPlugin"    # Z
    .param p2, "isEarphone"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2241
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Headset changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    if-eqz p1, :cond_1

    .line 2243
    iget-object v0, p0, Lexm$31;->a:Lexm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lexm;->e(Lexm;Z)Z

    .line 2244
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2245
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->h()V

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2248
    :cond_1
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->h(Lexm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lexm$31;->a:Lexm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexm;->e(Lexm;Z)Z

    .line 2252
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2253
    iget-object v0, p0, Lexm$31;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->b(Z)V

    goto :goto_0
.end method

.method public final a(ZZZ)V
    .locals 8
    .param p1, "bluetoothConnected"    # Z
    .param p2, "headsetConnected"    # Z
    .param p3, "audioConnected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2268
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Bluetooth headset "

    aput-object v5, v4, v0

    .line 2269
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 2270
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 2271
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2268
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    if-eqz p1, :cond_0

    if-nez p2, :cond_5

    .line 2273
    :cond_0
    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3}, Lexm;->h(Lexm;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2274
    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3, v2}, Lexm;->c(Lexm;Z)V

    .line 2279
    :cond_1
    :goto_0
    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3, p3}, Lexm;->f(Lexm;Z)Z

    .line 2280
    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3, p2}, Lexm;->g(Lexm;Z)Z

    .line 2282
    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3}, Lexm;->e(Lexm;)I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3}, Lexm;->n(Lexm;)J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 2283
    .local v0, "beNotHost":Z
    :cond_3
    iget-object v2, p0, Lexm$31;->a:Lexm;

    invoke-static {v2}, Lexm;->o(Lexm;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    if-eqz v0, :cond_4

    .line 2284
    iget-object v2, p0, Lexm$31;->a:Lexm;

    invoke-static {v2}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2285
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conf_video_bluetooth_output_tips:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2286
    .local v1, "warning":Ljava/lang/String;
    iget-object v2, p0, Lexm$31;->a:Lexm;

    invoke-static {v2}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v2

    const-string/jumbo v3, "200"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    .end local v1    # "warning":Ljava/lang/String;
    :cond_4
    return-void

    .line 2276
    .end local v0    # "beNotHost":Z
    :cond_5
    if-eqz p3, :cond_1

    .line 2277
    iget-object v3, p0, Lexm$31;->a:Lexm;

    invoke-static {v3, v0}, Lexm;->c(Lexm;Z)V

    goto :goto_0
.end method
