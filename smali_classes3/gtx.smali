.class public final Lgtx;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "JobListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgtw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private d:Lgud;

.field private e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "videoView"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p4, "absorberController"    # Lgud;
    .param p5, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p6, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;",
            ">;",
            "Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;",
            "Lgud;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "jobList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lgtx;->a:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lgtx;->b:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lgtx;->c:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 36
    iput-object p4, p0, Lgtx;->d:Lgud;

    .line 37
    iput-object p5, p0, Lgtx;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 38
    iput-object p6, p0, Lgtx;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 39
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgtx;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgtx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 18
    check-cast p1, Lgtw;

    .line 1065
    iget-object v0, p0, Lgtx;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    if-ltz p2, :cond_e

    iget-object v0, p0, Lgtx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    .line 1066
    iget-object v0, p0, Lgtx;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    .line 1129
    :goto_0
    iput-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    .line 1130
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    if-nez v0, :cond_1

    .line 1131
    iget-object v0, p1, Lgtw;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4237
    :cond_0
    :goto_1
    return-void

    .line 1135
    :cond_1
    iget-object v0, p1, Lgtw;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, p1, Lgtw;->b:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v0, p1, Lgtw;->c:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getDisplayOrgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v0, p1, Lgtw;->h:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getSalaryDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, p1, Lgtw;->j:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobCategoryDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, p1, Lgtw;->i:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v0, p1, Lgtw;->k:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getPublisherDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getPublisherAvatarMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p1, Lgtw;->l:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getPublisherDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getResponseRate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1144
    iget-object v0, p1, Lgtw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    iget-object v0, p1, Lgtw;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    iget-object v0, p1, Lgtw;->n:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getResponseRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :goto_2
    iget-object v0, p1, Lgtw;->o:Landroid/widget/TextView;

    iget-object v4, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getActiveStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getAuthLevel()I

    move-result v0

    .line 1159
    invoke-static {v0}, Lgux;->b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1160
    iget-object v4, p1, Lgtw;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    iget-object v4, p1, Lgtw;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    iget-object v4, p1, Lgtw;->d:Landroid/widget/TextView;

    .line 2031
    packed-switch v0, :pswitch_data_0

    .line 2039
    sget v0, Lgtt$b;->ui_common_content_bg_color_alpha_40:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    .line 1162
    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    :goto_4
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getRightsLevel()I

    move-result v4

    .line 3061
    const/16 v0, 0xc9

    if-lt v4, v0, :cond_4

    const/16 v0, 0xce

    if-gt v4, v0, :cond_4

    move v0, v3

    .line 2170
    :goto_5
    if-nez v0, :cond_5

    .line 2171
    iget-object v0, p1, Lgtw;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2172
    iget-object v0, p1, Lgtw;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4187
    :goto_6
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    if-nez v0, :cond_6

    .line 4188
    iget-object v0, p1, Lgtw;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4189
    iget-object v0, p1, Lgtw;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1148
    :cond_2
    iget-object v0, p1, Lgtw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v0, p1, Lgtw;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2033
    :pswitch_0
    sget v0, Lgtt$b;->ui_common_orange_icon_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_3

    .line 2035
    :pswitch_1
    sget v0, Lgtt$b;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_3

    .line 2037
    :pswitch_2
    sget v0, Lgtt$b;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_3

    .line 1164
    :cond_3
    iget-object v0, p1, Lgtw;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    iget-object v0, p1, Lgtw;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_4
    move v0, v2

    .line 3061
    goto :goto_5

    .line 2175
    :cond_5
    iget-object v0, p1, Lgtw;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2176
    iget-object v0, p1, Lgtw;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2177
    new-array v5, v8, [Ljava/lang/String;

    iget-object v0, p1, Lgtw;->w:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lgtt$f;->dt_recruitment_dingtalk_org_rights_level:I

    .line 2178
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, " "

    aput-object v0, v5, v3

    const/4 v6, 0x2

    .line 3084
    packed-switch v4, :pswitch_data_1

    .line 3098
    const-string/jumbo v0, ""

    .line 2179
    :goto_7
    aput-object v0, v5, v6

    .line 2177
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2180
    iget-object v5, p1, Lgtw;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4065
    packed-switch v4, :pswitch_data_2

    .line 4079
    sget v0, Lgtt$b;->ui_common_content_bg_color_alpha_40:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    .line 2183
    :goto_8
    iget-object v4, p1, Lgtw;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 3086
    :pswitch_3
    const-string/jumbo v0, "V1"

    goto :goto_7

    .line 3088
    :pswitch_4
    const-string/jumbo v0, "V2"

    goto :goto_7

    .line 3090
    :pswitch_5
    const-string/jumbo v0, "V3"

    goto :goto_7

    .line 3092
    :pswitch_6
    const-string/jumbo v0, "V4"

    goto :goto_7

    .line 3094
    :pswitch_7
    const-string/jumbo v0, "V5"

    goto :goto_7

    .line 3096
    :pswitch_8
    const-string/jumbo v0, "V6"

    goto :goto_7

    .line 4067
    :pswitch_9
    sget v0, Lgtt$b;->ui_common_content_bg_color_alpha_40:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_8

    .line 4069
    :pswitch_a
    sget v0, Lgtt$b;->ui_common_content_bg_color_alpha_40:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_8

    .line 4071
    :pswitch_b
    sget v0, Lgtt$b;->ui_common_content_bg_color_alpha_40:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_8

    .line 4073
    :pswitch_c
    const-string/jumbo v0, "#A66748"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 4075
    :pswitch_d
    const-string/jumbo v0, "#8490AD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 4077
    :pswitch_e
    const-string/jumbo v0, "#D9C045"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 4193
    :cond_6
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getIntroduceVideoURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4194
    iget-object v0, p1, Lgtw;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4195
    iget-object v0, p1, Lgtw;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4196
    iget-object v0, p1, Lgtw;->w:Landroid/app/Activity;

    iget-object v4, p1, Lgtw;->z:Landroid/widget/FrameLayout;

    iget-object v5, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getVideoWidth()I

    move-result v5

    iget-object v6, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getVideoHeight()I

    move-result v6

    invoke-static {v0, v4, v5, v6, v3}, Lgva;->a(Landroid/content/Context;Landroid/view/View;III)Z

    .line 4205
    iget-object v0, p1, Lgtw;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p1, Lgtw;->s:Landroid/widget/ImageView;

    iget-object v5, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getOrgIconURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lguz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 4206
    iget-object v0, p1, Lgtw;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getDisplayOrgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4207
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getSlogan()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4208
    iget-object v0, p1, Lgtw;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4209
    iget-object v0, p1, Lgtw;->u:Landroid/widget/TextView;

    iget-object v1, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getSlogan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4213
    :goto_9
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getVideoWidth()I

    move-result v0

    iget-object v1, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getVideoHeight()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 4214
    iget-object v0, p1, Lgtw;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4215
    iget-object v0, p1, Lgtw;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4216
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4217
    iget-object v1, p1, Lgtw;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 4211
    :cond_7
    iget-object v0, p1, Lgtw;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 4219
    :cond_8
    iget-object v0, p1, Lgtw;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4220
    iget-object v0, p1, Lgtw;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4221
    iget-object v1, p1, Lgtw;->w:Landroid/app/Activity;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4222
    iget-object v1, p1, Lgtw;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 4199
    :cond_9
    iget-object v0, p1, Lgtw;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4227
    iget-object v0, p1, Lgtw;->v:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getIntroduceImageList()Ljava/util/List;

    move-result-object v4

    .line 4228
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4229
    :cond_a
    iget-object v0, p1, Lgtw;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4232
    :cond_b
    iget-object v0, p1, Lgtw;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4233
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 4234
    if-ne v5, v3, :cond_c

    .line 4235
    invoke-virtual {p1, v5}, Lgtw;->a(I)V

    .line 4236
    iget-object v3, p1, Lgtw;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v0, p1, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v5, v0, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v5, v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1

    .line 4239
    :cond_c
    invoke-virtual {p1, v5}, Lgtw;->a(I)V

    .line 4240
    :goto_a
    if-ge v2, v8, :cond_0

    .line 4241
    if-ge v2, v5, :cond_d

    .line 4242
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4243
    iget-object v3, p1, Lgtw;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v6, p1, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    invoke-interface {v3, v6, v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 4240
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 4245
    :cond_d
    iget-object v0, p1, Lgtw;->q:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_e
    move-object v0, v1

    goto/16 :goto_0

    .line 2031
    .line 3084
    .line 4065
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 18
    .line 5053
    iget-object v0, p0, Lgtx;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_item_job_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 5054
    new-instance v0, Lgtw;

    iget-object v1, p0, Lgtx;->a:Landroid/app/Activity;

    iget-object v3, p0, Lgtx;->c:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v4, p0, Lgtx;->d:Lgud;

    iget-object v5, p0, Lgtx;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-object v6, p0, Lgtx;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-direct/range {v0 .. v6}, Lgtw;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 18
    return-object v0
.end method
