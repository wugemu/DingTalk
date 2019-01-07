.class public Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->a:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    if-nez v2, :cond_0

    .line 77
    const/16 p2, 0x0

    .line 80
    :cond_0
    if-nez p2, :cond_2

    .line 81
    new-instance v24, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    invoke-direct/range {v24 .. v24}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;-><init>()V

    .line 82
    .local v24, "holder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->m:Landroid/content/Context;

    sget v3, Lfzs$g;->cspace_search_list_item:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    sget v2, Lfzs$f;->icon_token:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    .line 84
    sget v2, Lfzs$f;->img_encrpt_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->b:Landroid/widget/ImageView;

    .line 85
    sget v2, Lfzs$f;->icon_select:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->c:Landroid/widget/ImageView;

    .line 86
    sget v2, Lfzs$f;->file_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->d:Landroid/widget/TextView;

    .line 87
    sget v2, Lfzs$f;->file_size:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    .line 88
    sget v2, Lfzs$f;->bottom_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->f:Landroid/view/View;

    .line 89
    sget v2, Lfzs$f;->view_video_flag:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->g:Landroid/view/View;

    .line 90
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 96
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 101
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v2, :cond_1

    .line 102
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/AbsListView;

    invoke-interface {v3, v5, v6, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 107
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 111
    .local v22, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-nez v22, :cond_4

    .line 211
    :goto_2
    return-object p2

    .line 92
    .end local v22    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v24    # "holder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;

    .restart local v24    # "holder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;
    goto :goto_0

    .line 98
    :cond_3
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 114
    .restart local v22    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "spaceId":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 118
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v2, "folder"

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->cspace_folder_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    :goto_3
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->m:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->a:Ljava/lang/String;

    const/16 v6, 0x19

    move-object/from16 v0, v25

    invoke-static {v3, v0, v5, v6}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v4, v0, v2}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 169
    .local v23, "desc":Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v16

    .line 172
    .local v16, "spaceOrgCache":Lfzv;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lfzv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 173
    :cond_5
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 121
    .end local v16    # "spaceOrgCache":Lfzv;
    .end local v23    # "desc":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 122
    .local v26, "resId":I
    const-string/jumbo v2, "image"

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget v2, Lfzs$e;->file_pic_36:I

    move/from16 v0, v26

    if-ne v0, v2, :cond_b

    .line 123
    :cond_7
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->file_pic_36:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    const/4 v13, 0x0

    .line 126
    .local v13, "tokenHeader":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 127
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "url":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    move-object/from16 v8, p3

    check-cast v8, Landroid/widget/AbsListView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v5 .. v13}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 143
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    .end local v7    # "url":Ljava/lang/String;
    .end local v13    # "tokenHeader":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 158
    :cond_8
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lfzs$e;->blue_safe_icon:I

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 129
    .restart local v13    # "tokenHeader":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 130
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "url":Ljava/lang/String;
    goto :goto_4

    .line 1246
    .end local v7    # "url":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 134
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-interface {v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, "accessToken":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 136
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v2

    const/4 v3, 0x0

    .line 137
    invoke-static/range {v22 .. v22}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x100

    const/16 v8, 0x100

    const/16 v9, 0x3c

    .line 136
    invoke-virtual/range {v2 .. v9}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "url":Ljava/lang/String;
    goto :goto_4

    .line 144
    .end local v7    # "url":Ljava/lang/String;
    .end local v13    # "tokenHeader":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "accessToken":Ljava/lang/String;
    :cond_b
    sget v2, Lfzs$e;->file_video_36:I

    move/from16 v0, v26

    if-ne v0, v2, :cond_d

    .line 145
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 146
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->file_video_encrypt:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 149
    :cond_c
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->m:Landroid/content/Context;

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-static/range {v22 .. v22}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    move-result-object v18

    sget-object v19, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->SMALL:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v20, v0

    move-object/from16 v17, p3

    invoke-static/range {v14 .. v20}, Lgpk;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Lcom/alibaba/doraemon/image/ImageMagician;)V

    goto/16 :goto_5

    .line 154
    :cond_d
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_5

    .line 159
    :cond_e
    sget v2, Lfzs$e;->avatar_safe_icon:I

    goto/16 :goto_6

    .line 162
    :cond_f
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 178
    .end local v26    # "resId":I
    .restart local v16    # "spaceOrgCache":Lfzv;
    .restart local v23    # "desc":Ljava/lang/String;
    :cond_10
    move-object/from16 v17, v24

    .local v17, "finalHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 179
    new-instance v14, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;

    move-object/from16 v15, p0

    move-object/from16 v18, v22

    move-object/from16 v19, v4

    move-object/from16 v20, v25

    invoke-direct/range {v14 .. v20}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;Lfzv;Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter$a;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v14, "listener":Lcma;, "Lcma<Lgic;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->m:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_11

    .line 208
    const-class v3, Lcma;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->m:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v14, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "listener":Lcma;, "Lcma<Lgic;>;"
    check-cast v14, Lcma;

    .line 210
    .restart local v14    # "listener":Lcma;, "Lcma<Lgic;>;"
    :cond_11
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v14}, Lgon;->a(Ljava/lang/String;ZLcma;)V

    goto/16 :goto_2
.end method
