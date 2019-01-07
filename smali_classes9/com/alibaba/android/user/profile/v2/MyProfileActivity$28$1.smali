.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1309
    .line 2325
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2326
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 2327
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 2328
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 2329
    sget v0, Lezg$l;->dt_save_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1309
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 1319
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    .line 1320
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1314
    return-void
.end method
