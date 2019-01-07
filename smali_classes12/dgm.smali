.class public final Ldgm;
.super Ldgl;
.source "ChatDetailEncryptImageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private m:Landroid/widget/ImageView;

.field private n:Lcom/alibaba/doraemon/image/ImageMagician;

.field private o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ldgl;-><init>(Landroid/app/Activity;Z)V

    .line 49
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldgm;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 50
    return-void
.end method

.method static synthetic a(Ldgm;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Ldgm;

    .prologue
    .line 39
    iget-object v0, p0, Ldgm;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Ldgm;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Ldgm;

    .prologue
    .line 39
    iget-object v0, p0, Ldgm;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method private d()Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v2, p0, Ldgm;->o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {p0}, Ldgm;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 149
    .local v1, "origMessage":Lcom/alibaba/wukong/im/Message;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 150
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    :goto_0
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    invoke-virtual {p0}, Ldgm;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;-><init>(Ljava/util/List;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v2, p0, Ldgm;->o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    .line 153
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "origMessage":Lcom/alibaba/wukong/im/Message;
    :cond_0
    iget-object v2, p0, Ldgm;->o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    return-object v2

    .line 149
    .restart local v1    # "origMessage":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/View;Z)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isFromSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Ldgm;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1098
    .end local p1    # "parent":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local p1    # "parent":Landroid/view/View;
    :cond_1
    iput-boolean p2, p0, Ldgm;->p:Z

    .line 65
    iget-object v0, p0, Ldgm;->c:Landroid/view/View;

    sget v2, Lctk$f;->img_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldgm;->m:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Ldgm;->m:Landroid/widget/ImageView;

    sget v2, Lctk$c;->bg_gray:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_3

    .line 69
    :cond_2
    iget-object v0, p0, Ldgm;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1092
    :cond_3
    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 1097
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 1101
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_5

    check-cast p1, Landroid/widget/AbsListView;

    .end local p1    # "parent":Landroid/view/View;
    move-object v4, p1

    .line 2078
    :goto_1
    new-instance v5, Lhcg$a;

    invoke-direct {v5}, Lhcg$a;-><init>()V

    .line 1158
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v3

    .line 2114
    iput v3, v5, Lhcg$a;->e:I

    .line 1159
    const/4 v3, 0x1

    .line 3109
    iput-boolean v3, v5, Lhcg$a;->c:Z

    .line 1160
    const/16 v3, 0xa

    .line 3119
    iput v3, v5, Lhcg$a;->f:I

    .line 1161
    const/4 v3, 0x0

    .line 3124
    iput-boolean v3, v5, Lhcg$a;->d:Z

    .line 1162
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v3

    if-lez v3, :cond_6

    .line 1163
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v1

    .line 3134
    iput v1, v5, Lhcg$a;->h:I

    .line 1164
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v0

    .line 4129
    iput v0, v5, Lhcg$a;->g:I

    .line 1103
    :goto_2
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1104
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1106
    :goto_3
    new-instance v0, Ldgm$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldgm$1;-><init>(Ldgm;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 1126
    iget-object v1, p0, Ldgm;->d:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 1127
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldgm;->d:Landroid/app/Activity;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1129
    :cond_4
    invoke-direct {p0}, Ldgm;->d()Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;->getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .restart local p1    # "parent":Landroid/view/View;
    :cond_5
    move-object v4, v1

    .line 1101
    goto :goto_1

    .line 1166
    .end local p1    # "parent":Landroid/view/View;
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1167
    const-string/jumbo v3, "message has not width or height  "

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1168
    const-string/jumbo v3, "crypto"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1104
    :cond_7
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lctk$g;->view_chat_detail_item_image:I

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->img_content:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-boolean v0, p0, Ldgm;->p:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v6

    .line 84
    .local v6, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v0, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {p0, v6, v0, v4}, Ldgm;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_0

    .line 4133
    .end local v6    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4134
    const-string/jumbo v0, "forward_enter_hide"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4135
    const-string/jumbo v0, "save_space_enter_hide"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4136
    const-string/jumbo v0, "save_to_phone_enter_hide"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4138
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4139
    iget-object v0, p0, Ldgm;->f:Landroid/view/View;

    sget v1, Lctk$f;->img_content:I

    invoke-static {v0, v1}, Ldof;->a(Landroid/view/View;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4140
    const-string/jumbo v1, "intent_key_swipe_objects"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4142
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldgm;->d:Landroid/app/Activity;

    .line 4143
    invoke-direct {p0}, Ldgm;->d()Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    move-result-object v2

    iget-object v3, p0, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 4142
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method
