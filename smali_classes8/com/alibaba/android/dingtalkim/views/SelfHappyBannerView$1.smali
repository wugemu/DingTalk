.class final Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;
.super Ljava/lang/Object;
.source "SelfHappyBannerView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->display(Ljava/lang/Object;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->c:Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->b:Landroid/widget/TextView;

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
    .line 80
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1083
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->c:Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->a(Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->c:Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;->a(Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    move-result-object v2

    iget-wide v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView$1;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_bomb_from_user_tips_alone:I

    .line 1086
    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 96
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 92
    return-void
.end method
