.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;
.super Ljava/lang/Object;
.source "FaceRecordActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgsu$a;)V
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
        "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lgsu$a;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;JLgsu$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->a:J

    iput-object p4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 631
    check-cast p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;

    .line 1635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1637
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v4, "FaceRecord"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v6, "[FaceRecord] registerUserFace success:"

    aput-object v6, v5, v0

    if-nez p1, :cond_2

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v5, v8

    const/4 v0, 0x2

    const-string/jumbo v6, ", use time : "

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget-wide v6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->a:J

    sub-long/2addr v2, v6

    .line 1639
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 1637
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1645
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1646
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 1647
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_url"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->faceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_code"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_msg"

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    invoke-interface {v0}, Lgsu$a;->a()V

    .line 1675
    :cond_1
    :goto_1
    return-void

    .line 1637
    :cond_2
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->reason:Ljava/lang/String;

    goto :goto_0

    .line 1656
    :cond_3
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v8, v0, :cond_5

    .line 1657
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1658
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_url"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->faceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_code"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1660
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_msg"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    const-string/jumbo v1, "dido_face_already_exist"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgsu$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1666
    :cond_5
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->resultCode:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1667
    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterResultModel;->reason:Ljava/lang/String;

    .line 1668
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1669
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_code"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_msg"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    :cond_6
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    if-eqz v2, :cond_1

    .line 1673
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    invoke-interface {v2, v0, v1}, Lgsu$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1677
    :cond_7
    const-string/jumbo v0, "unknown"

    .line 1678
    const-string/jumbo v1, "unknown"

    .line 1680
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1681
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_code"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_msg"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    :cond_8
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    if-eqz v2, :cond_1

    .line 1685
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    invoke-interface {v2, v0, v1}, Lgsu$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecord"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] registerUserFace fail: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;->b:Lgsu$a;

    invoke-interface {v0, p1, p2}, Lgsu$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 691
    return-void
.end method
