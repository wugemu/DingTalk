.class final Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;
.super Ljava/lang/Object;
.source "LuckyTimeBannerView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 221
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1224
    if-eqz p1, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->f(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->g(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lctk$i;->dt_red_envelop_view_sendfrom_goodtime:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 232
    return-void
.end method
