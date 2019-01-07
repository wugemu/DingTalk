.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 3737
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 3777
    return-void
.end method

.method public final a(J)V
    .locals 7
    .param p1, "timeMillis"    # J

    .prologue
    .line 3745
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3772
    :goto_0
    return-void

    .line 3749
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    .line 3750
    .local v0, "blockTime":J
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    .line 3753
    .local v4, "createTime":J
    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 3754
    sget v3, Laxp$i;->dt_ding_modify_time_none_change_tips:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 3758
    :cond_1
    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    .line 3759
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v6, Laxp$i;->dt_ding_invalid_date_early_than_create_at:I

    invoke-virtual {v3, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3763
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3764
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3766
    invoke-static {v2}, Lcog;->a(Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3767
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v6, Laxp$i;->ding_invalid_date_too_later_1_year:I

    invoke-virtual {v3, v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3771
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$50;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lbaf$a;->a(J)V

    goto :goto_0
.end method
