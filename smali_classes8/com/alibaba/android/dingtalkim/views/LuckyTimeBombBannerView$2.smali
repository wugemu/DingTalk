.class final Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;
.super Ljava/lang/Object;
.source "LuckyTimeBombBannerView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 224
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1227
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .line 1228
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1230
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->d(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_bomb_from_user_tips:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lebg;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 243
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 239
    return-void
.end method
