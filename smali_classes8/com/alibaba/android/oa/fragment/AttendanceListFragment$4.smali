.class final Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;
.super Ljava/lang/Object;
.source "AttendanceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Z)V

    goto :goto_0
.end method
