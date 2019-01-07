.class public final Lhen;
.super Lcq;
.source "CalendarWidgetPagerAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# instance fields
.field private a:Lhoq$c;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private e:I


# direct methods
.method public constructor <init>(Lhoq$c;Lcn;I)V
    .locals 0
    .param p1, "widgetMVPView"    # Lhoq$c;
    .param p2, "fm"    # Lcn;
    .param p3, "count"    # I

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 29
    iput-object p1, p0, Lhen;->a:Lhoq$c;

    .line 30
    iput p3, p0, Lhen;->e:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 35
    iget-object v0, p0, Lhen;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lhen;->b:Landroid/util/SparseArray;

    .line 39
    :cond_0
    iget-object v0, p0, Lhen;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lhen;->a:Lhoq$c;

    invoke-interface {v0}, Lhoq$c;->a()Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v0

    iput-object v0, p0, Lhen;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 41
    iget-object v0, p0, Lhen;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iget-object v2, p0, Lhen;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    :cond_1
    iget v0, p0, Lhen;->e:I

    if-le v0, v3, :cond_2

    .line 45
    iget-object v0, p0, Lhen;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lhen;->a:Lhoq$c;

    invoke-interface {v0}, Lhoq$c;->b()Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v0

    iput-object v0, p0, Lhen;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 47
    iget-object v0, p0, Lhen;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Lhen;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 51
    :cond_2
    iget-object v0, p0, Lhen;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 52
    iget-object v0, p0, Lhen;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 54
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lhen;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lhen;->e:I

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
