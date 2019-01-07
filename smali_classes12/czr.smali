.class public abstract Lczr;
.super Lctv;
.source "UserSpacePictureViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field private Y:Lpl/droidsonroids/gif/GifImageView;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lczr;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 45
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lczr;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 46
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lczr;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    iput-object v0, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    .line 51
    iget-object v0, p0, Lczr;->r:Landroid/view/View;

    sget v1, Lctk$f;->cspace_watermark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczr;->S:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lczr;->S:Landroid/widget/ImageView;

    invoke-static {}, Lczx;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lczr;->S:Landroid/widget/ImageView;

    new-instance v1, Lczr$1;

    invoke-direct {v1, p0}, Lczr$1;-><init>(Lczr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lczr;->Y:Lpl/droidsonroids/gif/GifImageView;

    .line 60
    iget-object v0, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    invoke-virtual {p0, v0}, Lczr;->a(Landroid/widget/ImageView;)V

    .line 61
    invoke-virtual {p0, p2}, Lczr;->c(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 71
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 72
    .local v11, "thirdPartyDo":Ljava/lang/Object;
    instance-of v0, v11, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_2

    move-object v10, v11

    .line 73
    check-cast v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1078
    .local v10, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 1109
    .local v6, "imageProperty":Lhcg$a;
    iput-boolean v1, v6, Lhcg$a;->c:Z

    .line 1119
    iput v1, v6, Lhcg$a;->f:I

    .line 78
    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, v6, Lhcg$a;->d:Z

    .line 80
    iget-object v3, v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 81
    .local v3, "url":Ljava/lang/String;
    iget-object v0, v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v7, v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 83
    .local v7, "authMediaId":Ljava/lang/String;
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    invoke-virtual {v0, v7}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 91
    :cond_0
    :goto_0
    const-string/jumbo v0, "DINGDRIVE"

    .line 92
    invoke-static {v10}, Lczx;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    const/4 v4, 0x0

    .line 91
    invoke-static {v0, v1, v2, v4}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 93
    .local v9, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v6, v9}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 96
    .end local v7    # "authMediaId":Ljava/lang/String;
    .end local v9    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    iget-object v1, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lczr;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lczr;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 104
    .end local v3    # "url":Ljava/lang/String;
    .end local v6    # "imageProperty":Lhcg$a;
    .end local v10    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v11    # "thirdPartyDo":Ljava/lang/Object;
    :cond_2
    :goto_1
    iget-object v0, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    iget-wide v4, p0, Lczr;->V:J

    invoke-static {p1, p2, p0, v4, v5}, Lczw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts;J)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    sget-object v1, Lczr;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    invoke-virtual {p0, p1, p2}, Lczr;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 107
    iget-object v0, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    .line 2118
    sget v1, Lctk$i;->lst_msg_tip_pic:I

    invoke-static {v1}, Lczr;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lczr;->Y:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 109
    return-void

    .line 87
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v6    # "imageProperty":Lhcg$a;
    .restart local v7    # "authMediaId":Ljava/lang/String;
    .restart local v10    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .restart local v11    # "thirdPartyDo":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v7    # "authMediaId":Ljava/lang/String;
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v1, p0, Lczr;->b:Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lczr;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lczr;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

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
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lczr;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_image:I

    invoke-static {v2}, Lczr;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget v0, Lctk$i;->lst_msg_tip_pic:I

    invoke-static {v0}, Lczr;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
