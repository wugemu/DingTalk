.class public final Lbkm;
.super Ljava/lang/Object;
.source "MeetingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/32 v10, 0xea60

    const-wide/32 v6, 0x36ee80

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 69
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "("

    aput-object v0, v2, v9

    .line 2088
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2090
    const-wide/32 v4, 0x5265c00

    cmp-long v0, p0, v4

    if-ltz v0, :cond_0

    .line 2092
    sget v0, Laxp$i;->and_elapsed_time_above_one_day:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2093
    sget v4, Laxp$i;->and_elapsed_time_above_day_prefix:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string/jumbo v1, ")"

    aput-object v1, v2, v0

    .line 69
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbjn;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2094
    :cond_0
    cmp-long v0, p0, v6

    if-ltz v0, :cond_2

    .line 2096
    div-long v4, p0, v6

    long-to-int v4, v4

    .line 2097
    rem-long v6, p0, v6

    .line 2098
    div-long/2addr v6, v10

    long-to-int v0, v6

    .line 2099
    if-nez v0, :cond_1

    move v0, v1

    .line 2103
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 2104
    sget v6, Laxp$h;->and_ding_plurals_hours:I

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2105
    sget v4, Laxp$h;->and_ding_plurals_minutes:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2106
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2107
    sget v4, Laxp$i;->and_elapsed_time_above_prefix:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2110
    :cond_2
    div-long v4, p0, v10

    long-to-int v0, v4

    .line 2111
    if-nez v0, :cond_3

    move v0, v1

    .line 2114
    :cond_3
    sget v4, Laxp$h;->and_ding_plurals_minutes:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    sget v4, Laxp$i;->and_elapsed_time_above_prefix:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(JLcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 4
    .param p0, "dingId"    # J
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 123
    invoke-static {p0, p1}, Lbkh;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const-string/jumbo v1, "[MeetingUtil] exportCheckInDetail failed"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "dingId is invalidate"

    invoke-static {v1, v2, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lbkm$1;

    invoke-direct {v0, p2}, Lbkm$1;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 165
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    sget v1, Laxp$i;->dt_processing_please_wait:I

    invoke-virtual {p2, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 166
    const-class v1, Lcma;

    invoke-static {v0, v1, p2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 167
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 2133
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$4;

    invoke-direct {v3, v1, p0, p1, v0}, Lbbp$4;-><init>(Lbbp;JLcma;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;I)V
    .locals 2
    .param p0, "textView"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p1, "subBizType"    # I

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 48
    sget v0, Laxp$i;->icon_conf_video_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 54
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$c;->ding_biz_meeting:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 50
    sget v0, Laxp$i;->icon_phonemeeting_fi:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 52
    :cond_2
    sget v0, Laxp$i;->icon_conference_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1
.end method

.method public static a(JJ)Z
    .locals 2
    .param p0, "millis"    # J
    .param p2, "compareMillis"    # J

    .prologue
    .line 65
    const-wide/32 v0, 0xea60

    add-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/idl/EventModel;Z)Z
    .locals 3
    .param p0, "eventModel"    # Lcom/alibaba/android/ding/base/objects/idl/EventModel;
    .param p1, "enable"    # Z

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v2, "checkInEnable"

    if-eqz p1, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_1
.end method
