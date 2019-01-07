.class final Lbbo$4;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
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
        "Lbfy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Ljava/util/List;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 1519
    iput-object p1, p0, Lbbo$4;->d:Lbbo;

    iput-object p2, p0, Lbbo$4;->a:Lcma;

    iput-object p3, p0, Lbbo$4;->b:Ljava/util/List;

    iput-object p4, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1519
    check-cast p1, Lbfy;

    .line 2522
    if-nez p1, :cond_0

    .line 2523
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    iget-object v1, p0, Lbbo$4;->a:Lcma;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "send sent failed"

    .line 3139
    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    :goto_0
    return-void

    .line 2527
    :cond_0
    iget-object v0, p0, Lbbo$4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2528
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2529
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(I)V

    .line 2534
    :goto_1
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(I)V

    .line 2536
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2537
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 2538
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 2539
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;)V

    .line 2545
    :goto_2
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(I)V

    .line 2546
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 4023
    iget-wide v2, p1, Lbfy;->a:J

    .line 2546
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->c(Ljava/lang/String;)V

    .line 2547
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 4031
    iget-wide v2, p1, Lbfy;->b:J

    .line 2547
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->c(J)V

    .line 2548
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 5031
    iget-wide v2, p1, Lbfy;->b:J

    .line 2548
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(J)V

    .line 2549
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p0, Lbbo$4;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Ljava/util/List;)V

    .line 2552
    new-instance v0, Lbfx;

    .line 6023
    iget-wide v1, p1, Lbfy;->a:J

    .line 2552
    iget-object v3, p0, Lbbo$4;->b:Ljava/util/List;

    .line 6031
    iget-wide v4, p1, Lbfy;->b:J

    .line 2552
    invoke-direct/range {v0 .. v5}, Lbfx;-><init>(JLjava/util/List;J)V

    .line 2553
    invoke-static {}, Lbhk;->a()Lbhk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhk;->a(Lbfx;)V

    .line 2555
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getMessageType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2556
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 7031
    iget-wide v2, p1, Lbfy;->b:J

    .line 2556
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    .line 2559
    :cond_1
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 2560
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7039
    iget-object v0, p1, Lbfy;->c:Ljava/util/List;

    .line 2561
    if-eqz v0, :cond_2

    .line 8039
    iget-object v0, p1, Lbfy;->c:Ljava/util/List;

    .line 2562
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2563
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2564
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 9039
    iget-object v1, p1, Lbfy;->c:Ljava/util/List;

    .line 2564
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fileSpaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    .line 2565
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 10039
    iget-object v1, p1, Lbfy;->c:Ljava/util/List;

    .line 2565
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 2575
    :cond_2
    :goto_3
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    .line 13139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2575
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbgp;->a(Ljava/util/List;)I

    .line 2579
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    .line 14139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2579
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->add(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 2581
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->ag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2583
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->d()V

    .line 2585
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()V

    .line 2588
    :cond_3
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    iget-object v1, p0, Lbbo$4;->a:Lcma;

    .line 15023
    iget-wide v2, p1, Lbfy;->a:J

    .line 2588
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 15139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2531
    :cond_4
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(I)V

    goto/16 :goto_1

    .line 2541
    :cond_5
    iget-object v1, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 2542
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;)V

    goto/16 :goto_2

    .line 2567
    :cond_6
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 11039
    iget-object v1, p1, Lbfy;->c:Ljava/util/List;

    .line 2567
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 2568
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 12039
    iget-object v1, p1, Lbfy;->c:Ljava/util/List;

    .line 2568
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 2569
    iget-object v0, p0, Lbbo$4;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 13039
    iget-object v1, p1, Lbfy;->c:Ljava/util/List;

    .line 2569
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1597
    iget-object v0, p0, Lbbo$4;->d:Lbbo;

    iget-object v1, p0, Lbbo$4;->a:Lcma;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1593
    return-void
.end method
