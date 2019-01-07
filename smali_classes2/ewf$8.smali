.class final Lewf$8;
.super Ljava/lang/Object;
.source "SystemCallManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewf;->a(Landroid/app/Activity;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    iput-object p1, p0, Lewf$8;->a:Ljava/util/List;

    iput-object p2, p0, Lewf$8;->b:Landroid/app/Activity;

    iput-wide p3, p0, Lewf$8;->c:J

    iput-object p5, p0, Lewf$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lewf$8;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 318
    const/4 v0, 0x1

    .line 319
    .local v0, "finishActivity":Z
    iget-object v1, p0, Lewf$8;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lewf$8;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lewf$8;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 320
    iget-object v1, p0, Lewf$8;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lckp;

    .line 321
    .local v9, "slot":Lckp;
    if-eqz v9, :cond_0

    .line 1064
    iget v6, v9, Lckp;->b:I

    .line 323
    .local v6, "slotId":I
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewf;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sys call with slots call slot "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v8, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "slot"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "phone_calllist_normalcall_multicards_call_click"

    invoke-interface {v1, v2, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 329
    iget-object v1, p0, Lewf$8;->b:Landroid/app/Activity;

    iget-wide v2, p0, Lewf$8;->c:J

    iget-object v4, p0, Lewf$8;->d:Ljava/lang/String;

    iget-object v5, p0, Lewf$8;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 334
    .end local v6    # "slotId":I
    .end local v8    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "slot":Lckp;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 336
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v7, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lewf$8;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v7}, Ldq;->a(Landroid/content/Intent;)Z

    .line 339
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 332
    :cond_2
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lewf;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Sim card info is empty."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
