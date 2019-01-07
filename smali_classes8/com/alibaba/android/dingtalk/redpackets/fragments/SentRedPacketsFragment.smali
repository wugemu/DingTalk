.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
.super Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
.source "SentRedPacketsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;"
    }
.end annotation


# instance fields
.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->k:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 41
    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalRedEnvelop:I

    if-lez v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->j:Landroid/view/View;

    return-object p1
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 41
    .line 2137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    if-eqz v0, :cond_1

    .line 2140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a:Landroid/view/View;

    sget v1, Lcaj$d;->header_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2141
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a:Landroid/view/View;

    sget v2, Lcaj$d;->ll_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2142
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->a:Landroid/view/View;

    sget v3, Lcaj$d;->header_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2143
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcaj$b;->redpackets_red_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2144
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2145
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalRedEnvelop:I

    .line 2146
    sget v5, Lcaj$f;->redpackets_sent_total:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2147
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2148
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2151
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2153
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 2154
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    const/16 v7, 0x21

    invoke-virtual {v6, v4, v5, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2156
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2159
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    .line 2161
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    const-string/jumbo v0, "%.2f"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->l:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->mTotalAmount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment<TT;>;"
    const/4 v2, 0x0

    .line 183
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :cond_1
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 189
    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 190
    .local v1, "object":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;

    const/4 v3, 0x1

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;-><init>(ZJLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 8
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment<TT;>;"
    const/4 v2, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->m:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->m:Z

    .line 62
    if-eqz p1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_2
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;Z)V

    const-class v6, Lcma;

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 71
    invoke-interface {v0, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcbs;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lcaj$c;->redpackets_my_empty_icon:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SentRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lcaj$f;->redpackets_my_sent_empty_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 53
    return-object v0
.end method
