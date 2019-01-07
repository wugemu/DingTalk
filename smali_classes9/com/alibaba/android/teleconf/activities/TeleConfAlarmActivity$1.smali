.class final Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$1;
.super Ljava/lang/Object;
.source "TeleConfAlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 54
    .local v0, "id":I
    sget v1, Leuj$i;->call_alarm_close:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->finish()V

    .line 57
    :cond_0
    return-void
.end method
