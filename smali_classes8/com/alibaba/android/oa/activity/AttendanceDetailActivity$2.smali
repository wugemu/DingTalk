.class final Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$2;
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
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)Lefy;

    move-result-object v2

    iget-object v2, v2, Lefy;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 189
    return-void
.end method
