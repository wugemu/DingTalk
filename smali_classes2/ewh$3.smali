.class final Lewh$3;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;

.field final synthetic b:Lewh;


# direct methods
.method constructor <init>(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 563
    iput-object p1, p0, Lewh$3;->b:Lewh;

    iput-object p2, p0, Lewh$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 563
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchRspModel;

    .line 1566
    if-nez p1, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchRspModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    iget-object v1, p0, Lewh$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityTypeEnum;

    if-ne v0, v1, :cond_0

    .line 1573
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchRspModel;->enable:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchRspModel;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1574
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activity enable true"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lewh$3;->b:Lewh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lewh;->j(Lewh;Z)Z

    goto :goto_0

    .line 1577
    :cond_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activity enable false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lewh$3;->b:Lewh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewh;->j(Lewh;Z)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 585
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get activity status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lewh$3;->b:Lewh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewh;->j(Lewh;Z)Z

    .line 587
    return-void
.end method
