.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;JLjava/lang/String;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->g:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->b:J

    iput-object p5, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->d:Landroid/app/Activity;

    iput-object p7, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->e:Lcom/alibaba/wukong/im/Conversation;

    iput-object p8, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 280
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1284
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, "check"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "senderId:"

    aput-object v4, v2, v3

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, " clusterId "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string/jumbo v3, " status "

    aput-object v3, v2, v7

    const/4 v3, 0x5

    iget v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    if-eq v0, v7, :cond_0

    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    if-ne v0, v6, :cond_3

    .line 1288
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->d:Landroid/app/Activity;

    const-class v2, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1289
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v1, :cond_2

    .line 1290
    const-string/jumbo v1, "cluster"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1294
    :cond_1
    :goto_0
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1295
    const-string/jumbo v1, "pick_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1296
    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1307
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->c:Ljava/lang/String;

    iget v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    invoke-static {v0, v1, v2}, Lcbw;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 280
    return-void

    .line 1291
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    if-eqz v1, :cond_1

    .line 1292
    const-string/jumbo v1, "cluster"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->detail:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterDetailObject;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1299
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->d:Landroid/app/Activity;

    invoke-static {}, Lcbw;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    :goto_2
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1301
    const-string/jumbo v0, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1302
    const-string/jumbo v0, "pick_status"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1303
    const-string/jumbo v0, "package_name"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1299
    :cond_4
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 317
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 318
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v1, "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "senderId"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v2, "clusterId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u68c0\u67e5\u7ea2\u5305\u72b6\u6001\uff08\u7f51\u7edc\u6b63\u5e38\uff09"

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

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 325
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "redpackets"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 326
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 327
    const/16 v2, 0x44e

    iput v2, v0, Lhzu;->c:I

    .line 328
    const-string/jumbo v2, "\u62a2\u7ea2\u5305\u5931\u8d25"

    iput-object v2, v0, Lhzu;->d:Ljava/lang/String;

    .line 329
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    .line 331
    .end local v0    # "alarm":Lhzu;
    .end local v1    # "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 313
    return-void
.end method
