.class public final Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils;
.super Ljava/lang/Object;
.source "EmotionShowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils$EmotionType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static a(Landroid/widget/AbsListView;Landroid/widget/ImageView;J)V
    .locals 4
    .param p0, "parent"    # Landroid/widget/AbsListView;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "emotionPackageId"    # J

    .prologue
    .line 71
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v0

    .line 72
    .local v0, "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    .line 74
    .local v1, "iconMediaId":Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils;->a(Landroid/widget/AbsListView;Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 76
    .end local v1    # "iconMediaId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/AbsListView;Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 10
    .param p0, "parent"    # Landroid/widget/AbsListView;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 83
    move-object v2, p1

    .line 84
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v9

    .line 94
    .local v9, "strategy":Lhcj;
    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v9, v2, v1, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 96
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v0, :cond_1

    .line 97
    const/4 v7, 0x0

    move-object v1, p2

    move-object v3, p0

    move v5, v4

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 98
    const/4 v4, 0x1

    .line 101
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v9    # "strategy":Lhcj;
    :cond_1
    return v4

    .line 87
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method
