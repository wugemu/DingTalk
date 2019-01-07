.class public final Lefb;
.super Lefc;
.source "MicroAppViewHolder.java"


# static fields
.field private static i:Landroid/widget/RelativeLayout$LayoutParams;

.field private static j:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lefv;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 69
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const/high16 v4, -0x3ea00000    # -14.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 70
    .local v2, "NEW_FEATURE_MARGIN_LEFT_SHORT":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const/high16 v4, -0x3e480000    # -23.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 71
    .local v1, "NEW_FEATURE_MARGIN_LEFT_LONG":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const/high16 v4, -0x3e100000    # -30.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 73
    .local v0, "NEW_FEATURE_MARGIN_BOTTOM":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    sput-object v3, Lefb;->i:Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Ledz$f;->oa_entry_icon:I

    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    sget-object v3, Lefb;->i:Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Ledz$f;->oa_entry_icon:I

    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    sget-object v3, Lefb;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v2, v6, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    sput-object v3, Lefb;->j:Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Ledz$f;->oa_entry_icon:I

    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    sget-object v3, Lefb;->j:Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Ledz$f;->oa_entry_icon:I

    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    sget-object v3, Lefb;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v1, v6, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "fragment"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lefc;-><init>(Landroid/view/View;)V

    .line 64
    iput-object p1, p0, Lefb;->a:Landroid/view/View;

    .line 65
    iput-object p2, p0, Lefb;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 66
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 85
    sget v0, Ledz$g;->oa_entry_item:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    sget v0, Ledz$f;->oa_entry_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lefb;->c:Landroid/widget/ImageView;

    .line 91
    sget v0, Ledz$f;->oa_entry_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lefb;->d:Landroid/widget/TextView;

    .line 92
    sget v0, Ledz$f;->oa_entry_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    .line 93
    sget v0, Ledz$f;->oa_entry_inner_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lefb;->f:Landroid/view/View;

    .line 94
    sget v0, Ledz$f;->oa_entry_security_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lefb;->g:Landroid/view/View;

    .line 96
    :cond_0
    return-void
.end method

.method public final a(Lefv;)V
    .locals 10
    .param p1, "microGridItemObject"    # Lefv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iput-object p1, p0, Lefb;->h:Lefv;

    .line 101
    iget-object v0, p0, Lefb;->h:Lefv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lefb;->h:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-nez v0, :cond_2

    .line 102
    :cond_0
    iget-object v0, p0, Lefb;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2112
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lefb;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lefb;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lefb;->h:Lefv;

    iget-object v1, v1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v9, 0x0

    .line 109
    .local v9, "url":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lefb;->h:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 113
    :goto_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v0, v9, v1, v2}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 115
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lefb;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 116
    iget-object v0, p0, Lefb;->c:Landroid/widget/ImageView;

    sget v1, Ledz$e;->oa_entry_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lefb;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 121
    :cond_3
    iget-object v0, p1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->securityTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 122
    iget-object v0, p0, Lefb;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    :goto_2
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    iget-object v1, p0, Lefb;->h:Lefv;

    iget-object v1, v1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-interface {v0, v1}, Leek;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    .line 1137
    if-eqz v0, :cond_6

    .line 1138
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    :goto_3
    iget-object v0, p0, Lefb;->h:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v0, :cond_4

    .line 1144
    iget-object v0, p0, Lefb;->h:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1145
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    sget-object v1, Lefb;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "NEW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_4
    :goto_4
    iget-object v0, p0, Lefb;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lefb;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iget-object v1, p0, Lefb;->a:Landroid/view/View;

    iget-object v2, p0, Lefb;->h:Lefv;

    iget-object v2, v2, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 2105
    iget-boolean v3, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->e:Z

    if-eqz v3, :cond_1

    .line 2106
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2107
    iget-object v3, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 2108
    iget-object v3, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    if-ne v1, v3, :cond_1

    iget-wide v2, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    iget-wide v4, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 2109
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setAlpha(F)V

    .line 2110
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/high16 v2, -0x3b860000    # -1000.0f

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationX(F)V

    .line 2111
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/high16 v2, -0x3b860000    # -1000.0f

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setTranslationY(F)V

    .line 2112
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v8

    .line 111
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 124
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_5
    iget-object v0, p0, Lefb;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1140
    :cond_6
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1147
    :cond_7
    iget-object v0, p0, Lefb;->h:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    .line 1148
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    sget-object v1, Lefb;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lefb;->h:Lefv;

    iget-object v1, v1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1151
    :cond_8
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    sget-object v1, Lefb;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    iget-object v0, p0, Lefb;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lefb;->h:Lefv;

    iget-object v1, v1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2115
    :cond_9
    iget-wide v2, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    iget-wide v4, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2116
    iput-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    .line 2117
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setAlpha(F)V

    .line 2118
    iget-object v1, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/oa/fragment/CommonOAFragment$6;

    invoke-direct {v2, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$6;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
