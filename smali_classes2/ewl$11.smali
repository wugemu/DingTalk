.class final Lewl$11;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewl;


# direct methods
.method constructor <init>(Lewl;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 185
    iput-object p1, p0, Lewl$11;->a:Lewl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 189
    invoke-static {v4}, Lcms;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Lcms;->f(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    :cond_0
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "answer the call fail"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "fail_pick_up_times"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 192
    .local v1, "pickUpTimes":I
    add-int/lit8 v1, v1, 0x1

    .line 193
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "fail_pick_up_times"

    invoke-static {v3, v4, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "beSuccess":Z
    iget-object v3, p0, Lewl$11;->a:Lewl;

    invoke-static {v3}, Lewl;->a(Lewl;)I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 197
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "meeting_dial_downgrade"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Lewl$11;->a:Lewl;

    invoke-static {v3}, Lewl;->b(Lewl;)V

    .line 199
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update the blacklist "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v1    # "pickUpTimes":I
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "result"

    if-eqz v0, :cond_3

    const-string/jumbo v3, "yes"

    :goto_1
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v3, "answer_type"

    iget-object v4, p0, Lewl$11;->a:Lewl;

    invoke-static {v4}, Lewl;->c(Lewl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v3, "duration"

    iget-object v4, p0, Lewl$11;->a:Lewl;

    invoke-static {v4}, Lewl;->d(Lewl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "meeting_dial_answer"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    return-void

    .line 203
    .end local v0    # "beSuccess":Z
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "answer the call success"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "fail_pick_up_times"

    invoke-static {v3, v4, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 206
    const/4 v0, 0x1

    .restart local v0    # "beSuccess":Z
    goto :goto_0

    .line 210
    .restart local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v3, "no"

    goto :goto_1
.end method
