.class public final Lewh$2;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewh;


# direct methods
.method public constructor <init>(Lewh;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 1456
    iput-object p1, p0, Lewh$2;->a:Lewh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1456
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;

    .line 2459
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;->graySwitchList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;->graySwitchList:Ljava/util/List;

    .line 2460
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2461
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;->graySwitchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;

    .line 2464
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchBusiness:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2467
    const-string/jumbo v4, "permission_check_list"

    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchBusiness:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2469
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchStatus:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->valueOf()I

    move-result v4

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchStatus:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->valueOf()I

    move-result v0

    if-ne v4, v0, :cond_1

    move v0, v1

    .line 2474
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "permission_check_list"

    invoke-static {v4, v5, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2472
    goto :goto_1

    .line 2476
    :cond_2
    const-string/jumbo v4, "gray_voip_recommendation"

    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchBusiness:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2478
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchStatus:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->valueOf()I

    move-result v4

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchStatus:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->valueOf()I

    move-result v0

    if-ne v4, v0, :cond_3

    move v0, v1

    .line 2483
    :goto_2
    const-string/jumbo v4, "gray_voip_recommendation"

    invoke-static {v4, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2481
    goto :goto_2

    .line 2484
    :cond_4
    const-string/jumbo v4, "gray_ringtone_call_mode"

    iget-object v5, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchBusiness:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2486
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchStatus:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->GRAY_OPEN:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->valueOf()I

    move-result v4

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchModel;->switchStatus:Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchStatus;->valueOf()I

    move-result v0

    if-ne v4, v0, :cond_5

    move v0, v1

    .line 2491
    :goto_3
    const-string/jumbo v4, "gray_ringtone_call_mode"

    invoke-static {v4, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 2489
    goto :goto_3

    .line 1456
    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1499
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Load gray config error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 1500
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1499
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    return-void
.end method
