.class public abstract Lcty;
.super Lctv;
.source "AlipayRedPacketsViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcty;Landroid/app/Activity;)V
    .locals 5
    .param p0, "x0"    # Lcty;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 43
    .line 1090
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 1094
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1095
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1096
    const-string/jumbo v3, "resource"

    sget v4, Lctk$e;->alipay_download_guide:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1097
    const-string/jumbo v3, "title"

    sget v4, Lctk$i;->alipay_download_guide_title:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string/jumbo v3, "content"

    sget v4, Lctk$i;->alipay_download_guide_content:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 1101
    sget v1, Lctk$i;->cancel:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2083
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 1102
    new-instance v1, Lcty$2;

    invoke-direct {v1, p0, v0}, Lcty$2;-><init>(Lcty;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 2091
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 1108
    sget v1, Lctk$i;->alipay_download_guide_sure:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3079
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 1109
    new-instance v1, Lcty$3;

    invoke-direct {v1, p0, v0, p1}, Lcty$3;-><init>(Lcty;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Landroid/app/Activity;)V

    .line 3095
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 1116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 1117
    new-instance v1, Lcty$4;

    invoke-direct {v1, p0, v0}, Lcty$4;-><init>(Lcty;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 3099
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 1123
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p0, p2}, Lcty;->c(Landroid/view/View;)V

    .line 129
    sget v0, Lctk$f;->tv_redpackets_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcty;->b:Landroid/widget/TextView;

    .line 130
    sget v0, Lctk$f;->redpackets_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcty;->S:Landroid/widget/TextView;

    .line 131
    return-void
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
    .line 54
    invoke-virtual {p0, p1, p2}, Lcty;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 55
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    if-eqz v1, :cond_0

    .line 56
    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    .line 57
    .local v0, "data":Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcty;->S:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Lcty;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    iget-object v1, p0, Lcty;->r:Landroid/view/View;

    new-instance v2, Lcty$1;

    invoke-direct {v2, p0, v0, p1}, Lcty$1;-><init>(Lcty;Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
    :cond_0
    return-void

    .line 60
    .restart local v0    # "data":Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
    :cond_1
    iget-object v1, p0, Lcty;->S:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcty;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected abstract c(Landroid/view/View;)V
.end method
