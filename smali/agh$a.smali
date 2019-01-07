.class public final Lagh$a;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

.field b:I

.field c:Landroid/text/format/Time;

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lagh$a;->c:Landroid/text/format/Time;

    .line 421
    return-void
.end method

.method static a(Landroid/text/format/Time;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)I
    .locals 13
    .param p0, "generated"    # Landroid/text/format/Time;
    .param p1, "r"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .prologue
    const/4 v12, 0x1

    .line 496
    const/4 v4, 0x0

    .line 504
    .local v4, "days":I
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 507
    .local v8, "lastDayThisMonth":I
    iget v3, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 508
    .local v3, "count":I
    if-lez v3, :cond_7

    .line 510
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 511
    .local v7, "j":I
    :goto_0
    const/16 v10, 0x8

    if-lt v7, v10, :cond_0

    .line 512
    add-int/lit8 v7, v7, -0x7

    goto :goto_0

    .line 514
    :cond_0
    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 515
    .local v5, "first":I
    if-lt v5, v7, :cond_2

    .line 516
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x1

    .line 525
    :goto_1
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    .line 526
    .local v0, "byday":[I
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    .line 527
    .local v1, "bydayNum":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_7

    .line 528
    aget v9, v1, v6

    .line 529
    .local v9, "v":I
    aget v10, v0, v6

    invoke-static {v10}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(I)I

    move-result v10

    sub-int/2addr v10, v5

    add-int/lit8 v7, v10, 0x1

    .line 530
    if-gtz v7, :cond_1

    .line 531
    add-int/lit8 v7, v7, 0x7

    .line 533
    :cond_1
    if-nez v9, :cond_3

    .line 535
    :goto_3
    if-gt v7, v8, :cond_4

    .line 538
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 535
    add-int/lit8 v7, v7, 0x7

    goto :goto_3

    .line 518
    .end local v0    # "byday":[I
    .end local v1    # "bydayNum":[I
    .end local v6    # "i":I
    .end local v9    # "v":I
    :cond_2
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x8

    goto :goto_1

    .line 541
    .restart local v0    # "byday":[I
    .restart local v1    # "bydayNum":[I
    .restart local v6    # "i":I
    .restart local v9    # "v":I
    :cond_3
    if-lez v9, :cond_5

    .line 544
    add-int/lit8 v10, v9, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v7, v10

    .line 545
    if-gt v7, v8, :cond_4

    .line 549
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 527
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 555
    :cond_5
    :goto_5
    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, 0x7

    goto :goto_5

    .line 561
    :cond_6
    mul-int/lit8 v10, v9, 0x7

    add-int/2addr v7, v10

    .line 562
    if-lez v7, :cond_4

    .line 565
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_4

    .line 575
    .end local v0    # "byday":[I
    .end local v1    # "bydayNum":[I
    .end local v5    # "first":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v9    # "v":I
    :cond_7
    iget v10, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_d

    .line 576
    iget v3, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    .line 577
    if-eqz v3, :cond_d

    .line 578
    iget-object v2, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    .line 579
    .local v2, "bymonthday":[I
    iget v10, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    if-nez v10, :cond_a

    .line 580
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v3, :cond_d

    .line 581
    aget v9, v2, v6

    .line 582
    .restart local v9    # "v":I
    if-ltz v9, :cond_9

    .line 583
    shl-int v10, v12, v9

    or-int/2addr v4, v10

    .line 580
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 585
    :cond_9
    add-int v10, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 586
    .restart local v7    # "j":I
    if-lez v7, :cond_8

    if-gt v7, v8, :cond_8

    .line 587
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_7

    .line 594
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v9    # "v":I
    :cond_a
    const/4 v7, 0x1

    .restart local v7    # "j":I
    :goto_8
    if-gt v7, v8, :cond_d

    .line 596
    shl-int v10, v12, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_c

    .line 597
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v3, :cond_b

    .line 598
    aget v10, v2, v6

    if-eq v10, v7, :cond_c

    .line 597
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 602
    :cond_b
    shl-int v10, v12, v7

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v4, v10

    .line 594
    .end local v6    # "i":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 609
    .end local v2    # "bymonthday":[I
    .end local v7    # "j":I
    :cond_d
    return v4
.end method
