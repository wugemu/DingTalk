.class final Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;
.super Ljava/lang/Object;
.source "AttendanceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;Z)Z

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)Lefy;

    move-result-object v1

    iget-object v1, v1, Lefy;->d:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 218
    return-void
.end method
