.class public final Layo;
.super Lcq;
.source "TaskMemberPagerAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# instance fields
.field public a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

.field public b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

.field public c:[Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn;Ljava/lang/String;ZLcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fm"    # Lcn;
    .param p3, "dingId"    # Ljava/lang/String;
    .param p4, "enableOperate"    # Z
    .param p5, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 33
    iput-object p1, p0, Layo;->d:Landroid/app/Activity;

    .line 34
    iput-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    .line 35
    iput-object v0, p0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 36
    iput-object v0, p0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Layo;->d:Landroid/app/Activity;

    sget v2, Laxp$i;->dt_ding_txt_uncomplete_member:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Layo;->d:Landroid/app/Activity;

    sget v2, Laxp$i;->ding_txt_complete_member:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Layo;->c:[Ljava/lang/String;

    .line 38
    iput-object p5, p0, Layo;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 39
    iput-boolean p4, p0, Layo;->g:Z

    .line 1044
    iget-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    .line 1047
    :cond_0
    iget-object v0, p0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    if-nez v0, :cond_1

    .line 1048
    iget-boolean v0, p0, Layo;->g:Z

    invoke-static {p3, v4, v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Ljava/lang/String;IZ)Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    move-result-object v0

    iput-object v0, p0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 1049
    iget-object v0, p0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v1, p0, Layo;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1050
    iget-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    iget-object v1, p0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1052
    :cond_1
    iget-object v0, p0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    if-nez v0, :cond_2

    .line 1053
    invoke-static {p3, v5, v3}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Ljava/lang/String;IZ)Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    move-result-object v0

    iput-object v0, p0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 1054
    iget-object v0, p0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v1, p0, Layo;->f:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1055
    iget-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    iget-object v1, p0, Layo;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    if-ltz p1, :cond_0

    iget-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 64
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Layo;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Layo;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
