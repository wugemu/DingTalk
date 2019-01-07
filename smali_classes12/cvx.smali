.class public final Lcvx;
.super Lcvy;
.source "GroupBillToViewHolder.java"


# instance fields
.field protected a:Ldac;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcvy;-><init>(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    if-eqz p1, :cond_0

    instance-of v6, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v6, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p2

    .line 49
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 50
    .local v1, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v6, :cond_0

    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1339
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_3

    .line 1340
    const-string/jumbo v6, "group_bill_paid_count"

    invoke-interface {p2, v6}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 2097
    .local v3, "paidCount":I
    :goto_1
    invoke-static {p2}, Ldwo;->e(Lcom/alibaba/wukong/im/Message;)I

    move-result v4

    .line 59
    .local v4, "status":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 61
    iget-object v6, p0, Lcvx;->aa:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_pay_bill_status_expired:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v6, p0, Lcvx;->Y:Landroid/widget/TextView;

    sget v7, Lctk$i;->icon_receipt_over_fill:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_2
    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_a

    :cond_2
    const/4 v2, 0x1

    .line 85
    .local v2, "isActivated":Z
    :goto_3
    iget-object v6, p0, Lcvx;->b:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setActivated(Z)V

    .line 86
    iget-object v6, p0, Lcvx;->S:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setActivated(Z)V

    .line 88
    iget-object v6, p0, Lcvx;->a:Ldac;

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, p0, Lcvx;->a:Ldac;

    iget-boolean v7, p0, Lcvx;->T:Z

    invoke-virtual {v6, p1, p2, v7}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_0

    .line 1343
    .end local v2    # "isActivated":Z
    .end local v3    # "paidCount":I
    .end local v4    # "status":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 63
    .restart local v3    # "paidCount":I
    .restart local v4    # "status":I
    :cond_4
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 65
    iget-object v6, p0, Lcvx;->aa:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_pay_status_finished:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object v6, p0, Lcvx;->Y:Landroid/widget/TextView;

    sget v7, Lctk$i;->icon_checkbox_select:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 67
    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 69
    iget-object v6, p0, Lcvx;->aa:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_pay_status_stopped:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v6, p0, Lcvx;->Y:Landroid/widget/TextView;

    sget v7, Lctk$i;->icon_receipt_over_fill:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 71
    :cond_6
    if-lez v3, :cond_9

    .line 3097
    invoke-static {p2}, Ldwo;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    move-result-object v6

    .line 3098
    if-eqz v6, :cond_7

    iget-object v7, v6, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    if-nez v7, :cond_8

    .line 3099
    :cond_7
    const/4 v6, 0x0

    .line 73
    :goto_4
    sub-int v5, v6, v3

    .line 74
    .local v5, "unPaidCount":I
    iget-object v6, p0, Lcvx;->aa:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_pay_status_gathering_AT:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v6, p0, Lcvx;->Y:Landroid/widget/TextView;

    sget v7, Lctk$i;->icon_receipt_fill:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 3102
    .end local v5    # "unPaidCount":I
    :cond_8
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    array-length v6, v6

    goto :goto_4

    .line 78
    :cond_9
    iget-object v6, p0, Lcvx;->aa:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_pay_start_receipt_by_self:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v6, p0, Lcvx;->Y:Landroid/widget/TextView;

    sget v7, Lctk$i;->icon_receipt_fill:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 82
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lctk$g;->chatting_item_group_bill:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcvx;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcvx;->a:Ldac;

    .line 42
    return-void
.end method
