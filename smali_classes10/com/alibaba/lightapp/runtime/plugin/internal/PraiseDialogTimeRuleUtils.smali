.class public Lcom/alibaba/lightapp/runtime/plugin/internal/PraiseDialogTimeRuleUtils;
.super Ljava/lang/Object;
.source "PraiseDialogTimeRuleUtils.java"


# static fields
.field private static final KEY_FOR_RATING_AND_FEEDBACK:Ljava/lang/String; = "key_for_rating_and_feedback"

.field private static final MONTH:J = 0x9a7ec800L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRatingAndFeedBackKeyUnChecked(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "key_for_rating_and_feedback"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isExceedAllOccasionLimit(J)Z
    .locals 6
    .param p0, "curTime"    # J

    .prologue
    .line 26
    const-string/jumbo v2, "key_for_rating_and_feedback"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 27
    .local v0, "customerLastShowTime":J
    sub-long v2, p0, v0

    const-wide v4, 0x9a7ec800L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExceedOccasionLimit(JLjava/lang/String;)Z
    .locals 8
    .param p0, "curTime"    # J
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PraiseDialogTimeRuleUtils;->getRatingAndFeedBackKeyUnChecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 38
    .local v2, "lastShowTime":J
    sub-long v4, p0, v2

    const-wide v6, 0x1cf7c5800L

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static saveTime(Ljava/lang/String;J)V
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "curTime"    # J

    .prologue
    .line 47
    const-string/jumbo v0, "key_for_rating_and_feedback"

    invoke-static {v0, p1, p2}, Lcpk;->b(Ljava/lang/String;J)V

    .line 48
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PraiseDialogTimeRuleUtils;->getRatingAndFeedBackKeyUnChecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcpk;->b(Ljava/lang/String;J)V

    .line 49
    return-void
.end method
