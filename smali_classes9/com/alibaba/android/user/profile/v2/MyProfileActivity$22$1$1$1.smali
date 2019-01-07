.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->c:Ljava/lang/String;

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
    .line 1043
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCache(Ljava/lang/String;)V

    .line 1067
    return-void
.end method
