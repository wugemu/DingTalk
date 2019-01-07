.class public final Ldar;
.super Ldal;
.source "ChannelSessionAttentionViewHolder.java"


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
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p2}, Ldal;-><init>(Landroid/view/View;)V

    .line 43
    iput-object p1, p0, Ldar;->e:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic a(Ldar;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V
    .locals 3
    .param p0, "x0"    # Ldar;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .prologue
    .line 29
    .line 1110
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    if-eqz v0, :cond_1

    .line 1111
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Ldar;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channeldetail"

    new-instance v2, Ldar$2;

    invoke-direct {v2, p0, p1}, Ldar$2;-><init>(Ldar;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    .line 1112
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    .line 1126
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authPage:Ljava/lang/String;

    .line 1127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1128
    const-string/jumbo v2, "$CORPID$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1129
    const-string/jumbo v2, "$CORPID$"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1135
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v0, p0, Ldar;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1130
    :cond_3
    const-string/jumbo v2, "%24CORPID%24"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1131
    const-string/jumbo v2, "%24CORPID%24"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 103
    sget v0, Lctk$f;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 104
    sget v0, Lctk$f;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldar;->b:Landroid/widget/TextView;

    .line 105
    sget v0, Lctk$f;->red_dot_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldar;->c:Landroid/widget/TextView;

    .line 106
    sget v0, Lctk$f;->session_notice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldar;->d:Landroid/widget/ImageView;

    .line 107
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 29
    check-cast p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    .line 1048
    if-eqz p1, :cond_0

    .line 1049
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->channelOrgSessionModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    .line 1050
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 1052
    iget-object v2, p0, Ldar;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgIcon:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Ldar;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->isNotificationEnabled:Z

    if-eqz v2, :cond_3

    .line 1063
    iget-object v2, p0, Ldar;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    iget v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->unreadCount:I

    .line 1067
    if-nez v0, :cond_1

    .line 1068
    iget-object v0, p0, Ldar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    :goto_0
    iget-object v0, p0, Ldar;->itemView:Landroid/view/View;

    new-instance v2, Ldar$1;

    invoke-direct {v2, p0, v1}, Ldar$1;-><init>(Ldar;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_0
    return-void

    .line 1069
    :cond_1
    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    .line 1070
    iget-object v2, p0, Ldar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1071
    iget-object v2, p0, Ldar;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v0, p0, Ldar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Ldar;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "99+"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1077
    :cond_3
    iget-object v2, p0, Ldar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1079
    iget v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->unreadCount:I

    if-lez v0, :cond_4

    .line 1080
    iget-object v0, p0, Ldar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1082
    :cond_4
    iget-object v0, p0, Ldar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
