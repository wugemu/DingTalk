.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$23;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$23;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

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
    .line 730
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$23;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$23;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;J)V

    .line 731
    return-void
.end method
