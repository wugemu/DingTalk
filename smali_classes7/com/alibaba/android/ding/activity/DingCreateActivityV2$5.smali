.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->UNSET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    invoke-interface {v0, v1}, Lazy$a;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;)V

    .line 1475
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lazy$a;->b(J)V

    .line 1476
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$b;

    move-result-object v0

    invoke-interface {v0}, Lazy$b;->o()V

    .line 1477
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "timeMillis"    # J

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->e()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v2, Laxp$i;->ding_invalid_date_too_early:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 1470
    :goto_0
    return-void

    .line 1460
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1461
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1462
    invoke-static {v0}, Lcog;->a(Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v2, Laxp$i;->ding_invalid_date_too_later_1_year:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1466
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->SET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    invoke-interface {v1, v2}, Lazy$a;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;)V

    .line 1467
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lazy$a;->b(J)V

    .line 1468
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->FIFTY_MINUTES:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    invoke-interface {v1, v2}, Lazy$a;->a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;)V

    .line 1469
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$5;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$b;

    move-result-object v1

    invoke-interface {v1}, Lazy$b;->o()V

    goto :goto_0
.end method
