.class public final Lfcq;
.super Lfcm;
.source "LinkViewHolder.java"


# instance fields
.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;


# direct methods
.method public constructor <init>(Landroid/view/View;Lfdf;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategy"    # Lfdf;

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lfcq;-><init>(Landroid/view/View;Lfdf;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lfdf;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategy"    # Lfdf;
    .param p3, "showCmtsDetailPrefix"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lfcm;-><init>(Landroid/view/View;Lfdf;Z)V

    .line 44
    iput-object p1, p0, Lfcq;->j:Landroid/view/View;

    .line 45
    sget v0, Lezg$h;->item_circle_link_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcq;->k:Landroid/widget/TextView;

    .line 46
    sget v0, Lezg$h;->item_circle_link_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcq;->l:Landroid/widget/TextView;

    .line 47
    sget v0, Lezg$h;->item_circle_link_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfcq;->m:Landroid/widget/ImageView;

    .line 48
    sget v0, Lezg$h;->item_circle_link_source:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcq;->n:Landroid/widget/TextView;

    .line 49
    sget v0, Lezg$h;->item_circle_link_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfcq$1;

    invoke-direct {v1, p0}, Lfcq$1;-><init>(Lfcq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lfcq;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lfcq;

    .prologue
    .line 30
    iget-object v0, p0, Lfcq;->j:Landroid/view/View;

    return-object v0
.end method

.method private static e(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    .locals 6
    .param p0, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 67
    .local v0, "content":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-nez v0, :cond_1

    .line 68
    const-string/jumbo v3, "Circle"

    const-string/jumbo v4, "CircleTag"

    const-string/jumbo v5, "linkItem content is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 78
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .line 73
    .local v1, "linkContent":Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    if-nez v1, :cond_0

    .line 74
    const-string/jumbo v3, "Circle"

    const-string/jumbo v4, "CircleTag"

    const-string/jumbo v5, "link content is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 75
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;)V
    .locals 14
    .param p1, "linkContent"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v5, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->mediaId:Ljava/lang/String;

    .line 100
    .local v5, "mediaId":Ljava/lang/String;
    iget-object v12, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareUrl:Ljava/lang/String;

    .line 101
    .local v12, "shareUrl":Ljava/lang/String;
    iget-object v13, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->title:Ljava/lang/String;

    .line 103
    .local v13, "title":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :try_start_0
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "imgUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    .line 108
    .local v11, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v11, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "60x100q10.jpg"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lfcq;->m:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 111
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2    # "imgUrl":Ljava/lang/String;
    .end local v5    # "mediaId":Ljava/lang/String;
    .end local v11    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    :goto_1
    iget-object v0, p0, Lfcq;->j:Landroid/view/View;

    sget v1, Lezg$h;->circle_item_url:I

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lfcq;->j:Landroid/view/View;

    sget v1, Lezg$h;->ll_tag:I

    invoke-virtual {v0, v1, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lfcq;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    .restart local v5    # "mediaId":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "http"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    .line 121
    .restart local v11    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v11, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "6x6q1.jpg"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "imgUrl":Ljava/lang/String;
    const-string/jumbo v0, "TESTDY"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "img url:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lfcq;->m:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 124
    invoke-interface/range {v3 .. v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 134
    .end local v2    # "imgUrl":Ljava/lang/String;
    .end local v5    # "mediaId":Ljava/lang/String;
    .end local v11    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v0

    const-string/jumbo v3, "Circle"

    const-string/jumbo v4, "CircleTag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "linkItem when transform httpUrl error, postId = "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfcq;->o:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfcq;->o:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    :goto_2
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-static {p1}, Lfcq;->e(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    move-result-object v0

    .line 85
    .local v0, "linkContent":Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lfcq;->o:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 91
    invoke-virtual {p0, v0}, Lfcq;->a(Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;)V

    goto :goto_0
.end method
