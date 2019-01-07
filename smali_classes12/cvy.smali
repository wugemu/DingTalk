.class public abstract Lcvy;
.super Lctv;
.source "GroupBillViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected S:Landroid/view/View;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected aa:Landroid/widget/TextView;

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcvy;->b:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    sget v1, Lctk$f;->layout_bill:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcvy;->S:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvy;->Y:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvy;->Z:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    sget v1, Lctk$f;->tv_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvy;->aa:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcvy;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0, p2}, Lcvy;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    if-eqz p1, :cond_0

    instance-of v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p2}, Ldwo;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    iget-object v1, p0, Lcvy;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcvy;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcvy;->Z:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_pay_group_bill:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v2, p0, Lcvy;->X:Lcom/alibaba/wukong/im/Message;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v2, p0, Lcvy;->X:Lcom/alibaba/wukong/im/Message;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 72
    .local v1, "thirdPartyDo":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 75
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 76
    .local v0, "groupBillDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->linkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lcvy;->d:Landroid/app/Activity;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->linkUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
