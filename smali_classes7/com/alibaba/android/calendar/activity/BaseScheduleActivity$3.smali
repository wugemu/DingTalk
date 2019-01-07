.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$3;
.super Ljava/lang/Object;
.source "BaseScheduleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$3;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$3;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->d:Lapq$c;

    invoke-interface {v0}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavh;->a(Landroid/app/Activity;Z)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$3;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->finish()V

    .line 142
    return-void
.end method
