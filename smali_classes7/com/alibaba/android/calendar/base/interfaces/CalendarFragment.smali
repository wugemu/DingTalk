.class public abstract Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CalendarFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;->b()Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    return-void
.end method

.method public b()Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    return-void
.end method

.method public c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
