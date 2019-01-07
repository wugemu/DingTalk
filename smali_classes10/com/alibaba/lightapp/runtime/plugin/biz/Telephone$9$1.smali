.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->run()V
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
        "Lgws;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lgws;)V
    .locals 4
    .param p1, "quickCallResult"    # Lgws;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 578
    if-eqz p1, :cond_3

    iget-boolean v1, p1, Lgws;->a:Z

    if-eqz v1, :cond_3

    .line 580
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 581
    .local v0, "object":Lorg/json/JSONObject;
    iget v1, p1, Lgws;->b:I

    if-eqz v1, :cond_0

    .line 582
    const-string/jumbo v1, "callType"

    iget v2, p1, Lgws;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 585
    :cond_0
    iget-object v1, p1, Lgws;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    const-string/jumbo v1, "callId"

    iget-object v2, p1, Lgws;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    :cond_1
    iget-object v1, p1, Lgws;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 589
    const-string/jumbo v1, "callTypeList"

    iget-object v2, p1, Lgws;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v1

    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "quickCallResult parse Exception"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v1, "9"

    const-string/jumbo v2, "quickCallResult is empty"

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_3
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "quickCallResult is empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string/jumbo v1, "9"

    const-string/jumbo v2, "quickCallResult is empty"

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 575
    check-cast p1, Lgws;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->onDataReceived(Lgws;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 611
    :try_start_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 612
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "showQuickcallListMenu: "

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 613
    const-string/jumbo v3, "onException"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 614
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 615
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 616
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 617
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 618
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 619
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 620
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 631
    .local v2, "errorCode":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v2, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 632
    return-void

    .line 621
    .end local v2    # "errorCode":I
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 629
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    const/16 v2, 0x9

    .restart local v2    # "errorCode":I
    goto :goto_1
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 606
    return-void
.end method
