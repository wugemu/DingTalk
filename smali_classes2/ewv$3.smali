.class final Lewv$3;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Lied$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv;


# direct methods
.method constructor <init>(Lewv;)V
    .locals 0
    .param p1, "this$0"    # Lewv;

    .prologue
    .line 175
    iput-object p1, p0, Lewv$3;->a:Lewv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 285
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onMediaStart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lewv$3$4;

    invoke-direct {v1, p0}, Lewv$3$4;-><init>(Lewv$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 262
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "onHangup "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->f(Lewv;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2, p2}, Lewv;->c(Lewv;I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "toast":Ljava/lang/String;
    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2, p2}, Lewv;->d(Lewv;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "state":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_voip_remote_hangup_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_0
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 272
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c()V

    .line 275
    .end local v0    # "state":Ljava/lang/String;
    .end local v1    # "toast":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lewv$3$3;

    invoke-direct {v3, p0}, Lewv$3$3;-><init>(Lewv$3;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;Z)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "avCallState"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .param p3, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 178
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onAnswer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2, v6}, Lewv;->a(Lewv;Z)V

    .line 180
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->f(Lewv;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x0

    invoke-static {v2}, Lewp;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    new-instance v3, Lewv$3$1;

    invoke-direct {v3, p0}, Lewv$3$1;-><init>(Lewv$3;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V

    .line 212
    :goto_0
    sget v2, Leuj$l;->conf_txt_video_connected:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 214
    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-static {v6}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "durText":Ljava/lang/String;
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 208
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->h(Lewv;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "hangupTxt":Ljava/lang/String;
    iget-object v2, p0, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3, v6}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "needPlayLocalRingtone"    # Z

    .prologue
    .line 219
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 223
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onAcceptComplete "

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->i(Lewv;)Liee;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Lewx;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lewv$3;->a:Lewv;

    .line 227
    invoke-static {v1}, Lewv;->i(Lewv;)Liee;

    move-result-object v1

    invoke-interface {v1}, Liee;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    iget-object v1, p0, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->i(Lewv;)Liee;

    move-result-object v1

    invoke-interface {v1}, Liee;->h()V

    .line 232
    :cond_1
    iget-object v1, p0, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->f(Lewv;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 233
    const/4 v1, 0x0

    invoke-static {v1}, Lewp;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v1

    new-instance v2, Lewv$3$2;

    invoke-direct {v2, p0}, Lewv$3$2;-><init>(Lewv$3;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 254
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "durText":Ljava/lang/String;
    iget-object v1, p0, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 302
    return-void
.end method
