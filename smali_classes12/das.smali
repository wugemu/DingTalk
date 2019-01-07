.class public final Ldas;
.super Ldal;
.source "ChannelSessionOwnViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldal",
        "<",
        "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Ldal;-><init>(Landroid/view/View;)V

    .line 40
    iput-object p1, p0, Ldas;->d:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic a(Ldas;Lddm;)V
    .locals 3
    .param p0, "x0"    # Ldas;
    .param p1, "x1"    # Lddm;

    .prologue
    .line 30
    .line 1079
    if-eqz p1, :cond_0

    .line 1080
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1081
    const-string/jumbo v0, "url"

    iget-object v2, p1, Lddm;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v0, p0, Ldas;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 73
    sget v0, Lctk$f;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldas;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 74
    sget v0, Lctk$f;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldas;->b:Landroid/widget/TextView;

    .line 75
    sget v0, Lctk$f;->adsview_entrance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Ldas;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 76
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    check-cast p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    .line 1045
    if-eqz p1, :cond_1

    .line 1046
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelModel:Lddm;

    .line 1047
    if-eqz v0, :cond_1

    .line 1048
    iget-object v1, p0, Ldas;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v0, Lddm;->b:Ljava/lang/String;

    iget-object v3, v0, Lddm;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Ldas;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lddm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v1, v0, Lddm;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1051
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v1

    invoke-interface {v1}, Lddi;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1052
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v4, Lble;->r:Ljava/lang/String;

    iget-object v5, p0, Ldas;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 1054
    :cond_0
    iget-object v1, p0, Ldas;->itemView:Landroid/view/View;

    new-instance v4, Ldas$1;

    invoke-direct {v4, p0, v2, v3, v0}, Ldas$1;-><init>(Ldas;JLddm;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_1
    return-void
.end method
