.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

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
    .line 774
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 776
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 778
    :cond_0
    const-string/jumbo v0, "pref_key_user_shared_calendar_hint"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 779
    return-void
.end method
