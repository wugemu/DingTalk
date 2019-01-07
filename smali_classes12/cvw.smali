.class public final Lcvw;
.super Lcvy;
.source "GroupBillFromViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcvy;-><init>(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    if-eqz p1, :cond_0

    instance-of v8, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v8, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    .line 48
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 49
    .local v2, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v8, v8, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v8, :cond_0

    .line 53
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 55
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    .line 56
    .local v5, "isPaid":Z
    const/4 v4, 0x0

    .line 1097
    .local v4, "isNotNeedPay":Z
    invoke-static {p2}, Ldwo;->e(Lcom/alibaba/wukong/im/Message;)I

    move-result v7

    .line 58
    .local v7, "status":I
    invoke-static {p2}, Ldwo;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "amount":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    .line 2090
    invoke-static {p2}, Ldwo;->d(Lcom/alibaba/wukong/im/Message;)I

    move-result v6

    .line 62
    .local v6, "selfPayStatus":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 64
    iget-object v8, p0, Lcvw;->aa:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_pay_status_expired:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v8, p0, Lcvw;->Y:Landroid/widget/TextView;

    sget v9, Lctk$i;->icon_receipt_over_fill:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 91
    .end local v6    # "selfPayStatus":I
    :goto_1
    if-nez v5, :cond_2

    if-nez v4, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    :cond_2
    const/4 v3, 0x1

    .line 94
    .local v3, "isActivated":Z
    :goto_2
    iget-object v8, p0, Lcvw;->b:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setActivated(Z)V

    .line 95
    iget-object v8, p0, Lcvw;->S:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 66
    .end local v3    # "isActivated":Z
    .restart local v6    # "selfPayStatus":I
    :cond_3
    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 67
    const/4 v5, 0x1

    .line 68
    iget-object v8, p0, Lcvw;->aa:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_pay_u_already_paid_AT:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v8, p0, Lcvw;->Y:Landroid/widget/TextView;

    sget v9, Lctk$i;->icon_checkbox_select:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 71
    :cond_4
    iget-object v8, p0, Lcvw;->aa:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_pay_u_need_pay_AT:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v8, p0, Lcvw;->Y:Landroid/widget/TextView;

    sget v9, Lctk$i;->icon_receipt_fill:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 76
    .end local v6    # "selfPayStatus":I
    :cond_5
    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 78
    iget-object v8, p0, Lcvw;->aa:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_pay_status_expired:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v8, p0, Lcvw;->Y:Landroid/widget/TextView;

    sget v9, Lctk$i;->icon_receipt_over_fill:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 80
    :cond_6
    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 82
    iget-object v8, p0, Lcvw;->aa:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_pay_status_stopped:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v8, p0, Lcvw;->Y:Landroid/widget/TextView;

    sget v9, Lctk$i;->icon_receipt_over_fill:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 86
    :cond_7
    const/4 v4, 0x1

    .line 87
    iget-object v8, p0, Lcvw;->aa:Landroid/widget/TextView;

    sget v9, Lctk$i;->dt_pay_u_no_need_pay:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v8, p0, Lcvw;->Y:Landroid/widget/TextView;

    sget v9, Lctk$i;->icon_checkbox_select:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 91
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lctk$g;->chatting_item_group_bill:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 41
    return-void
.end method
