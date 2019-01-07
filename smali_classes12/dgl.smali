.class public abstract Ldgl;
.super Ljava/lang/Object;
.source "AbsChatDetailViewHolder.java"

# interfaces
.implements Ldcs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldgl$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

.field protected c:Landroid/view/View;

.field protected d:Landroid/app/Activity;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field g:Z

.field h:Landroid/widget/TextView;

.field i:I

.field j:J

.field k:Lcom/alibaba/wukong/im/Message;

.field protected l:Lcom/alibaba/wukong/im/Conversation;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private n:Landroid/widget/TextView;

.field private o:Ldgl$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Ldgl;->d:Landroid/app/Activity;

    .line 103
    iput-boolean p2, p0, Ldgl;->g:Z

    .line 104
    return-void
.end method

.method protected static a(Ljava/lang/CharSequence;Z)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "isFromSearch"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "avatar"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 311
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldgl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Ldgl$2;-><init>(Ldgl;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;I)V
    .locals 11
    .param p1, "model"    # Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 229
    iput-object p1, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .line 230
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Ldgl;->e:Landroid/view/View;

    sget v1, Lctk$f;->view_stub_chat_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    .line 235
    .local v9, "viewStub":Landroid/view/ViewStub;
    if-eqz v9, :cond_1

    invoke-virtual {p0}, Ldgl;->c()I

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Ldgl;->c()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 237
    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldgl;->c:Landroid/view/View;

    .line 240
    :cond_1
    iget-object v0, p0, Ldgl;->e:Landroid/view/View;

    sget v1, Lctk$f;->chattting_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldgl;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 241
    iget-object v0, p0, Ldgl;->e:Landroid/view/View;

    sget v1, Lctk$f;->tv_user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldgl;->h:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Ldgl;->e:Landroid/view/View;

    sget v1, Lctk$f;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldgl;->n:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Ldgl;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Ldgl;->n:Landroid/widget/TextView;

    iget-object v1, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->time:J

    invoke-static {v2, v3, v10, v7}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    :cond_2
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_6

    .line 1266
    iget-object v1, p0, Ldgl;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1268
    if-eqz v1, :cond_6

    .line 1269
    const-string/jumbo v0, ""

    .line 1271
    iget-object v2, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_3

    .line 1272
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v2, "senderName"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    :cond_3
    iget-object v2, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->senderId:J

    .line 1275
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 1276
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->senderId:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 1278
    if-nez v4, :cond_8

    .line 1279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1280
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->senderId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1282
    :cond_4
    invoke-direct {p0, v1, v0, v8}, Ldgl;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :goto_1
    iget-object v1, p0, Ldgl;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 1291
    iget-object v1, p0, Ldgl;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    if-eqz v4, :cond_6

    .line 1293
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1294
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 1295
    iget-object v0, p0, Ldgl;->o:Ldgl$a;

    if-eqz v0, :cond_5

    .line 1296
    iget-object v0, p0, Ldgl;->o:Ldgl$a;

    .line 1337
    iput-boolean v7, v0, Ldgl$a;->d:Z

    .line 1298
    :cond_5
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 1299
    new-instance v0, Ldgl$a;

    invoke-direct {v0, p0}, Ldgl$a;-><init>(Ldgl;)V

    iput-object v0, p0, Ldgl;->o:Ldgl$a;

    .line 1300
    iget-object v7, p0, Ldgl;->o:Ldgl$a;

    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2327
    iput-boolean v10, v7, Ldgl$a;->d:Z

    .line 2328
    iput-object v1, v7, Ldgl$a;->a:Ljava/lang/String;

    .line 2329
    iput-wide v2, v7, Ldgl$a;->b:J

    .line 2330
    iput-wide v4, v7, Ldgl$a;->c:J

    .line 2331
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2332
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 250
    :cond_6
    :goto_2
    if-lez p2, :cond_7

    iget-object v0, p0, Ldgl;->a:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    move-object v8, v0

    .line 251
    .local v8, "prevChatDetailModel":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    :cond_7
    if-eqz v8, :cond_b

    iget-wide v0, v8, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->senderId:J

    iget-object v2, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->senderId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 253
    iget-object v0, p0, Ldgl;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1284
    .end local v8    # "prevChatDetailModel":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1285
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1287
    :cond_9
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Ldgl;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1305
    :cond_a
    const-string/jumbo v0, ""

    invoke-direct {p0, v1, v0, v8}, Ldgl;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    .restart local v8    # "prevChatDetailModel":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    :cond_b
    iget-object v0, p0, Ldgl;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Ldgl;Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;I)V
    .locals 1
    .param p0, "x0"    # Ldgl;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    .param p2, "x2"    # I

    .prologue
    .line 62
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ldgl;->a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Ldgl;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "result":Landroid/view/View;
    return-object v0
.end method

.method public final a()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 391
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 365
    iput-object p1, p0, Ldgl;->f:Landroid/view/View;

    .line 366
    return-void
.end method

.method protected abstract a(Landroid/view/View;Z)V
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;ILdcr;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "iMsgModel"    # Ldcr;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    if-nez p4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p0, Ldgl;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget v0, Lctk$f;->item_search_message_data:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 180
    new-instance v0, Ldgl$1;

    invoke-direct {v0, p0, p2, p3, p1}, Ldgl$1;-><init>(Ldgl;Landroid/view/View;ILandroid/view/ViewGroup;)V

    invoke-static {p4, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Ldcr;Lcov;)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldgl;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Message;Z)V

    .line 127
    return-void
.end method

.method protected final a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 10
    .param p1, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "isEncrypt"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 130
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    iget-object v0, p0, Ldgl;->f:Landroid/view/View;

    sget v1, Lctk$f;->img_content:I

    invoke-static {v0, v1}, Ldof;->a(Landroid/view/View;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 136
    .local v7, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    const-string/jumbo v0, "intent_key_swipe_objects"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 138
    if-eqz p3, :cond_3

    .line 139
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 141
    .local v8, "orgId":J
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_image_view_big"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "org_id"

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 143
    const-string/jumbo v0, "burnChat"

    .line 144
    invoke-static {p2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    .line 143
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget-object v0, p0, Ldgl;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_find_in_chat"

    invoke-static {v0, v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    .line 148
    .local v6, "enableFindInChat":Z
    const-string/jumbo v0, "intent_key_find_in_chat"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    if-nez v6, :cond_2

    .line 150
    const-string/jumbo v0, "is_disable_view_all"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    :cond_2
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string/jumbo v0, "intent_key_swipe_objects"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;-><init>(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 157
    .local v2, "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldgl;->d:Landroid/app/Activity;

    move-object v3, p2

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 160
    .end local v2    # "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;
    .end local v6    # "enableFindInChat":Z
    .end local v8    # "orgId":J
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;-><init>()V

    .line 161
    .local v2, "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;
    iput-object p2, v2, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    .line 162
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 163
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldgl;->d:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 369
    iput-object p1, p0, Ldgl;->l:Lcom/alibaba/wukong/im/Conversation;

    .line 370
    return-void
.end method

.method protected final a(Lhcg$a;)V
    .locals 10
    .param p1, "imageProperty"    # Lhcg$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    iget-object v5, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-nez v5, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Ldgl;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 399
    .local v3, "origMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v3, :cond_0

    .line 402
    iget-object v5, p0, Ldgl;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 403
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v5, v1, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 404
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    .line 405
    .local v2, "mediaContent":Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "authCode":Ljava/lang/String;
    instance-of v5, v1, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v5, :cond_2

    .line 407
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_2
    iget-wide v6, p0, Ldgl;->j:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 412
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v5

    iget-wide v6, p0, Ldgl;->j:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 417
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-static {p1, v4}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    goto :goto_0

    .line 414
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v5, "IM"

    .line 415
    invoke-static {v3}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v7

    .line 414
    invoke-static {v5, v6, v0, v7}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .restart local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1
.end method

.method protected final a(Ljava/util/List;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "chatDetailModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;>;"
    iput-object p1, p0, Ldgl;->a:Ljava/util/List;

    .line 221
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    invoke-direct {p0, v0, p2}, Ldgl;->a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;I)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lctk$g;->view_chat_detail_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ldgl;->e:Landroid/view/View;

    .line 109
    iget-object v1, p0, Ldgl;->e:Landroid/view/View;

    return-object v1
.end method

.method protected final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v3, p0, Ldgl;->a:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 424
    iget-object v3, p0, Ldgl;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .line 425
    .local v1, "model":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    if-eqz v1, :cond_0

    .line 426
    iget-boolean v4, p0, Ldgl;->g:Z

    invoke-static {v1, v4}, Ldgv;->a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;Z)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v2

    .line 427
    .local v2, "type":Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    sget-object v4, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Image:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->EncryptImage:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    if-ne v2, v4, :cond_0

    .line 428
    :cond_1
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    .end local v1    # "model":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    .end local v2    # "type":Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    :cond_2
    return-object v0
.end method

.method protected abstract c()I
.end method
