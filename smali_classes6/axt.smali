.class public final Laxt;
.super Lcq;
.source "CheckInMemberPagerAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# instance fields
.field public a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

.field public b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

.field public c:[Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcn;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startTime"    # J
    .param p4, "fm"    # Lcn;
    .param p5, "dingId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p4}, Lcq;-><init>(Lcn;)V

    .line 29
    iput-object p1, p0, Laxt;->d:Landroid/content/Context;

    .line 30
    iput-wide p2, p0, Laxt;->e:J

    .line 31
    iput-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    .line 32
    iput-object v0, p0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 33
    iput-object v0, p0, Laxt;->b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 1040
    iget-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    .line 1044
    :cond_0
    iget-object v0, p0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    if-nez v0, :cond_1

    .line 1045
    iget-wide v0, p0, Laxt;->e:J

    invoke-static {p5, v0, v1, v3}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Ljava/lang/String;JI)Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    move-result-object v0

    iput-object v0, p0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 1046
    iget-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1048
    :cond_1
    iget-object v0, p0, Laxt;->b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    if-nez v0, :cond_2

    .line 1049
    iget-wide v0, p0, Laxt;->e:J

    invoke-static {p5, v0, v1, v4}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Ljava/lang/String;JI)Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    move-result-object v0

    iput-object v0, p0, Laxt;->b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 1050
    iget-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Laxt;->b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 35
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Laxt;->d:Landroid/content/Context;

    sget v2, Laxp$i;->dt_ding_not_signed_member_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Laxt;->d:Landroid/content/Context;

    sget v2, Laxp$i;->dt_ding_signed_member_title:I

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Laxt;->c:[Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    if-ltz p1, :cond_0

    iget-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 59
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Laxt;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Laxt;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
