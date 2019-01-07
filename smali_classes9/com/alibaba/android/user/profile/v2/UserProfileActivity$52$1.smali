.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;

    .prologue
    .line 4034
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4037
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->e()Lfmp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 4038
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->T(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lfmp;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I

    .line 4039
    return-void
.end method
