.class public Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;
.super Ljava/lang/Object;
.source "AddAppContainer.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    :cond_0
    return-void
.end method

.method public final a(IIZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "iconFontResId"    # I
    .param p2, "titleResId"    # I
    .param p3, "showRedDot"    # Z
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 161
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 8
    .param p1, "iconResId"    # I
    .param p2, "iconUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "showRedDot"    # Z
    .param p5, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p6, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lckj;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 148
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public final a(ZILandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "iconResId"    # I
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v3, Lcig$j;->safe_chat_model:I

    const/4 v4, 0x0

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 118
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public final a(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_camera_fill:I

    sget v3, Lcig$j;->chat_app_title_photo:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 65
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public final a(ZZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "beSingleChat"    # Z
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    if-eqz p2, :cond_0

    .line 81
    sget v3, Lcig$j;->dt_conference_start_btntitle_video:I

    .line 85
    .local v3, "res":I
    :goto_0
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_conf_video_fill:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 86
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void

    .line 83
    .end local v0    # "addAppModel":Lckj;
    .end local v3    # "res":I
    :cond_0
    sget v3, Lcig$j;->dt_conference_start_btntitle_videoconf:I

    .restart local v3    # "res":I
    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-object v3

    .line 50
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v10, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lckj;

    .line 53
    .local v8, "addAppModel":Lckj;
    if-eqz v8, :cond_1

    .line 1087
    iget-object v0, v8, Lckj;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    move-object v9, v3

    .line 55
    .local v9, "tempView":Landroid/view/View;
    :goto_2
    if-eqz v9, :cond_1

    .line 56
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1091
    .end local v9    # "tempView":Landroid/view/View;
    :cond_2
    iget-object v0, v8, Lckj;->a:Landroid/content/Context;

    sget v1, Lcig$h;->layout_chat_app_button:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1094
    sget v0, Lcig$f;->chat_app_button_icon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1095
    iget v0, v8, Lckj;->c:I

    if-eqz v0, :cond_6

    .line 1096
    iget-object v0, v8, Lckj;->a:Landroid/content/Context;

    iget v2, v8, Lckj;->c:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    iget-object v2, v8, Lckj;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcig$c;->ui_common_level2_text_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1098
    iget-object v4, v8, Lckj;->a:Landroid/content/Context;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 1099
    new-instance v5, Lcjz;

    invoke-direct {v5, v0, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1100
    int-to-float v0, v4

    .line 2045
    iput v0, v5, Lcjz;->b:F

    .line 1101
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    :cond_3
    :goto_3
    iget-object v0, v8, Lckj;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1106
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v8, Lckj;->e:Ljava/lang/String;

    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1111
    :cond_4
    sget v0, Lcig$f;->chat_app_button_title:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1112
    iget v1, v8, Lckj;->d:I

    if-eqz v1, :cond_7

    .line 1113
    iget v1, v8, Lckj;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1119
    :cond_5
    :goto_4
    sget v0, Lcig$f;->iv_red_dot:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1120
    iget-boolean v1, v8, Lckj;->g:Z

    if-eqz v1, :cond_8

    move v1, v6

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    new-instance v0, Lckj$1;

    invoke-direct {v0, v8, v9}, Lckj$1;-><init>(Lckj;Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1102
    :cond_6
    iget v0, v8, Lckj;->b:I

    if-eqz v0, :cond_3

    .line 1103
    iget v0, v8, Lckj;->b:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1114
    :cond_7
    iget-object v1, v8, Lckj;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1115
    iget-object v1, v8, Lckj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1120
    :cond_8
    const/16 v1, 0x8

    goto :goto_5

    .end local v8    # "addAppModel":Lckj;
    :cond_9
    move-object v3, v10

    .line 60
    goto/16 :goto_0
.end method

.method public final b(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_video_fill:I

    sget v3, Lcig$j;->chat_app_title_video:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 70
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final c(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_dmail_fill:I

    sget v3, Lcig$j;->mail_header:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 113
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public final d(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_redpacket_fill:I

    sget v3, Lcig$j;->chat_app_title_redpackest:I

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 123
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public final e(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 127
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_people_fill:I

    sget v3, Lcig$j;->chat_app_title_namecard:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 128
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public final f(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_collect_fill:I

    sget v3, Lcig$j;->chat_app_title_favorite:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 133
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public final g(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_gps_fill:I

    sget v3, Lcig$j;->chat_app_title_gis:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 138
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public final h(ZLandroid/view/View$OnClickListener;Lckj$a;)V
    .locals 7
    .param p1, "showRedDot"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "onItemClickInterceptor"    # Lckj$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 165
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_file_fill:I

    sget v3, Lcig$j;->chat_app_title_file:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 166
    .local v0, "addAppModel":Lckj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
