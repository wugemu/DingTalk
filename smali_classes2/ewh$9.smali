.class final Lewh$9;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh;->a(ZLcma;)V
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

.field final synthetic c:Lewh;


# direct methods
.method constructor <init>(Lewh;ZLcma;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 1320
    iput-object p1, p0, Lewh$9;->c:Lewh;

    iput-boolean p2, p0, Lewh$9;->a:Z

    iput-object p3, p0, Lewh$9;->b:Lcma;

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
    const/4 v0, 0x0

    .line 1320
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;

    .line 2323
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    .line 2325
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 2326
    :cond_0
    iget-boolean v1, p0, Lewh$9;->a:Z

    if-eqz v1, :cond_1

    .line 2327
    iget-object v1, p0, Lewh$9;->b:Lcma;

    if-eqz v1, :cond_1

    .line 2328
    iget-object v1, p0, Lewh$9;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2331
    :cond_1
    :goto_0
    return-void

    .line 2335
    :cond_2
    iget-object v1, p0, Lewh$9;->c:Lewh;

    invoke-static {v1, p1}, Lewh;->a(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;)Ljava/util/List;

    move-result-object v1

    .line 2336
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2337
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lewh$c;

    .line 2338
    iget-object v1, p0, Lewh$9;->c:Lewh;

    invoke-static {v1, v0}, Lewh;->a(Lewh;Lewh$c;)V

    .line 2340
    iget-object v0, v0, Lewh$c;->b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2342
    :cond_3
    iget-boolean v1, p0, Lewh$9;->a:Z

    if-eqz v1, :cond_1

    .line 2343
    iget-object v1, p0, Lewh$9;->b:Lcma;

    if-eqz v1, :cond_1

    .line 2344
    iget-object v1, p0, Lewh$9;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1351
    iget-boolean v0, p0, Lewh$9;->a:Z

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lewh$9;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lewh$9;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :cond_0
    return-void
.end method
