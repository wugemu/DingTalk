.class public final Lbof;
.super Lbnv;
.source "VideoViewHolder.java"


# instance fields
.field private j:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private k:Landroid/view/View;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lboq;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategy"    # Lboq;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lbnv;-><init>(Landroid/view/View;Lboq;)V

    .line 1046
    sget v0, Lbpu$d;->item_circle_video_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v0, p0, Lbof;->j:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 1047
    sget v0, Lbpu$d;->item_circle_video_img_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbof;->k:Landroid/view/View;

    .line 1048
    iget-object v0, p0, Lbof;->a:Landroid/app/Activity;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 1049
    iget-object v1, p0, Lbof;->j:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    const/4 p0, 0x0

    .line 133
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 116
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "count":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 121
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v2, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 124
    if-nez v0, :cond_3

    .line 125
    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 129
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_3
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 133
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 137
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lbof;->j:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lbof;->l:Ljava/util/Map;

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 138
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 9
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getContentType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    if-nez v6, :cond_1

    .line 55
    :cond_0
    invoke-direct {p0, v8}, Lbof;->a(Ljava/lang/String;)V

    .line 1141
    iget-object v6, p0, Lbof;->j:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->getBizEntity(J)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "bizEntity":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->BIZ_TYPE:Ljava/lang/String;

    invoke-static {v6, v0, v8, v8}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lbof;->l:Ljava/util/Map;

    .line 1145
    iget-object v6, p0, Lbof;->j:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 64
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v4, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 65
    .local v4, "picUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    if-eqz v6, :cond_2

    .line 67
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    iget-object v4, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 70
    :cond_2
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/FileUtils;->isLocalFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    invoke-direct {p0, v4}, Lbof;->a(Ljava/lang/String;)V

    .line 82
    :goto_1
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v5, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 83
    .local v5, "videoUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    if-eqz v6, :cond_3

    .line 85
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    iget-object v5, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authMediaId:Ljava/lang/String;

    .line 88
    :cond_3
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/FileUtils;->isLocalFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    :try_start_0
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 95
    :cond_4
    :goto_2
    iget-object v6, p0, Lbof;->l:Ljava/util/Map;

    invoke-static {v4, v6}, Lbof;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "finalPicUrl":Ljava/lang/String;
    iget-object v6, p0, Lbof;->l:Ljava/util/Map;

    invoke-static {v5, v6}, Lbof;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "finalVideoUrl":Ljava/lang/String;
    iget-object v6, p0, Lbof;->k:Landroid/view/View;

    new-instance v7, Lbof$1;

    invoke-direct {v7, p0, v3, p1, v2}, Lbof$1;-><init>(Lbof;Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 72
    .end local v2    # "finalPicUrl":Ljava/lang/String;
    .end local v3    # "finalVideoUrl":Ljava/lang/String;
    .end local v5    # "videoUrl":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 74
    :try_start_1
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 78
    :goto_3
    invoke-direct {p0, v4}, Lbof;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_3

    .line 80
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_6
    invoke-direct {p0, v4}, Lbof;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .restart local v5    # "videoUrl":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 92
    .restart local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2
.end method
