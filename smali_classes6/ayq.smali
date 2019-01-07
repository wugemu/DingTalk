.class public final Layq;
.super Lcq;
.source "DingNotifyCenterPageAdapterV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# instance fields
.field public a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

.field public b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

.field private c:[Ljava/lang/String;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

.field private h:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn;IILcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Lcn;
    .param p3, "unReadCounts"    # I
    .param p4, "unReadCommentCounts"    # I
    .param p5, "unReadCountChangeListener"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;
    .param p6, "commentRemindCountChangeListener"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 48
    iput p3, p0, Layq;->e:I

    .line 49
    iput p4, p0, Layq;->f:I

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Laxp$i;->dt_ding_notifycenter_unread_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Laxp$i;->dt_ding_notifycenter_newcomment_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Layq;->c:[Ljava/lang/String;

    .line 51
    iput-object p5, p0, Layq;->g:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 52
    iput-object p6, p0, Layq;->h:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Layq;->d:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Layq;->d:Landroid/util/SparseArray;

    .line 71
    :cond_0
    iget-object v1, p0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    if-nez v1, :cond_1

    .line 72
    new-instance v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-direct {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;-><init>()V

    iput-object v1, p0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_ding_unread_num"

    iget v2, p0, Layq;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object v1, p0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 76
    iget-object v1, p0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget-object v2, p0, Layq;->g:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 1045
    iput-object v2, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 77
    iget-object v1, p0, Layq;->d:Landroid/util/SparseArray;

    const/4 v2, 0x0

    iget-object v3, p0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    if-nez v1, :cond_2

    .line 81
    new-instance v1, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-direct {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;-><init>()V

    iput-object v1, p0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_ding_comment_remind_num"

    iget v2, p0, Layq;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object v1, p0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 85
    iget-object v1, p0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget-object v2, p0, Layq;->h:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 2045
    iput-object v2, v1, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 86
    iget-object v1, p0, Layq;->d:Landroid/util/SparseArray;

    const/4 v2, 0x1

    iget-object v3, p0, Layq;->b:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v1, p0, Layq;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    iget-object v1, p0, Layq;->d:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    :goto_0
    return-object v1

    :cond_3
    iget-object v1, p0, Layq;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Layq;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, ""

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Layq;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 105
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Layq;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method
