.class final Lewh$10;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh;->b(ZLcma;)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcma;

.field final synthetic c:Z

.field final synthetic d:Lewh;


# direct methods
.method constructor <init>(Lewh;ZLcma;Z)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 1379
    iput-object p1, p0, Lewh$10;->d:Lewh;

    iput-boolean p2, p0, Lewh$10;->a:Z

    iput-object p3, p0, Lewh$10;->b:Lcma;

    iput-boolean p4, p0, Lewh$10;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1379
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;

    .line 2382
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 2383
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Pull all numbers fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    iget-boolean v0, p0, Lewh$10;->a:Z

    if-eqz v0, :cond_1

    .line 2385
    iget-object v0, p0, Lewh$10;->b:Lcma;

    if-eqz v0, :cond_1

    .line 2386
    iget-object v0, p0, Lewh$10;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2389
    :cond_1
    :goto_0
    return-void

    .line 2391
    :cond_2
    iget-boolean v0, p0, Lewh$10;->c:Z

    if-eqz v0, :cond_3

    .line 2392
    iget-object v0, p0, Lewh$10;->d:Lewh;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->numInfoList:Ljava/util/List;

    invoke-static {v0, v1}, Lewh;->a(Lewh;Ljava/util/List;)V

    .line 2395
    :cond_3
    iget-object v0, p0, Lewh$10;->d:Lewh;

    invoke-static {v0, p1}, Lewh;->b(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/lang/String;

    move-result-object v0

    .line 2396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2397
    const-string/jumbo v1, "conf_biz_number_infos"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    :cond_4
    iget-boolean v1, p0, Lewh$10;->a:Z

    if-eqz v1, :cond_1

    .line 2401
    iget-object v1, p0, Lewh$10;->d:Lewh;

    invoke-static {v1, v0}, Lewh;->a(Lewh;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2402
    if-eqz v0, :cond_1

    .line 2403
    iget-object v1, p0, Lewh$10;->b:Lcma;

    if-eqz v1, :cond_1

    .line 2404
    iget-object v1, p0, Lewh$10;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
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
    .line 1412
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Pull all numbers fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-boolean v0, p0, Lewh$10;->a:Z

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lewh$10;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lewh$10;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1418
    :cond_0
    return-void
.end method
