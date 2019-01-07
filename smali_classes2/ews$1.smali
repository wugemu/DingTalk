.class final Lews$1;
.super Ljava/lang/Object;
.source "TeleFloatingConfManager.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lews;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lews;


# direct methods
.method constructor <init>(Lews;)V
    .locals 0
    .param p1, "this$0"    # Lews;

    .prologue
    .line 92
    iput-object p1, p0, Lews$1;->a:Lews;

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
    .line 95
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4}, Levi;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    if-eqz p1, :cond_0

    iget v4, p1, Lcjo$b;->b:I

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcjo$b;->b:I

    const/16 v5, 0x7d5

    if-eq v4, v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v4, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    if-eqz v4, :cond_0

    .line 104
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    .line 105
    .local v2, "confChangedModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;
    new-instance v3, Leyj;

    invoke-direct {v3}, Leyj;-><init>()V

    .line 106
    .local v3, "object":Leyj;
    invoke-virtual {v3, v2}, Leyj;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;)Leyj;

    .line 108
    iget-object v4, v3, Leyj;->a:Ljava/lang/Long;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lews;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Receive CONF_PUSH_CONF_CHANGED Push, it is not my conf "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, v3, Leyj;->e:Ljava/lang/String;

    .line 113
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 118
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "CONF_CHANGED Push,"

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "confId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Leyj;->a:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "callHost "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Leyj;->c:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "action "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cause "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Leyj;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 123
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lews;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v4, "end-conference"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    invoke-virtual {v4}, Levi;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lews$1$1;

    invoke-direct {v5, p0}, Lews$1$1;-><init>(Lews$1;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 136
    invoke-static {}, Levi;->p()Levi;

    move-result-object v4

    sget v5, Levh;->c:I

    invoke-virtual {v4, v5}, Levi;->a(I)V

    .line 137
    iget-object v4, p0, Lews$1;->a:Lews;

    sget-object v5, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v4, v5}, Lews;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 140
    const/4 v4, 0x0

    const/16 v5, 0x2710

    invoke-static {v4, v5}, Lewp;->c(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
