.class public final Lgpk;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "tvDuration"    # Landroid/widget/TextView;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "spaceAlbumModel"    # Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    .param p5, "albumSize"    # Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;
    .param p6, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p6, :cond_1

    .line 225
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    sget v2, Lfzs$e;->space_video_album_default:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    const/4 v3, 0x0

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/AbsListView;

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 146
    if-eqz p2, :cond_2

    .line 147
    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->g:J

    invoke-static {v2, v3}, Lgqh;->e(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_2
    const/4 v4, 0x0

    .line 152
    .local v4, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    .line 1270
    invoke-static {v2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    .line 152
    if-eqz v2, :cond_4

    .line 153
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    .line 162
    :cond_3
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 163
    const-string/jumbo v2, "DINGDRIVE"

    .line 164
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->b:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->k:Ljava/lang/String;

    const/4 v8, 0x0

    .line 163
    invoke-static {v2, v3, v5, v8}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .local v6, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v5, p3

    .line 165
    check-cast v5, Landroid/widget/AbsListView;

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->j:Ljava/util/Map;

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 154
    .end local v6    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    :try_start_0
    invoke-static {}, Lgqc;->a()Lgqc;

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lgqc;->a(Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 157
    :catch_0
    move-exception v15

    .line 158
    .local v15, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v15}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 169
    .end local v15    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_5
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 171
    new-instance v7, Lgpk$1;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p6

    move-object/from16 v13, p5

    move-object/from16 v14, p3

    invoke-direct/range {v7 .. v14}, Lgpk$1;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Landroid/widget/TextView;Lcom/alibaba/doraemon/image/ImageMagician;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Landroid/view/View;)V

    .line 221
    .local v7, "callback":Lcma;, "Lcma<Lgrh;>;"
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 222
    const-class v2, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-static {v7, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "callback":Lcma;, "Lcma<Lgrh;>;"
    check-cast v7, Lcma;

    .line 224
    .restart local v7    # "callback":Lcma;, "Lcma<Lgrh;>;"
    :cond_6
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v9

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->b:Ljava/lang/String;

    .line 2109
    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 224
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->c:Ljava/lang/String;

    .line 3109
    const-wide/16 v12, 0x0

    invoke-static {v2, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    move-object v14, v7

    .line 224
    invoke-virtual/range {v9 .. v14}, Lgon;->a(JJLcma;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Z)V
    .locals 6
    .param p0, "menuItem"    # Landroid/view/MenuItem;
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-interface {p0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 102
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "addString":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v1, "spannableString":Landroid/text/SpannableString;
    if-eqz p1, :cond_2

    .line 106
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 113
    :goto_1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 109
    :cond_2
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 110
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibleFlag"    # I

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickable"    # Z

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 123
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 126
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public static a(Lcn;Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p0, "fragmentManager"    # Lcn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragmentId"    # I

    .prologue
    .line 64
    invoke-static {p0}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 68
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 70
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method
