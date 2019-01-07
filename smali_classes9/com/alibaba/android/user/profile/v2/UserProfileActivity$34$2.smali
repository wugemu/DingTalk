.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 789
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 791
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 792
    const-string/jumbo v0, "pref_key_user_shared_calendar_hint"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 794
    :cond_0
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;J)V

    .line 795
    return-void
.end method
