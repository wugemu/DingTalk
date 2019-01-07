.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;
.super Ljava/lang/Object;
.source "SentRedPacketsFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Z)V
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
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    .line 71
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;"
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 71
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Z)Z

    .line 1075
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->a:Z

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->f:I

    .line 1082
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mSentList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1083
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->a:Z

    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mSentList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1087
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mSentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_5

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->g:Z

    .line 1093
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->header_my_packets:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a:Landroid/view/View;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcaj$e;->redpackets_footer_view:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Landroid/view/View;)Landroid/view/View;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcaj$d;->rl_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Landroid/view/View;)Landroid/view/View;

    .line 1101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcaj$d;->tv_desc:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->d(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1107
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->a:Z

    if-eqz v0, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)V

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->d:Lcal;

    if-nez v0, :cond_6

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    new-instance v1, Lcal;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcal;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->d:Lcal;

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->d:Lcal;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1115
    :goto_1
    return-void

    .line 1090
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->g:Z

    goto/16 :goto_0

    .line 1115
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->d:Lcal;

    invoke-virtual {v0}, Lcal;->notifyDataSetChanged()V

    goto :goto_1

    .line 1118
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->g:Z

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 130
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Z)Z

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->f:I

    .line 132
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 126
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;"
    return-void
.end method
