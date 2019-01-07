.class final Levv$1;
.super Ljava/lang/Object;
.source "TeleConfPushListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levv;


# direct methods
.method constructor <init>(Levv;)V
    .locals 0
    .param p1, "this$0"    # Levv;

    .prologue
    .line 98
    iput-object p1, p0, Levv$1;->a:Levv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 101
    if-eqz p1, :cond_1

    iget v3, p1, Lcjo$b;->b:I

    const/16 v4, 0x7d0

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcjo$b;->b:I

    const/16 v4, 0x7d5

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    if-nez v3, :cond_2

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v3, p0, Levv$1;->a:Levv;

    invoke-static {v3}, Levv;->a(Levv;)V

    .line 109
    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    .line 110
    .local v1, "confChangedModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;
    new-instance v2, Leyj;

    invoke-direct {v2}, Leyj;-><init>()V

    .line 111
    .local v2, "object":Leyj;
    invoke-virtual {v2, v1}, Leyj;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;)Leyj;

    .line 113
    iget-object v3, p0, Levv$1;->a:Levv;

    iget-object v4, v2, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Levv;->a(Levv;J)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Leyj;->e:Ljava/lang/String;

    .line 114
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Leyj;->k:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v3, v2, Leyj;->k:Ljava/lang/Integer;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 116
    :cond_3
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Levv;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Receive CONF_CHANGED Push, not my conf id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 121
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "CONF_CHANGED Push,"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "confId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "host "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Leyj;->c:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Leyj;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cause "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Leyj;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 126
    const-string/jumbo v3, "tele_conf"

    const-string/jumbo v4, "conference_call"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v3, "end-conference"

    iget-object v4, v2, Leyj;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Levv$1;->a:Levv;

    invoke-static {v3}, Levv;->b(Levv;)Leuv;

    move-result-object v3

    iget-object v4, p0, Levv$1;->a:Levv;

    sget v5, Leuj$l;->conf_txt_terminated:I

    invoke-static {v4, v5}, Levv;->a(Levv;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Leuv;->a(Ljava/lang/String;J)V

    .line 130
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    sget v3, Leuj$l;->conf_txt_already_terminated:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 134
    :cond_5
    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    sget v4, Levh;->c:I

    invoke-virtual {v3, v4}, Levi;->a(I)V

    .line 135
    iget-object v3, p0, Levv$1;->a:Levv;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Levv;->a(Levv;Z)V

    goto/16 :goto_0
.end method
