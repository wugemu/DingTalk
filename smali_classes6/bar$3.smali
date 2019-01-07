.class final Lbar$3;
.super Landroid/content/BroadcastReceiver;
.source "DingUnReadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbar;


# direct methods
.method constructor <init>(Lbar;)V
    .locals 0
    .param p1, "this$0"    # Lbar;

    .prologue
    .line 100
    iput-object p1, p0, Lbar$3;->a:Lbar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "[DingUnReadPresenter] receiver_action:"

    aput-object v3, v2, v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "com.workapp.ding.confirm.all_ding"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    iget-object v2, p0, Lbar$3;->a:Lbar;

    .line 1037
    iget-object v2, v2, Lbar;->a:Ljava/util/List;

    .line 107
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 108
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_0

    .line 113
    invoke-static {v1}, Lbkh;->E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "cache & db is confirmed, but ui not refresh dingId="

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 116
    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    goto :goto_0

    .line 119
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "cache & db is confirmed, unconfirmed count="

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lbar$3;->a:Lbar;

    invoke-virtual {v2}, Lbar;->d()V

    .line 122
    .end local v0    # "count":I
    :cond_2
    return-void
.end method
