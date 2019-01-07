.class public final Ldgp;
.super Ldgl;
.source "ChatDetailNamecardViewHolder.java"


# instance fields
.field private m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ldgl;-><init>(Landroid/app/Activity;Z)V

    .line 27
    return-void
.end method

.method static synthetic a(Ldgp;Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p0, "x0"    # Ldgp;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 20
    .line 1077
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_0

    .line 1080
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p1    # "x1":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1081
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v1, :cond_0

    move-object v5, v0

    .line 1085
    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 1086
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Ldgp;->d:Landroid/app/Activity;

    iget-wide v2, v5, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    iget-object v4, v5, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->phone:Ljava/lang/String;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Z)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isFromSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Ldgp;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Ldgp;->c:Landroid/view/View;

    sget v1, Lctk$f;->namecard_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldgp;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 40
    iget-object v0, p0, Ldgp;->c:Landroid/view/View;

    sget v1, Lctk$f;->namecard_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldgp;->n:Landroid/widget/TextView;

    .line 1055
    iget-object v0, p0, Ldgp;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Ldgp;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Ldgp;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1062
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v1, :cond_1

    .line 1065
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 1067
    const/4 v1, 0x0

    .line 1069
    :try_start_0
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1072
    :goto_1
    iget-object v2, p0, Ldgp;->n:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v2, p0, Ldgp;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    iget-object v0, p0, Ldgp;->c:Landroid/view/View;

    new-instance v1, Ldgp$1;

    invoke-direct {v1, p0}, Ldgp$1;-><init>(Ldgp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->view_chat_detail_item_namecard:I

    return v0
.end method
