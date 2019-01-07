.class final Lcom/alibaba/android/calendar/activity/ShareScheduleActivity$1;
.super Ljava/lang/Object;
.source "ShareScheduleActivity.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/List",
        "<",
        "Lasl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    check-cast p1, Ljava/util/List;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/ShareScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/ShareScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    invoke-static {}, Larl;->a()Larl;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 1652
    iput-object v0, v1, Larl;->b:Lasl;

    goto :goto_0
.end method
