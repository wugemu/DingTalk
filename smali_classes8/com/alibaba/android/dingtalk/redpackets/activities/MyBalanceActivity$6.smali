.class final Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;
.super Ljava/lang/Object;
.source "MyBalanceActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 424
    check-cast p1, Ljava/lang/String;

    .line 1427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2480
    new-instance v2, Lcbs$13;

    invoke-direct {v2, v1, v0}, Lcbs$13;-><init>(Lcbs;Lcma;)V

    .line 2487
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    .line 2488
    if-eqz v0, :cond_0

    .line 2489
    invoke-interface {v0, v2}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;->queryBalance(Liyv;)V

    .line 1487
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->p(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V

    .line 424
    return-void

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1485
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$6;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "binded_alipay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 493
    return-void
.end method
