.class public final Lcuc;
.super Landroid/widget/BaseAdapter;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcuc$b;,
        Lcuc$a;,
        Lcuc$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcuc$a;

.field public c:Lcuc$b;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcuc;->d:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcuc;->a:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcuc$a;

    invoke-direct {v0, p0}, Lcuc$a;-><init>(Lcuc;)V

    iput-object v0, p0, Lcuc;->b:Lcuc$a;

    .line 69
    return-void
.end method

.method static synthetic a(Lcuc;Lcuc$b;)Lcuc$b;
    .locals 0
    .param p0, "x0"    # Lcuc;
    .param p1, "x1"    # Lcuc$b;

    .prologue
    .line 52
    iput-object p1, p0, Lcuc;->c:Lcuc$b;

    return-object p1
.end method

.method static synthetic a(Lcuc;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V
    .locals 3
    .param p0, "x0"    # Lcuc;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .prologue
    .line 52
    .line 1223
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->chStatus:I

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1224
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    if-eqz v0, :cond_1

    .line 1225
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcuc;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channeldetail"

    new-instance v2, Lcuc$4;

    invoke-direct {v2, p0, p1}, Lcuc$4;-><init>(Lcuc;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    .line 1226
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-virtual {p0, p1}, Lcuc;->a(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    goto :goto_0
.end method

.method static synthetic a(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V
    .locals 4
    .param p0, "x0"    # Lcuc;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .prologue
    .line 52
    .line 1205
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    .line 1206
    new-instance v1, Lcuc$3;

    invoke-direct {v1, p0, p1}, Lcuc$3;-><init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V

    .line 1219
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v2, v2, Lcfi;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;->acceptChannelRequest(JLiyv;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcuc;)Z
    .locals 3
    .param p0, "x0"    # Lcuc;

    .prologue
    .line 52
    .line 1190
    iget-object v0, p0, Lcuc;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcuc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .line 1192
    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1194
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1200
    :cond_1
    const/4 v0, 0x1

    .line 52
    goto :goto_0
.end method

.method static synthetic b(Lcuc;)Lcuc$b;
    .locals 1
    .param p0, "x0"    # Lcuc;

    .prologue
    .line 52
    iget-object v0, p0, Lcuc;->c:Lcuc$b;

    return-object v0
.end method

.method static synthetic c(Lcuc;)Lcuc$a;
    .locals 1
    .param p0, "x0"    # Lcuc;

    .prologue
    .line 52
    iget-object v0, p0, Lcuc;->b:Lcuc$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V
    .locals 5
    .param p1, "channelOrgModel"    # Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    .line 241
    .local v1, "corpId":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authPage:Ljava/lang/String;

    .line 242
    .local v2, "realUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    const-string/jumbo v3, "$CORPID$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    const-string/jumbo v3, "$CORPID$"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 249
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v4, p0, Lcuc;->d:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 254
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 245
    :cond_2
    const-string/jumbo v3, "%24CORPID%24"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const-string/jumbo v3, "%24CORPID%24"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcuc;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcuc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 89
    if-nez p2, :cond_1

    .line 90
    new-instance v0, Lcuc$c;

    invoke-direct {v0, p0, v6}, Lcuc$c;-><init>(Lcuc;B)V

    .line 91
    .local v0, "holder":Lcuc$c;
    iget-object v2, p0, Lcuc;->d:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->item_channel:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    sget v2, Lctk$f;->tv_avatar:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v0, Lcuc$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 93
    sget v2, Lctk$f;->iv_org_auth:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcuc$c;->c:Landroid/widget/ImageView;

    .line 94
    sget v2, Lctk$f;->name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcuc$c;->b:Landroid/widget/TextView;

    .line 95
    sget v2, Lctk$f;->tv_desc:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcuc$c;->d:Landroid/widget/TextView;

    .line 96
    sget v2, Lctk$f;->btn_attention:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcuc$c;->e:Landroid/widget/Button;

    .line 97
    sget v2, Lctk$f;->tv_attented:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcuc$c;->f:Landroid/widget/TextView;

    .line 98
    sget v2, Lctk$f;->progress_bar:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcuc$c;->g:Landroid/widget/ProgressBar;

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    iget-object v2, p0, Lcuc;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .line 104
    .local v1, "model":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;
    iget-object v2, v0, Lcuc$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v3, v3, Lcfi;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v4, v4, Lcfi;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, v0, Lcuc$c;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v3, v3, Lcfi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v0, Lcuc$c;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v2, v2, Lcfi;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 109
    iget-object v2, v0, Lcuc$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :goto_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->NONE_FOLLOW:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 115
    iget-object v2, v0, Lcuc$c;->e:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v2, v0, Lcuc$c;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v2, v0, Lcuc$c;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_2
    iget-object v2, v0, Lcuc$c;->e:Landroid/widget/Button;

    new-instance v3, Lcuc$1;

    invoke-direct {v3, p0, v1}, Lcuc$1;-><init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v2, Lcuc$2;

    invoke-direct {v2, p0, v1}, Lcuc$2;-><init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-object p2

    .line 101
    .end local v0    # "holder":Lcuc$c;
    .end local v1    # "model":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcuc$c;

    .restart local v0    # "holder":Lcuc$c;
    goto :goto_0

    .line 111
    .restart local v1    # "model":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;
    :cond_2
    iget-object v2, v0, Lcuc$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 119
    iget-object v2, v0, Lcuc$c;->e:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v2, v0, Lcuc$c;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, v0, Lcuc$c;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 122
    :cond_4
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 123
    iget-object v2, v0, Lcuc$c;->e:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v2, v0, Lcuc$c;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, v0, Lcuc$c;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method
