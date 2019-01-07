.class public Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;
.super Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;
.source "DingCommentRemindFragmentV2.java"


# instance fields
.field public a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

.field private i:Lbaq$e;

.field private j:Layp;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbgi;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lbaq$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;-><init>(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->l:Lbaq$c;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;Lbaq$e;)Lbaq$e;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;
    .param p1, "x1"    # Lbaq$e;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->i:Lbaq$e;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    .prologue
    .line 30
    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgi;

    .line 1178
    if-eqz v0, :cond_0

    .line 2036
    iget-wide v0, v0, Lbgi;->e:J

    .line 1179
    iput-wide v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->g:J

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k()V

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    if-le v0, v1, :cond_1

    .line 1183
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCommentRemindFragmentV2] mUnreadCounts:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " mDataList.size():"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    .line 1184
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1183
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->j:Layp;

    invoke-virtual {v0}, Layp;->notifyDataSetChanged()V

    .line 30
    return-void

    .line 1187
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->i()V

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->j()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/widget/BaseAdapter;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    new-instance v0, Layp;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Layp;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->j:Layp;

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->j:Layp;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "intent_key_ding_comment_remind_num"

    return-object v0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    new-instance v0, Lbas;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->l:Lbaq$c;

    invoke-direct {v0, v1, v2}, Lbas;-><init>(Landroid/app/Activity;Lbaq$c;)V

    .line 57
    return-void
.end method

.method protected final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->i:Lbaq$e;

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->g:J

    sget v1, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->b:I

    invoke-interface {v0, v2, v3, v1}, Lbaq$e;->a(JI)V

    .line 67
    return-void
.end method

.method protected final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_message_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_new_reply:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 204
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->i:Lbaq$e;

    invoke-interface {v0}, Lbaq$e;->i()V

    .line 196
    invoke-super {p0}, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->onDestroy()V

    .line 197
    return-void
.end method
