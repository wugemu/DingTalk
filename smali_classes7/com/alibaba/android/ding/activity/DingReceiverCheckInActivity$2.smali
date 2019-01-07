.class final Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;
.super Ljava/lang/Object;
.source "DingReceiverCheckInActivity.java"

# interfaces
.implements Lbak$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->k(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/data/object/CheckInResultObject;)V
    .locals 12
    .param p1, "object"    # Lcom/alibaba/android/ding/data/object/CheckInResultObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->H_()V

    .line 105
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->b(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 108
    if-nez p1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v2, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$3;->a:[I

    .line 1078
    iget-object v3, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->a:Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;

    .line 112
    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$CheckInStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1366
    :pswitch_0
    const-string/jumbo v2, "ding_meeting_checkin_success"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_checkbox_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_success_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_success:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_success_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2112
    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 2120
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 132
    invoke-static {v2, v3, v4, v5}, Lbkm;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3112
    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 3120
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 133
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lbkm;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    .local v0, "charSequence":Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 135
    .local v1, "spannableString":Landroid/text/Editable;
    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 4112
    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 136
    invoke-static {v2, v3}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v1    # "spannableString":Landroid/text/Editable;
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->i(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 5120
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 5124
    iget-wide v6, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->e:J

    .line 142
    invoke-static {v4, v5, v6, v7}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 5112
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 140
    invoke-static {v4, v5}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5386
    :pswitch_1
    const-string/jumbo v2, "ding_meeting_checkin_checked"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_checkbox_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 159
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_success_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_successed:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_success_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6112
    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 6120
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 163
    invoke-static {v2, v3, v4, v5}, Lbkm;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7112
    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 7120
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 164
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lbkm;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 166
    .restart local v1    # "spannableString":Landroid/text/Editable;
    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 8112
    iget-wide v2, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 167
    invoke-static {v2, v3}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v1    # "spannableString":Landroid/text/Editable;
    :goto_4
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->i(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 9120
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->d:J

    .line 9124
    iget-wide v6, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->e:J

    .line 173
    invoke-static {v4, v5, v6, v7}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->h(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 9112
    iget-wide v4, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->b:J

    .line 171
    invoke-static {v4, v5}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 9374
    :pswitch_2
    const-string/jumbo v2, "ding_meeting_checkin_expired"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_clock_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_expired:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 9378
    :pswitch_3
    const-string/jumbo v2, "ding_meeting_checkin_notin"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_face_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 192
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 193
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_not_in:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 9382
    :pswitch_4
    const-string/jumbo v2, "ding_meeting_checkin_unstart"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->j(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$i;->dt_ding_meeting_check_in_not_start_tips_at:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 10059
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_check_in_ahead_time"

    const-wide/16 v8, 0x1e

    invoke-static {v6, v7, v8, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 201
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->j(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :goto_5
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_clock_fill_two:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ui_common_theme_text_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 214
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_not_start:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ui_common_theme_text_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 10370
    :pswitch_5
    const-string/jumbo v2, "ding_meeting_checkin_fail"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->j(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_face_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 224
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 225
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_failure:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->j(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    .line 11132
    iget-object v3, p1, Lcom/alibaba/android/ding/data/object/CheckInResultObject;->g:Ljava/lang/String;

    .line 228
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 11390
    :pswitch_6
    const-string/jumbo v2, "ding_meeting_checkin_canceled"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_face_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 235
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 236
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_canceled:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 240
    :pswitch_7
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    sget v3, Laxp$i;->icon_warn_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_meeting_check_in_qrcode_invalid:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->g(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    sget v4, Laxp$c;->ding_meeting_check_in_not_in_txt_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->finish()V

    .line 269
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->k(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 100
    check-cast p1, Lbak$a;

    .line 12252
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$2;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;Lbak$a;)Lbak$a;

    .line 100
    return-void
.end method
