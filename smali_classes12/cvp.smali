.class public abstract Lcvp;
.super Lctv;
.source "GISViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/ImageView;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected aa:Landroid/app/Activity;

.field protected b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcvp;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 41
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 107
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcvp;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 108
    if-eqz p2, :cond_0

    .line 109
    sget v0, Lctk$f;->chatting_content_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvp;->b:Landroid/widget/ImageView;

    .line 110
    sget v0, Lctk$f;->chatting_content_location_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvp;->S:Landroid/widget/TextView;

    .line 111
    sget v0, Lctk$f;->chatting_content_location_sub_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvp;->Y:Landroid/widget/TextView;

    .line 112
    sget v0, Lctk$f;->iv_gis_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcvp;->Z:Landroid/widget/ImageView;

    .line 114
    :cond_0
    invoke-virtual {p0, p2}, Lcvp;->c(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 45
    iput-object p1, p0, Lcvp;->aa:Landroid/app/Activity;

    .line 46
    if-eqz p2, :cond_8

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    if-eqz v6, :cond_8

    instance-of v6, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v6, :cond_8

    .line 47
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    if-eqz v6, :cond_8

    .line 48
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 49
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    iget-object v6, p0, Lcvp;->b:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 50
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->url()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 58
    :cond_0
    :goto_0
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v6

    invoke-virtual {v6, v3}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->url()Ljava/lang/String;

    move-result-object v5

    .line 62
    :cond_1
    move-object v0, v5

    .line 1118
    .local v0, "adapterUrl":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "file:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    move v6, v7

    .line 63
    :goto_1
    if-nez v6, :cond_3

    .line 64
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v6

    invoke-virtual {v6, v5, v7}, Lhcj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_3
    iget-object v7, p0, Lcvp;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v8, p0, Lcvp;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcvp;->L:Landroid/view/View;

    check-cast v6, Landroid/widget/AbsListView;

    invoke-interface {v7, v8, v0, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 68
    .end local v0    # "adapterUrl":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, ""

    .line 69
    .local v4, "text":Ljava/lang/String;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 70
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v4

    .line 72
    :cond_5
    iget-object v6, p0, Lcvp;->S:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 73
    iget-object v6, p0, Lcvp;->S:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_6
    iget-object v6, p0, Lcvp;->Y:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 76
    iget-object v6, p0, Lcvp;->Y:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_7
    iget-object v6, p0, Lcvp;->Z:Landroid/widget/ImageView;

    new-instance v7, Lcvp$1;

    invoke-direct {v7, p0, v1, p2, p1}, Lcvp$1;-><init>(Lcvp;Lcom/alibaba/wukong/im/MessageContent$GeoContent;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v6, p0, Lcvp;->Z:Landroid/widget/ImageView;

    sget-object v7, Lcvp;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    iget-object v6, p0, Lcvp;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcvp;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    .end local v4    # "text":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcvp;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 103
    return-void

    .line 54
    .restart local v1    # "content":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    .restart local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1118
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "adapterUrl":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcvp;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_position:I

    invoke-static {v2}, Lcvp;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcvp;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcvp;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_gis:I

    invoke-static {v2}, Lcvp;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcvp;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcvp;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
