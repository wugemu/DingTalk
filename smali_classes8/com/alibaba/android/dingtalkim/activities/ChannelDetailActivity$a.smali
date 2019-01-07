.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;
.super Ljava/lang/Object;
.source "ChannelDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final synthetic i:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->i:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_oa:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->a:Ljava/lang/String;

    .line 819
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_lst_msg_tip_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->b:Ljava/lang/String;

    .line 820
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_pic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->c:Ljava/lang/String;

    .line 821
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->d:Ljava/lang/String;

    .line 822
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->e:Ljava/lang/String;

    .line 823
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_lst_msg_tip_common_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->f:Ljava/lang/String;

    .line 824
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_file:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->g:Ljava/lang/String;

    .line 825
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_share:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$a;->h:Ljava/lang/String;

    .line 828
    return-void
.end method

.method static a(Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;Lcom/alibaba/wukong/im/Conversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "contentTv"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "showName"    # Z
    .param p5, "luckyMoneyMessageContentWithName"    # Z

    .prologue
    .line 885
    if-eqz p4, :cond_1

    .line 887
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 897
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "data"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 876
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 880
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
