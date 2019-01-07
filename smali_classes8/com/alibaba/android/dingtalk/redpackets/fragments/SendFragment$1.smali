.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V
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
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 317
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 1320
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->c()V

    .line 1324
    if-nez p1, :cond_2

    .line 1325
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    const-string/jumbo v2, "sendV4 generateRedEnvelopClusterV3 return is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_1
    :goto_0
    return-void

    .line 1328
    :cond_2
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "sendV4 clid:"

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string/jumbo v3, " type:"

    aput-object v3, v2, v5

    iget v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    .line 1329
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1328
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1333
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    const-string/jumbo v2, "sendV4 generateRedEnvelopClusterV3 luckytime redPacket return planTime is 0"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    sget v1, Lcaj$f;->unknown_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    :cond_3
    if-eqz p1, :cond_1

    .line 1339
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "send"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sendV4 payRunnable clid:"

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string/jumbo v3, " type:"

    aput-object v3, v2, v5

    iget v3, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    .line 1341
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string/jumbo v3, ", senderPayType:"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->senderPayType:I

    .line 1342
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1340
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->senderPayType:I

    if-nez v0, :cond_4

    .line 1345
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    .line 1362
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1363
    const-string/jumbo v0, "SendRedpackets"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1366
    :cond_4
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->senderPayType:I

    if-ne v0, v5, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    sget v1, Lcaj$f;->redpackets_processing:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a(I)V

    .line 1368
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->alipayOrderString:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V

    invoke-virtual {v0, v1, v2}, Lcbs;->b(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 423
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->b:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    :cond_0
    const-string/jumbo v2, "redpackets"

    const-string/jumbo v3, "sendV4 "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "sendV4 onException code:"

    aput-object v6, v4, v5

    aput-object p1, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ";reason:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    .line 429
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v1, "dt":Ljava/util/HashMap;
    const-string/jumbo v2, "cluster"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u751f\u6210\u7ea2\u5305\u7c07\u5931\u8d25\uff08\u7f51\u7edc\u6b63\u5e38\uff09"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 436
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "redpackets"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 437
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 438
    const/16 v2, 0x44d

    iput v2, v0, Lhzu;->c:I

    .line 439
    const-string/jumbo v2, "\u53d1\u7ea2\u5305\u5931\u8d25"

    iput-object v2, v0, Lhzu;->d:Ljava/lang/String;

    .line 440
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    .line 442
    .end local v0    # "alarm":Lhzu;
    .end local v1    # "dt":Ljava/util/HashMap;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->c()V

    .line 443
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 419
    return-void
.end method
