.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;
.super Ljava/lang/Object;
.source "FaceRecordActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lgsu$c;)Lcma;
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
        "Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lgsu$c;

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;JLgsu$c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->a:J

    iput-object p4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

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

    .line 535
    check-cast p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1541
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v4, "FaceRecord"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v6, "[FaceRecord] validUserFace success: resultCode="

    aput-object v6, v5, v0

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    .line 1542
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v8

    const/4 v0, 0x2

    const-string/jumbo v6, ", use time : "

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget-wide v6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->a:J

    sub-long/2addr v2, v6

    .line 1543
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 1541
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1549
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1550
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    .line 1551
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_url"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->faceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_code"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_msg"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_mediaid"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_base_face_url"

    iget-object v2, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->baseFaceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    if-eqz v0, :cond_2

    .line 1560
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 1561
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    invoke-interface {v0, p1}, Lgsu$c;->b(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;)V

    .line 1576
    :cond_2
    :goto_1
    return-void

    .line 1542
    :cond_3
    const-string/jumbo v0, "null"

    goto/16 :goto_0

    .line 1563
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    invoke-interface {v0, p1}, Lgsu$c;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;)V

    goto :goto_1

    .line 1567
    :cond_5
    iget-object v0, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->resultCode:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;->reason:Ljava/lang/String;

    .line 1569
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1570
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_code"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_msg"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    :cond_6
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    if-eqz v2, :cond_2

    .line 1574
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    invoke-interface {v2, v0, v1}, Lgsu$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1578
    :cond_7
    const-string/jumbo v0, "unknown"

    .line 1579
    const-string/jumbo v1, "unknown"

    .line 1580
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1581
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_code"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "record_msg"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    :cond_8
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    if-eqz v2, :cond_2

    .line 1585
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    invoke-interface {v2, v0, v1}, Lgsu$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 595
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceRecord"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] validUserFace fail: code="

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

    .line 598
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->i(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "oa_m2_attendance_faceid_employ_error_timeout"

    invoke-interface {v0, v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 612
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    :cond_1
    :goto_1
    return-void

    .line 602
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "oa_m2_attendance_faceid_manager_error_timeout"

    invoke-interface {v0, v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 604
    :cond_3
    const-string/jumbo v0, "dido_face_already_exist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->i(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "oa_m2_attendance_faceid_employ_error_faceidrepeat"

    invoke-interface {v0, v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 608
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "oa_m2_attendance_faceid_manager_error_faceidrepeat"

    invoke-interface {v0, v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 616
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 617
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->c:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "record_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;->b:Lgsu$c;

    invoke-interface {v0, p1, p2}, Lgsu$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 591
    return-void
.end method
