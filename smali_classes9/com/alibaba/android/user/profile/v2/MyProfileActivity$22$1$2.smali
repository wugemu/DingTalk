.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iput p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1102
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 2056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 1102
    if-eqz v1, :cond_0

    .line 1103
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 3056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 1103
    iget v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "reason":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 1107
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->b:Ljava/lang/String;

    goto :goto_0

    .line 1104
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$2;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    sget v2, Lezg$l;->load_avatar_fail:I

    .line 1105
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
