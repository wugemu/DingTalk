.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 727
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCache(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 729
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    .line 2100
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    .line 2208
    invoke-virtual {v0}, Lfbn;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    iget-object v1, v0, Lfbn;->a:Lfbn$a;

    .line 2281
    invoke-virtual {v1, v2, v3}, Lfbn$a;->b(J)V

    .line 3227
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->c()Lfna;

    move-result-object v1

    .line 2213
    invoke-interface {v1, v2, v3}, Lfna;->a(J)I

    .line 2214
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfbn;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method
