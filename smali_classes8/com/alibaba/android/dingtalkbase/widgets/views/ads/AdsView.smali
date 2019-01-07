.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
.super Landroid/widget/FrameLayout;
.source "AdsView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Lcom/alibaba/doraemon/image/ImageMagician;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    .line 74
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->ads_view_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    sget v0, Lcig$f;->tv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    .line 80
    sget v0, Lcig$f;->iv_reddot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcig$f;->tv_content_in_red:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    .line 82
    sget v0, Lcig$f;->rl_red_in_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    .line 83
    sget v0, Lcig$f;->iv_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->e:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcig$f;->avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 86
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 87
    return-void
.end method

.method private a(Lcry;Landroid/widget/ImageView;)Z
    .locals 11
    .param p1, "viewObject"    # Lcry;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x80

    const/4 v4, 0x0

    .line 237
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13099
    iget v0, p1, Lcry;->h:I

    .line 238
    if-lez v0, :cond_0

    .line 14099
    iget v0, p1, Lcry;->h:I

    .line 239
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15075
    :cond_0
    iget-object v2, p1, Lcry;->e:Ljava/lang/String;

    .line 243
    .local v2, "ret":Ljava/lang/String;
    const/4 v8, 0x0

    .line 16075
    .local v8, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    :try_start_0
    iget-object v0, p1, Lcry;->e:Ljava/lang/String;

    .line 245
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v8

    .line 246
    if-eqz v8, :cond_1

    .line 17075
    iget-object v0, p1, Lcry;->e:Ljava/lang/String;

    .line 247
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 253
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v0

    if-gt v0, v1, :cond_2

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 255
    :cond_2
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v10

    .line 256
    .local v10, "strategy":Lhcj;
    sget v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v10, v2, v0, v1}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 259
    .end local v10    # "strategy":Lhcj;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v1, p2

    move v5, v4

    move v6, v4

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 17099
    :cond_4
    iget v0, p1, Lcry;->h:I

    .line 263
    if-gtz v0, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    return v4

    .line 249
    :catch_0
    move-exception v9

    .line 250
    .local v9, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v9}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcry;)V
    .locals 7
    .param p1, "viewObject"    # Lcry;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 110
    if-eqz p1, :cond_0

    .line 1059
    iget-boolean v2, p1, Lcry;->c:Z

    .line 110
    if-nez v2, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 112
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    .line 233
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 116
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    .line 2043
    iget v1, p1, Lcry;->a:I

    .line 120
    .local v1, "type":I
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 124
    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->requestLayout()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto :goto_1

    .line 130
    :cond_3
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 131
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 134
    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    sget v3, Lcig$e;->tab_remind:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3107
    iget v2, p1, Lcry;->i:I

    .line 138
    const/16 v3, 0x63

    if-le v2, v3, :cond_4

    .line 139
    const-string/jumbo v0, "99+"

    .line 143
    .local v0, "count":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4107
    .end local v0    # "count":Ljava/lang/String;
    :cond_4
    iget v2, p1, Lcry;->i:I

    .line 141
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "count":Ljava/lang/String;
    goto :goto_2

    .line 145
    .end local v0    # "count":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto :goto_1

    .line 148
    :cond_6
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NEW:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 149
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 152
    if-eqz v2, :cond_7

    .line 153
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    sget v3, Lcig$e;->bg_corner_red:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    const-string/jumbo v3, "NEW"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 157
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto/16 :goto_1

    .line 160
    :cond_8
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 164
    if-eqz v2, :cond_a

    .line 6067
    iget-object v2, p1, Lcry;->d:Ljava/lang/String;

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 166
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    sget v3, Lcig$e;->bg_corner_red:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    .line 7067
    iget-object v3, p1, Lcry;->d:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 170
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 174
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto/16 :goto_1

    .line 177
    :cond_b
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT_PIC_TEXT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_f

    .line 178
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 8051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 181
    if-eqz v2, :cond_e

    .line 8067
    iget-object v2, p1, Lcry;->d:Ljava/lang/String;

    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    .line 9067
    iget-object v4, p1, Lcry;->d:Ljava/lang/String;

    .line 184
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->e:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 190
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 186
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 193
    :cond_d
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 197
    :cond_e
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto/16 :goto_1

    .line 202
    :cond_f
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_AVATAR_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 207
    if-eqz v2, :cond_13

    .line 208
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 10268
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 11067
    iget-object v4, p1, Lcry;->d:Ljava/lang/String;

    .line 11075
    iget-object v5, p1, Lcry;->e:Ljava/lang/String;

    .line 10270
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12067
    iget-object v2, p1, Lcry;->d:Ljava/lang/String;

    .line 10272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 12075
    iget-object v2, p1, Lcry;->e:Ljava/lang/String;

    .line 10272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    .line 208
    :goto_4
    if-eqz v2, :cond_12

    .line 209
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_11
    move v2, v3

    .line 10272
    goto :goto_4

    .line 212
    :cond_12
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 216
    :cond_13
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto/16 :goto_1

    .line 222
    :cond_14
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 225
    if-eqz v2, :cond_15

    .line 226
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 228
    :cond_15
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iput v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto/16 :goto_1
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 91
    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    .line 100
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->requestLayout()V

    .line 102
    return-void

    .line 98
    :cond_0
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->h:I

    goto :goto_0
.end method
