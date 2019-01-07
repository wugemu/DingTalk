.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$a;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Lbac$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/CreateEventActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 431
    .line 2444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 431
    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 506
    .line 4444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 506
    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    if-lez p1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 867
    .line 29444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 867
    if-nez v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    .line 30056
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30057
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->e:Z

    if-eqz v1, :cond_0

    .line 30058
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V
    .locals 2
    .param p1, "frequency"    # Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1133
    .line 47444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1133
    if-nez v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1137
    :cond_0
    if-nez p1, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->B(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->B(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;Z)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;
    .param p2, "userClick"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1016
    .line 42444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1016
    if-nez v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 1020
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 1021
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 1022
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->t(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 1023
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setSubBizType(I)V

    .line 1031
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->i(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_list_conference_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setSubBizType(I)V

    .line 1033
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->setVisibility(I)V

    .line 1034
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->k(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 1
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 637
    .line 13444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 637
    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->setDingAttachmentModule(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 1
    .param p1, "remindType"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 827
    .line 26444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 827
    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setRemindType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/services/core/PoiItem;)V
    .locals 3
    .param p1, "poiItem"    # Lcom/amap/api/services/core/PoiItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1117
    .line 46444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1117
    if-nez v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1121
    :cond_0
    if-nez p1, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget v2, Laxp$c;->ding_meeting_map_location_anchor_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lbac$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget v2, Laxp$c;->ui_common_theme_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbac$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 603
    .line 12444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 603
    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Z)V
    .locals 3
    .param p1, "recorderUid"    # Ljava/lang/Long;
    .param p2, "isDisable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 973
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setProfileUids(Ljava/util/Collection;)V

    .line 974
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c()V

    .line 976
    if-eqz p2, :cond_0

    .line 977
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b()V

    .line 979
    :cond_0
    return-void

    .line 973
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 704
    .line 15444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 704
    if-nez v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    .line 39444
    .local p1, "displayUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 983
    if-nez v0, :cond_0

    .line 988
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDisplayProfileUids(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .line 22444
    .local p1, "disableUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 783
    if-nez v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDisabledUids(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isEditMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 771
    .line 21444
    .local p1, "userIdentityObjectUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 771
    if-nez v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setProfileUids(Ljava/util/Collection;)V

    .line 776
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c()V

    .line 777
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setModifySelectedUser(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 496
    .line 3444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 496
    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setShowConcreteTime(Z)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 1
    .param p1, "isDisable"    # Z
    .param p2, "selectedNum"    # I

    .prologue
    .line 793
    .line 23444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 793
    if-nez v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setIsDisable(Z)V

    .line 798
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setSelectedNum(I)V

    .line 799
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0
.end method

.method public final a(ZJJ)V
    .locals 6
    .param p1, "isAllDayChecked"    # Z
    .param p2, "allDayStartTime"    # J
    .param p4, "startTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 907
    .line 33444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 907
    if-nez v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 912
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    .line 34362
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 913
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$3;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;)V

    .line 34414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 928
    :cond_1
    if-eqz p1, :cond_2

    .line 929
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 930
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    .line 35366
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 935
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto :goto_0

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 933
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->r(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 36366
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    goto :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 423
    .line 1444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 423
    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2
    .param p1, "dingFrom"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 724
    .line 17444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 724
    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDingFrom(I)V

    .line 731
    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setStartOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setEndOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->setAlpha(F)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 3
    .param p1, "endTime"    # J

    .prologue
    .line 877
    .line 30444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 877
    if-nez v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->h(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    .line 31074
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31075
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->e:Z

    if-eqz v1, :cond_0

    .line 31076
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->d:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 714
    .line 16444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 714
    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setCid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "locationCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 647
    .line 14444
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 647
    if-nez v3, :cond_0

    .line 14692
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14675
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14676
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14677
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14678
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14679
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 14680
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v3

    invoke-static {}, Lbju;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 654
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 655
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 658
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "[CreateEventPage]setEtAddressText failed"

    invoke-static {v3, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 664
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 14680
    goto :goto_2

    .line 14682
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14683
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14684
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 14685
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 14688
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 14689
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14690
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14691
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 14692
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v3

    invoke-static {}, Lbju;->l()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    .line 14694
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->o(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14695
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->n(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14696
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 14697
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->p(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1040
    .line 43444
    .local p1, "conflictList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 1040
    if-nez v3, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1044
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1046
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 44044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1047
    .local v0, "receiverId":J
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1048
    new-instance v2, Lbht;

    new-instance v3, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$5;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;JLjava/util/List;)V

    const-class v4, Lbht$a;

    iget-object v5, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbht$a;

    invoke-direct {v2, v0, v1, v3}, Lbht;-><init>(JLbht$a;)V

    .line 1070
    .local v2, "receiverUserProfileEvent":Lbht;
    invoke-virtual {v2}, Lbht;->a()V

    goto :goto_0

    .line 1072
    .end local v0    # "receiverId":J
    .end local v2    # "receiverUserProfileEvent":Lbht;
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "isEditMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 520
    .line 5444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 520
    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_2

    sget v0, Laxp$i;->dt_modify_event_op_modify:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget v0, Laxp$i;->dt_create_event_op_create:I

    goto :goto_1
.end method

.method public final b(ZJJ)V
    .locals 6
    .param p1, "isAllDayChecked"    # Z
    .param p2, "allDayEndTime"    # J
    .param p4, "endTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 940
    .line 36444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 940
    if-nez v0, :cond_0

    .line 969
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 945
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    .line 37362
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 946
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$4;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;)V

    .line 37414
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 961
    :cond_1
    if-eqz p1, :cond_2

    .line 962
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 963
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    .line 38366
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 968
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto :goto_0

    .line 965
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 966
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->s(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 39366
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    goto :goto_1
.end method

.method public final c(I)V
    .locals 2
    .param p1, "bizType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 741
    .line 18444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 741
    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setBizType(I)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 897
    .line 32444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 897
    if-nez v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->q(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->q(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "isEditMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 532
    .line 6444
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 532
    if-nez v3, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 538
    if-eqz p1, :cond_2

    .line 539
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 540
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 543
    .local v1, "charSequence":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    const/4 v2, 0x0

    .line 544
    .local v2, "subject":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 545
    .local v0, "canCreate":Z
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 546
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 543
    .end local v0    # "canCreate":Z
    .end local v2    # "subject":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 544
    .restart local v2    # "subject":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final d(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 805
    .line 24444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 805
    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a(I)V

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)V
    .locals 6
    .param p1, "conflictText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1077
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->w(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1084
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    sget v3, Laxp$i;->dt_ding_no_person_meeting_time_conflict:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "personConflict":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->x(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1091
    :goto_1
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-virtual {v2, v3, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 1092
    .local v1, "spannableString":Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->v(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->y(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_check_meeting_time:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1094
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->w(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1087
    .end local v0    # "personConflict":Ljava/lang/String;
    .end local v1    # "spannableString":Landroid/text/SpannableString;
    :cond_1
    move-object v0, p1

    .line 1088
    .restart local v0    # "personConflict":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->x(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 572
    .line 9444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 572
    if-nez v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->c(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->c(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 454
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$1;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method public final e(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 887
    .line 31444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 887
    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->q(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->q(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 582
    .line 10444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 582
    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 592
    .line 11444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 592
    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public final g()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method public final g(Z)V
    .locals 2
    .param p1, "isMailMessage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 751
    .line 19444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 751
    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setMailMessage(Z)V

    goto :goto_0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final h(Z)V
    .locals 1
    .param p1, "canSendToAll"    # Z

    .prologue
    .line 761
    .line 20444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 761
    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->f(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setCanSendToAll(Z)V

    goto :goto_0
.end method

.method public final i()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 857
    .line 28444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 857
    if-nez v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->j(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 552
    .line 7444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 552
    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final j(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 992
    .line 40444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 992
    if-nez v0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 562
    .line 8444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 562
    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->k(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final k(Z)V
    .locals 4
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1002
    .line 41444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1002
    if-nez v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->t(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->t(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->u(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->u(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1007
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1010
    goto :goto_2
.end method

.method public final l()Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getDingAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    const/4 v0, 0x0

    .line 616
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getDingAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 13326
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    goto :goto_0
.end method

.method public final l(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1108
    .line 45444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1108
    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->A(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final m()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->m(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v0

    .line 622
    .local v0, "recorderUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 623
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    .line 625
    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 631
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getDingAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .line 632
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->l(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getDingAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 816
    .line 25444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 816
    if-nez v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->g(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v1

    .line 26279
    iget-object v0, v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26280
    iget-object v0, v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26281
    iget-object v0, v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    sget v2, Laxp$e;->ding_remind_item_bg_blue_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26282
    iget-object v0, v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    sget v2, Laxp$e;->ding_bg_right_corner_3_stroke_blue_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26284
    iget-object v0, v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26285
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43880000    # 272.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public final p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 837
    .line 27444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 837
    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;-><init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 1099
    .line 44444
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1099
    if-nez v0, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->z(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V

    goto :goto_0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 414
    check-cast p1, Lbac$a;

    .line 48418
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;Lbac$a;)Lbac$a;

    .line 414
    return-void
.end method
