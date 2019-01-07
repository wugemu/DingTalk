.class public abstract Lgaw;
.super Ljava/lang/Object;
.source "AbsFavoriteViewHolder.java"


# instance fields
.field a:I

.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/view/View;

.field protected l:Landroid/widget/RelativeLayout;

.field protected m:Landroid/widget/TextView;

.field protected n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

.field protected o:Landroid/content/Context;

.field private p:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "stringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 318
    if-gtz p0, :cond_0

    .line 319
    const-string/jumbo v0, ""

    .line 322
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static a(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    const-string/jumbo v0, ""

    .line 310
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lgaw;->o:Landroid/content/Context;

    .line 79
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V
.end method

.method protected final a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;I)V
    .locals 8
    .param p1, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    .line 126
    iget-object v0, p0, Lgaw;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lgaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v0, "DING"

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lgaw;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lgaw;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "cid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lgaw;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 150
    iget-object v0, p0, Lgaw;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lgan;->a()Lgan;

    move-result-object v0

    new-instance v1, Lgaw$1;

    invoke-direct {v1, p0, v6, p1, p2}, Lgaw$1;-><init>(Lgaw;Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;I)V

    invoke-virtual {v0, v6, p2, v1}, Lgan;->a(Ljava/lang/String;ILgan$a;)V

    .line 186
    .end local v6    # "cid":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v0, p0, Lgaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0, p1, p2}, Lgaw;->b(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;I)V

    .line 189
    :cond_2
    iget-object v0, p0, Lgaw;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lgaw;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getModifiedTime()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcog;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    :cond_3
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1202
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v4

    .line 1204
    const-string/jumbo v1, "DING"

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 1205
    iget-object v0, p0, Lgaw;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1206
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1207
    iget-object v0, p0, Lgaw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lgaw;->m:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    :cond_4
    :goto_2
    return-void

    .line 139
    .restart local v6    # "cid":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 140
    iget-object v0, p0, Lgaw;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 142
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 143
    iget-object v0, p0, Lgaw;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 145
    :cond_7
    iget-object v0, p0, Lgaw;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    :cond_8
    iget-object v0, p0, Lgaw;->j:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1210
    .end local v6    # "cid":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1211
    iget-object v0, p0, Lgaw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setVisibility(I)V

    .line 1213
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1214
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;)V

    .line 1215
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->setUrl(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getMsgId()Ljava/lang/String;

    move-result-object v1

    .line 1217
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getVolumns()Ljava/util/List;

    move-result-object v3

    .line 1218
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getDuration()J

    move-result-wide v4

    .line 1216
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;J)V

    goto/16 :goto_2

    .line 1221
    :cond_a
    iget-object v0, p0, Lgaw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1225
    :cond_b
    iget-object v0, p0, Lgaw;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lgaw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1230
    :cond_c
    iget-object v0, p0, Lgaw;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lgaw;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 86
    const-string/jumbo v3, "layout_inflater"

    .line 87
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1113
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lfzs$g;->fav_item_common:I

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "rootView":Landroid/view/View;
    sget v3, Lfzs$f;->content_view_stub:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 90
    .local v2, "viewStub":Landroid/view/ViewStub;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgaw;->a()I

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lgaw;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 92
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lgaw;->k:Landroid/view/View;

    .line 95
    :cond_0
    sget v3, Lfzs$f;->img_avatar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, p0, Lgaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 96
    sget v3, Lfzs$f;->tv_name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lgaw;->c:Landroid/widget/TextView;

    .line 97
    sget v3, Lfzs$f;->tv_time:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lgaw;->d:Landroid/widget/TextView;

    .line 98
    sget v3, Lfzs$f;->img_group_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lgaw;->j:Landroid/widget/ImageView;

    .line 99
    sget v3, Lfzs$f;->rl_ding:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lgaw;->l:Landroid/widget/RelativeLayout;

    .line 100
    sget v3, Lfzs$f;->tv_ding_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lgaw;->m:Landroid/widget/TextView;

    .line 101
    sget v3, Lfzs$f;->ding_voice_play:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    iput-object v3, p0, Lgaw;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .line 102
    sget v3, Lfzs$f;->img_ding:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lgaw;->p:Landroid/widget/ImageView;

    .line 104
    iget-object v3, p0, Lgaw;->k:Landroid/view/View;

    sget v4, Lfzs$f;->tv_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lgaw;->e:Landroid/widget/TextView;

    .line 105
    iget-object v3, p0, Lgaw;->k:Landroid/view/View;

    sget v4, Lfzs$f;->img_picture:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lgaw;->i:Landroid/widget/ImageView;

    .line 106
    iget-object v3, p0, Lgaw;->k:Landroid/view/View;

    sget v4, Lfzs$f;->img_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lgaw;->g:Landroid/widget/ImageView;

    .line 107
    iget-object v3, p0, Lgaw;->k:Landroid/view/View;

    sget v4, Lfzs$f;->tv_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lgaw;->f:Landroid/widget/TextView;

    .line 109
    return-object v1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected final b(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;I)V
    .locals 10
    .param p1, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v4, p0, Lgaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 242
    .local v4, "avatar":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    if-eqz v4, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getUid()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getUid()J

    move-result-wide v2

    .line 245
    .local v2, "uid":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "nick":Ljava/lang/String;
    invoke-virtual {v4, v6, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lgau;->a()Lgau;

    move-result-object v7

    new-instance v0, Lgaw$2;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lgaw$2;-><init>(Lgaw;JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V

    invoke-virtual {v7, v2, v3, p2, v0}, Lgau;->a(JILgau$a;)V

    .line 269
    new-instance v0, Lgaw$3;

    invoke-direct {v0, p0, v2, v3, p2}, Lgaw$3;-><init>(Lgaw;JI)V

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .end local v2    # "uid":J
    .end local v6    # "nick":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string/jumbo v6, ""

    .line 288
    .restart local v6    # "nick":Ljava/lang/String;
    invoke-virtual {v4, v6, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget v0, Lfzs$h;->dt_accessibility_avatar:I

    invoke-static {v0}, Lgaw;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lgaw;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lgaw;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgaw;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lgaw;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
