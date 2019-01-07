.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;
.super Ljava/lang/Object;
.source "ReceivedRedPacketsFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .prologue
    .line 72
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;"
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 72
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0, v9}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Z)Z

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->f:I

    .line 1077
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->a:Z

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .line 1168
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mTotalRedEnvelop:I

    if-lez v1, :cond_5

    .line 1169
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1170
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 1083
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mReceivedList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1084
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->a:Z

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mReceivedList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1089
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mReceivedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iput-boolean v9, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->g:Z

    .line 1094
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->header_my_packets:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a:Landroid/view/View;

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->redpackets_footer_view:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Landroid/view/View;)Landroid/view/View;

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcaj$d;->rl_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Landroid/view/View;)Landroid/view/View;

    .line 1102
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcaj$d;->tv_desc:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1108
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->a:Z

    if-eqz v0, :cond_4

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .line 2142
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a:Landroid/view/View;

    sget v1, Lcaj$d;->header_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2143
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a:Landroid/view/View;

    sget v3, Lcaj$d;->ll_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2144
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a:Landroid/view/View;

    sget v4, Lcaj$d;->header_content:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2145
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcaj$b;->redpackets_red_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2146
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2147
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mTotalRedEnvelop:I

    .line 2148
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2149
    sget v6, Lcaj$f;->redpackets_received_total:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2151
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 2152
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    .line 2153
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2154
    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2155
    const/16 v6, 0x21

    invoke-virtual {v8, v5, v7, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2156
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mTotalAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2159
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->d:Lcal;

    if-nez v0, :cond_8

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    new-instance v1, Lcal;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->c()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcal;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->d:Lcal;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->d:Lcal;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1117
    :goto_3
    return-void

    .line 1172
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1173
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1092
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iput-boolean v11, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->g:Z

    goto/16 :goto_1

    .line 2161
    :cond_7
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    const-string/jumbo v0, "%.2f"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;->mTotalAmount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1117
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->d:Lcal;

    invoke-virtual {v0}, Lcal;->notifyDataSetChanged()V

    goto :goto_3

    .line 1120
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    iput-boolean v9, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->g:Z

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Z)Z

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->f:I

    .line 135
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 129
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;"
    return-void
.end method
