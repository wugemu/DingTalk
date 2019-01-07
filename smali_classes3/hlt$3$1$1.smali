.class final Lhlt$3$1$1;
.super Lcmi;
.source "MiniappRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlt$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhlt$3$1;


# direct methods
.method constructor <init>(Lhlt$3$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lhlt$3$1;

    .prologue
    .line 626
    iput-object p1, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iput-object p2, p0, Lhlt$3$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 661
    iget-object v0, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v0, v0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    iget-object v1, p0, Lhlt$3$1$1;->a:Ljava/lang/String;

    .line 2016
    const-string/jumbo v2, "MiniappRuntime"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "showCheckPermissionDenyDialog"

    aput-object v5, v3, v4

    .line 2082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2018
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v2

    new-instance v3, Lhlt$6;

    invoke-direct {v3, v0, p2, v1}, Lhlt$6;-><init>(Lhlt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 626
    .line 2630
    const/4 v0, 0x0

    .line 2632
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "f_lightapp_mini_enable_finish_exit_activity"

    invoke-static {v1, v4}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2633
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v1

    iget-object v2, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v2, v2, Lhlt$3$1;->c:Lhlt$3;

    iget-object v2, v2, Lhlt$3;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2635
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 2636
    if-eqz v0, :cond_3

    .line 2637
    iget-object v3, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v3, v3, Lhlt$3$1;->b:Ljava/lang/String;

    .line 3049
    iget-object v5, v0, Lhmu;->d:Ljava/lang/String;

    .line 2637
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4033
    iget-object v0, v0, Lhmu;->b:Landroid/app/Activity;

    .line 2638
    invoke-static {v0}, Lhrf;->b(Landroid/app/Activity;)V

    move v0, v4

    :goto_1
    move v1, v0

    .line 2642
    goto :goto_0

    :cond_0
    move v0, v1

    .line 2646
    :cond_1
    if-eqz v0, :cond_2

    .line 2647
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lhlt$3$1$1$1;

    invoke-direct {v1, p0}, Lhlt$3$1$1$1;-><init>(Lhlt$3$1$1;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    .line 2654
    :cond_2
    iget-object v0, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v0, v0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    iget-object v1, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v1, v1, Lhlt$3$1;->c:Lhlt$3;

    iget-object v1, v1, Lhlt$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v2, v2, Lhlt$3$1;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v3, v3, Lhlt$3$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v5, v5, Lhlt$3$1;->c:Lhlt$3;

    iget-object v5, v5, Lhlt$3;->b:Lhlt$a;

    invoke-static/range {v0 .. v5}, Lhlt;->a(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
