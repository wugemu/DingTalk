.class final Lbbo$3;
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
        "Lbcj;",
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
    .line 1407
    iput-object p1, p0, Lbbo$3;->d:Lbbo;

    iput-object p2, p0, Lbbo$3;->a:Lcma;

    iput-object p3, p0, Lbbo$3;->b:Ljava/util/List;

    iput-object p4, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

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

    .line 1407
    check-cast p1, Lbcj;

    .line 2410
    if-nez p1, :cond_0

    .line 2411
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    iget-object v1, p0, Lbbo$3;->a:Lcma;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "send sent failed"

    .line 3139
    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    :goto_0
    return-void

    .line 2415
    :cond_0
    iget-object v0, p0, Lbbo$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2416
    iget-object v1, p1, Lbcj;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2417
    iget-object v1, p1, Lbcj;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2419
    :cond_1
    if-gtz v0, :cond_2

    .line 2420
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    iget-object v1, p0, Lbbo$3;->a:Lcma;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "send sent failed"

    .line 4139
    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2424
    :cond_2
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2425
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(I)V

    .line 2430
    :goto_1
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(I)V

    .line 2432
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2433
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 2434
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 2435
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;)V

    .line 2441
    :goto_2
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(I)V

    .line 2442
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p1, Lbcj;->b:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->c(Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p1, Lbcj;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->c(J)V

    .line 2444
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p1, Lbcj;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(J)V

    .line 2445
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v1, p0, Lbbo$3;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Ljava/util/List;)V

    .line 2448
    new-instance v0, Lbfx;

    iget-object v1, p1, Lbcj;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lbbo$3;->b:Ljava/util/List;

    iget-object v4, p1, Lbcj;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lbfx;-><init>(JLjava/util/List;J)V

    .line 2449
    invoke-static {}, Lbhk;->a()Lbhk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhk;->a(Lbfx;)V

    .line 2451
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Raw:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getMessageType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 2452
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    iget-object v1, p1, Lbcj;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    .line 2455
    :cond_3
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 2456
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lbcj;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lbcj;->e:Ljava/util/List;

    .line 2458
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2459
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 2460
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p1, Lbcj;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fileSpaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileSpaceId:Ljava/lang/String;

    .line 2461
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p1, Lbcj;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 2471
    :cond_4
    :goto_3
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    .line 5139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 2471
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbgp;->a(Ljava/util/List;)I

    .line 2475
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    .line 6139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2475
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->add(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 2477
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->ag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2479
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->d()V

    .line 2481
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    invoke-virtual {v0}, Lbbo;->b()V

    .line 2484
    :cond_5
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    iget-object v1, p0, Lbbo$3;->a:Lcma;

    iget-object v2, p1, Lbcj;->b:Ljava/lang/Long;

    .line 7139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 2486
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto/16 :goto_0

    .line 2427
    :cond_6
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->e(I)V

    goto/16 :goto_1

    .line 2437
    :cond_7
    iget-object v1, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 2438
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;)V

    goto/16 :goto_2

    .line 2463
    :cond_8
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p1, Lbcj;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 2464
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p1, Lbcj;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->authMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 2465
    iget-object v0, p0, Lbbo$3;->c:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, p1, Lbcj;->e:Ljava/util/List;

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
    .line 1495
    iget-object v0, p0, Lbbo$3;->d:Lbbo;

    iget-object v1, p0, Lbbo$3;->a:Lcma;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1491
    return-void
.end method
