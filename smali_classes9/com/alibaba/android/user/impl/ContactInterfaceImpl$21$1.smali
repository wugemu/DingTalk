.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    .prologue
    .line 5463
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5467
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 5470
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    .line 5471
    .local v3, "strategy":Lhcj;
    iget-object v4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v4, v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    .line 5472
    invoke-virtual {v3, v4, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 5476
    .local v2, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v4, v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->c:Ljava/lang/String;

    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v3, v4, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 5477
    .local v1, "oldUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v4, v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 5478
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->removeImageCache(Ljava/lang/String;)V

    .line 5479
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 5496
    return-void
.end method
