.class public abstract Lczf;
.super Lctv;
.source "UserNamecardViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Landroid/app/Activity;

.field private Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lczf;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    return-void
.end method

.method static synthetic a(Lczf;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    .locals 1
    .param p0, "x0"    # Lczf;

    .prologue
    .line 27
    iget-object v0, p0, Lczf;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    return-object v0
.end method

.method static synthetic a(Lczf;Landroid/app/Activity;J)V
    .locals 4
    .param p0, "x0"    # Lczf;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # J

    .prologue
    .line 27
    .line 1099
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1105
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1106
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1107
    new-instance v1, Lczf$2;

    invoke-direct {v1, p0, v0, p1}, Lczf$2;-><init>(Lczf;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/app/Activity;)V

    .line 1128
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 1129
    invoke-interface {v0, v1, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1128
    invoke-interface {v2, p2, p3, v0}, Ldxu;->g(JLcma;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 134
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lczf;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 135
    if-eqz p2, :cond_0

    .line 136
    sget v0, Lctk$f;->namecard_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lczf;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 137
    sget v0, Lctk$f;->namecard_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczf;->S:Landroid/widget/TextView;

    .line 139
    :cond_0
    invoke-virtual {p0, p2}, Lczf;->c(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 43
    iput-object p1, p0, Lczf;->Y:Landroid/app/Activity;

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "isFill":Z
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v3, :cond_2

    move-object v3, p2

    .line 46
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 47
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v3, :cond_2

    .line 48
    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .end local v2    # "obj":Ljava/lang/Object;
    iput-object v2, p0, Lczf;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 49
    iget-object v3, p0, Lczf;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v3, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "avatarUrl":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lczf;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    iget-object v3, p0, Lczf;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lczf;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v0    # "avatarUrl":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lczf;->S:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lczf;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 59
    iget-object v3, p0, Lczf;->S:Landroid/widget/TextView;

    iget-object v4, p0, Lczf;->Z:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    :goto_1
    iget-object v3, p0, Lczf;->r:Landroid/view/View;

    new-instance v4, Lczf$1;

    invoke-direct {v4, p0, p1}, Lczf$1;-><init>(Lczf;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const/4 v1, 0x1

    .line 86
    :cond_2
    if-nez v1, :cond_5

    .line 87
    iget-object v3, p0, Lczf;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v3, :cond_3

    .line 88
    iget-object v3, p0, Lczf;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_3
    iget-object v3, p0, Lczf;->S:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Lczf;->S:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_4
    iget-object v3, p0, Lczf;->r:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_5
    invoke-virtual {p0, p1, p2}, Lczf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 96
    return-void

    .line 61
    :cond_6
    iget-object v3, p0, Lczf;->S:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0    # "avatarUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lczf;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_name_card:I

    invoke-static {v2}, Lczf;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lczf;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczf;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_namecard:I

    invoke-static {v2}, Lczf;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lczf;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczf;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
