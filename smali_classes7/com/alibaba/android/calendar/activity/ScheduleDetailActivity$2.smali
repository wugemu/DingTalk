.class final Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$2;
.super Ljava/lang/Object;
.source "ScheduleDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$2;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$2;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->finish()V

    .line 140
    return-void
.end method
