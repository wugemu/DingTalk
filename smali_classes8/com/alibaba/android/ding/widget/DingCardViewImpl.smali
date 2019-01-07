.class public Lcom/alibaba/android/ding/widget/DingCardViewImpl;
.super Lcom/alibaba/android/ding/base/objects/DingCardView;
.source "DingCardViewImpl.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private e:Lcom/alibaba/android/ding/widget/VoicePlayView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/alibaba/wukong/im/Message;

.field private s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

.field private t:Lcom/alibaba/android/ding/base/objects/DingCardView$a;

.field private u:Lbht;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/DingCardView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/base/objects/DingCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(JZ)V
    .locals 9
    .param p1, "firstExecutorUid"    # J
    .param p3, "hasMoreThanOneExecutor"    # Z

    .prologue
    const/4 v8, 0x0

    .line 318
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 324
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    if-eqz p3, :cond_1

    sget v1, Laxp$i;->dt_task_executor_etc_at:I

    :goto_1
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    .line 326
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v6, Laxp$i;->ding_txt_sender_me:I

    .line 327
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    :goto_2
    aput-object v2, v5, v8

    .line 324
    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget v1, Laxp$i;->dt_task_executor_at:I

    goto :goto_1

    .line 328
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 116
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should init DingCardView with Activity context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 119
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    .line 1157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_card:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1159
    sget v0, Laxp$f;->title_indicator_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1160
    sget v0, Laxp$f;->title_content_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c:Landroid/widget/TextView;

    .line 1162
    sget v0, Laxp$f;->ding_text_content_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 1163
    sget v0, Laxp$f;->ding_audio_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/VoicePlayView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setWaveViewMinSampleSize(I)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setWaveViewMaxWidth(I)V

    .line 1167
    sget v0, Laxp$f;->tv_executors:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    .line 1169
    sget v0, Laxp$f;->tv_deadline:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->g:Landroid/widget/TextView;

    .line 1171
    sget v0, Laxp$f;->ding_meeting_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->h:Landroid/widget/LinearLayout;

    .line 1172
    sget v0, Laxp$f;->ding_meeting_time_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->i:Landroid/widget/TextView;

    .line 1173
    sget v0, Laxp$f;->ding_meeting_location_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->j:Landroid/widget/TextView;

    .line 1175
    sget v0, Laxp$f;->tv_attachment_num:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->k:Landroid/widget/TextView;

    .line 1177
    sget v0, Laxp$f;->ll_attachment:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->l:Landroid/widget/LinearLayout;

    .line 1179
    sget v0, Laxp$f;->action_ll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->n:Landroid/widget/LinearLayout;

    .line 1180
    sget v0, Laxp$f;->ding_action1_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->o:Landroid/widget/TextView;

    .line 1181
    sget v0, Laxp$f;->action1_action2_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->p:Landroid/view/View;

    .line 1182
    sget v0, Laxp$f;->ding_action2_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->q:Landroid/widget/TextView;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingCardViewImpl;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingCardViewImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(JZ)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)Lcom/alibaba/android/ding/base/objects/DingCardView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->t:Lcom/alibaba/android/ding/base/objects/DingCardView$a;

    return-object v0
.end method

.method private c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 365
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getDingAttachments()Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, "attachmentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 367
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 368
    .local v0, "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    if-eqz v5, :cond_0

    .line 371
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    invoke-static {v5, v0}, Layt;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    .line 377
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    if-eqz v5, :cond_5

    .line 378
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->senderId()Ljava/lang/String;

    move-result-object v6

    .line 6109
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 378
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setSendId(J)V

    .line 379
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setParentListView(Landroid/widget/ListView;)V

    .line 380
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setDingId(Ljava/lang/String;)V

    .line 381
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget-object v6, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    sget-object v7, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    sget-object v8, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V

    .line 385
    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "1"

    iget-object v6, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v7, "isRE"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    .local v2, "isHongbaoLink":Z
    :goto_1
    iget v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_1

    if-eqz v2, :cond_3

    .line 387
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v6, Laxp$e;->ding_attachment_red_bg:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    .line 391
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 392
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->l:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 394
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->b()V

    .line 398
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    .end local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .end local v2    # "isHongbaoLink":Z
    :goto_4
    return-void

    .line 372
    .restart local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :catch_0
    move-exception v3

    .line 373
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "[DingCardView]release attachment view failed"

    invoke-static {v5, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_2
    move v2, v4

    .line 385
    goto :goto_1

    .line 389
    .restart local v2    # "isHongbaoLink":Z
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v6, Laxp$e;->ding_attachment_bg:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    goto :goto_2

    .line 396
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->m:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->c()V

    goto :goto_3

    .line 400
    .end local v2    # "isHongbaoLink":Z
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 403
    .end local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->bizType()Ljava/lang/String;

    move-result-object v0

    .line 6150
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 449
    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 453
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->bizType()Ljava/lang/String;

    move-result-object v0

    .line 7150
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 453
    invoke-static {v0}, Lbkh;->c(I)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->bizType()Ljava/lang/String;

    move-result-object v2

    .line 8150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 505
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 507
    :cond_0
    return-void
.end method

.method private getAudioContent()Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 461
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->getAudioContent()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 462
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->content()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "audioContentStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->fromJson(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    move-result-object v0

    .line 465
    .local v0, "audioContentModel":Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    if-eqz v0, :cond_0

    .line 466
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->setAudioContent(Ljava/lang/Object;)V

    .line 470
    .end local v0    # "audioContentModel":Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    .end local v1    # "audioContentStr":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->getAudioContent()Ljava/lang/Object;

    move-result-object v2

    .line 471
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    if-eqz v3, :cond_1

    .line 472
    check-cast v2, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    .line 474
    .end local v2    # "object":Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v2    # "object":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getContextTextMaxLines()I
    .locals 1

    .prologue
    .line 272
    const/16 v0, 0x32

    return v0
.end method

.method private getDingAttachments()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 478
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->getDingAttachments()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 479
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->getDingAttachmentsStr()Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "dingAttachmentsStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 481
    invoke-static {v5}, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;->fromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 482
    .local v3, "dingAttachmentModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;>;"
    if-eqz v3, :cond_2

    .line 483
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v4, "dingAttachmentObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    .line 485
    .local v2, "dingAttachmentModel":Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;
    if-eqz v2, :cond_0

    .line 488
    new-instance v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v8, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>(Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;)V

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    .end local v2    # "dingAttachmentModel":Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v7, v4}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->setDingAttachments(Ljava/lang/Object;)V

    .line 494
    .end local v3    # "dingAttachmentModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;>;"
    .end local v4    # "dingAttachmentObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    .end local v5    # "dingAttachmentsStr":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 496
    .local v1, "attachmentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->getDingAttachments()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_1
    return-object v1

    .line 497
    :catch_0
    move-exception v6

    .line 498
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "[DingCardView]getDingAttachments failed"

    invoke-static {v7, v6}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f()V

    .line 154
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;Lcom/alibaba/android/ding/base/objects/DingCardView$a;)V
    .locals 11
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "dingCardContent"    # Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    .param p3, "dingCardCallback"    # Lcom/alibaba/android/ding/base/objects/DingCardView$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 125
    .line 2135
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 2137
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    move v0, v2

    .line 125
    :goto_0
    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b()V

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 4432
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    .line 2137
    goto :goto_0

    .line 2186
    :cond_3
    if-eqz p2, :cond_1

    .line 2189
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->r:Lcom/alibaba/wukong/im/Message;

    .line 2190
    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 2191
    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->t:Lcom/alibaba/android/ding/base/objects/DingCardView$a;

    .line 2204
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2205
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_task_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2206
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$e;->ding_bg_corner_2_solid_orange:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundResource(I)V

    .line 2207
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_list_task:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2220
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v0, :cond_4

    .line 2224
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2228
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->msgType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2229
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getAudioContent()Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    move-result-object v1

    .line 2230
    if-nez v1, :cond_7

    .line 2231
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getContextTextMaxLines()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 2232
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 2233
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v4, Laxp$i;->dt_ding_app_notification_audio:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 2234
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 3276
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3277
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4332
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4333
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4347
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4348
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4408
    :goto_6
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getDingAttachments()Ljava/util/List;

    move-result-object v0

    .line 4409
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_17

    .line 4410
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4411
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v5, Laxp$i;->dt_ding_attachment_num_fmt:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2199
    :goto_7
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c()V

    .line 4418
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4420
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4421
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->o:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_view_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4422
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingCardViewImpl$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl$2;-><init>(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4457
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->senderId()Ljava/lang/String;

    move-result-object v0

    .line 5109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4457
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_18

    .line 4429
    :goto_8
    if-eqz v2, :cond_19

    .line 4430
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->p:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4431
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4432
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 2208
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2209
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_meeting_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2210
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$e;->ding_bg_corner_2_solid_green:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundResource(I)V

    .line 2211
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_list_conference:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 2213
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_ding_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 2214
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$e;->ding_bg_corner_2_solid_blue:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundResource(I)V

    .line 2215
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->c:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 2238
    :cond_7
    iget-object v0, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2239
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2240
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getContextTextMaxLines()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 2241
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 2242
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v4, Laxp$i;->dt_ding_app_notification_audio:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 2243
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2247
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "ding"

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageId(Ljava/lang/String;)V

    .line 2248
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    invoke-interface {v0, v4, v6, v7, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 2249
    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->authMedia:Lazg;

    if-eqz v4, :cond_9

    .line 2250
    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->authMedia:Lazg;

    iget-object v4, v4, Lazg;->a:Ljava/lang/String;

    invoke-static {v4}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 2251
    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->authMedia:Lazg;

    iget-object v4, v4, Lazg;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthCode(Ljava/lang/String;)V

    .line 2252
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->authMedia:Lazg;

    iget-object v1, v1, Lazg;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v10, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageAudio(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 2255
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setScheme(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    .line 2256
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {}, Lbkz;->b()Lbkz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 2257
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 2258
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2260
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->content()Ljava/lang/String;

    move-result-object v0

    .line 2261
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->getContextTextMaxLines()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 2262
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 2263
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xc8

    if-le v1, v4, :cond_b

    .line 2264
    new-array v1, v9, [Ljava/lang/String;

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string/jumbo v0, "..."

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2266
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getTextSize()F

    move-result v7

    invoke-static {v6, v7}, Lcms;->d(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 3050
    invoke-virtual {v4, v5, v0, v6}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 2266
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 2267
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->e:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_3

    .line 3280
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->getExecutorUids()Ljava/util/List;

    move-result-object v1

    .line 3281
    if-eqz v1, :cond_d

    .line 3282
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3283
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3284
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 3287
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3288
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4044
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3289
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_f

    move v1, v2

    .line 3290
    :goto_9
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_11

    .line 3291
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3292
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_10

    .line 3293
    invoke-direct {p0, v4, v5, v1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(JZ)V

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 3289
    goto :goto_9

    .line 3296
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3299
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    if-eqz v0, :cond_12

    .line 3300
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    .line 4053
    iput-boolean v2, v0, Lbht;->a:Z

    .line 3302
    :cond_12
    new-instance v0, Lbht;

    new-instance v6, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;

    invoke-direct {v6, p0, v4, v5, v1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;-><init>(Lcom/alibaba/android/ding/widget/DingCardViewImpl;JZ)V

    invoke-direct {v0, v4, v5, v6}, Lbht;-><init>(JLbht$a;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    .line 3314
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    invoke-virtual {v0}, Lbht;->a()V

    goto/16 :goto_4

    .line 4336
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->endTime()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_14

    .line 4337
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 4340
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4341
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->g:Landroid/widget/TextView;

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v5, Laxp$i;->ding_deadline_tip:I

    .line 4342
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 4343
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->endTime()J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4341
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 4351
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4352
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->i:Landroid/widget/TextView;

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v5, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 4354
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 4355
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->startTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->endTime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4353
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4352
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4356
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->location()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4357
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 4359
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4360
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->j:Landroid/widget/TextView;

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a:Landroid/app/Activity;

    sget v5, Laxp$i;->dt_ding_meeting_location_prefix:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->location()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 4413
    :cond_17
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_18
    move v2, v3

    .line 4457
    goto/16 :goto_8

    .line 4434
    :cond_19
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4435
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4436
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->q:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_reaction_icon_comment:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4437
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingCardViewImpl$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl$3;-><init>(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    .line 6053
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbht;->a:Z

    .line 144
    iput-object v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->u:Lbht;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->d:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setStrikeValue(F)V

    .line 147
    iput-object v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->r:Lcom/alibaba/wukong/im/Message;

    .line 148
    iput-object v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->s:Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 149
    return-void
.end method
