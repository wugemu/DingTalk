.class public final Lbid;
.super Lbia;
.source "CommentNormalHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field b:Landroid/app/Activity;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

.field private h:Lcom/alibaba/android/ding/widget/VoicePlayView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/view/View;

.field private k:Lcom/alibaba/android/ding/adapter/CommentAdapter;

.field private l:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/adapter/CommentAdapter;Landroid/view/View;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "commentAdapter"    # Lcom/alibaba/android/ding/adapter/CommentAdapter;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 66
    invoke-direct {p0}, Lbia;-><init>()V

    .line 67
    iput-object p1, p0, Lbid;->b:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lbid;->k:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 69
    iput-object p4, p0, Lbid;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 70
    if-eqz p3, :cond_0

    .line 71
    sget v0, Laxp$f;->comment_avatar:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbid;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 72
    iget-object v0, p0, Lbid;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTextSize(F)V

    .line 73
    sget v0, Laxp$f;->comment_nick:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbid;->a:Landroid/widget/TextView;

    .line 74
    sget v0, Laxp$f;->comment_nick_action:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbid;->d:Landroid/widget/TextView;

    .line 75
    sget v0, Laxp$f;->comment_reply_nick:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbid;->e:Landroid/widget/TextView;

    .line 76
    sget v0, Laxp$f;->comment_time:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbid;->f:Landroid/widget/TextView;

    .line 77
    sget v0, Laxp$f;->comment_text_content:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    iput-object v0, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    .line 78
    sget v0, Laxp$f;->comment_audio_content:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/VoicePlayView;

    iput-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 79
    sget v0, Laxp$f;->comment_attachment_container:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    .line 80
    sget v0, Laxp$f;->divider_line:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbid;->j:Landroid/view/View;

    .line 82
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 7
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 197
    iget-object v4, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/LinkifiedTextView;->setVisibility(I)V

    .line 198
    iget-object v4, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v4, v6}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 199
    iget-object v4, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    check-cast v0, Layz;

    .line 201
    .local v0, "commentText":Layz;
    iget-object v4, v0, Layz;->a:Ljava/lang/String;

    iget-object v5, v0, Layz;->g:Ljava/util/Map;

    invoke-static {v4, v5}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "content":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    iget-object v5, p0, Lbid;->b:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    .line 204
    .local v3, "spannableString":Landroid/text/SpannableString;
    iget-object v4, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/widget/LinkifiedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :try_start_0
    iget-object v4, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    .line 8075
    const/16 v5, 0xf

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcql;->a(Landroid/widget/TextView;IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v3    # "spannableString":Landroid/text/SpannableString;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "[CommentNormalHolder]content parse linkify failed"

    invoke-static {v4, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(ZLcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 10
    .param p1, "isLastPosition"    # Z
    .param p2, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .param p3, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x8

    .line 86
    .line 1093
    iget-object v0, p0, Lbid;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1094
    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1098
    if-eqz p2, :cond_0

    if-nez p3, :cond_4

    .line 1099
    :cond_0
    iget-object v0, p0, Lbid;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1167
    invoke-virtual {v0, v3, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1100
    iget-object v0, p0, Lbid;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5166
    :goto_1
    if-nez p2, :cond_f

    .line 5167
    iget-object v0, p0, Lbid;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5174
    :goto_2
    if-eqz p2, :cond_1

    if-nez p3, :cond_10

    .line 5175
    :cond_1
    iget-object v0, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/LinkifiedTextView;->setVisibility(I)V

    .line 5176
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 5177
    iget-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6241
    :cond_2
    :goto_3
    return-void

    .line 1094
    :cond_3
    iget-object v1, p0, Lbid;->b:Landroid/app/Activity;

    const/high16 v4, 0x424c0000    # 51.0f

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    .line 1103
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 1104
    if-eqz v1, :cond_7

    .line 1106
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 1107
    iget-object v0, p0, Lbid;->b:Landroid/app/Activity;

    sget v4, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    :goto_4
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1113
    iget-object v4, p0, Lbid;->k:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 1363
    iget-object v4, v4, Lcom/alibaba/android/ding/adapter/CommentAdapter;->f:Ljava/util/Map;

    .line 1113
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1114
    iget-object v0, p0, Lbid;->k:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 2363
    iget-object v0, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->f:Ljava/util/Map;

    .line 1114
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1117
    :cond_5
    iget-object v4, p0, Lbid;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 3167
    invoke-virtual {v4, v5, v6, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1118
    iget-object v4, p0, Lbid;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v0, p0, Lbid;->a:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1124
    :goto_5
    iget-object v0, p0, Lbid;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lbid;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1125
    iget-object v0, p0, Lbid;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lbid;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    array-length v0, v0

    if-lez v0, :cond_a

    .line 1128
    iget-object v0, p0, Lbid;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_detail_comment_secret_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1129
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->i:[J

    aget-wide v4, v1, v2

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_9

    .line 1131
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_8

    iget-object v0, p0, Lbid;->b:Landroid/app/Activity;

    sget v1, Laxp$i;->ding_txt_sender_me:I

    .line 1132
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    :goto_6
    iget-object v1, p0, Lbid;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    :goto_7
    iget-object v0, p0, Lbid;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v1, Lbid$1;

    invoke-direct {v1, p0, p2}, Lbid$1;-><init>(Lbid;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1109
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1121
    :cond_7
    iget-object v0, p0, Lbid;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 4167
    invoke-virtual {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1122
    iget-object v0, p0, Lbid;->a:Landroid/widget/TextView;

    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1132
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1135
    :cond_9
    iget-object v0, p0, Lbid;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1138
    :cond_a
    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v0

    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    .line 1139
    iget-object v0, p0, Lbid;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_detail_comment_public_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1140
    iget-object v0, p0, Lbid;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1142
    :cond_b
    iget-object v0, p0, Lbid;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_detail_comment_secret_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1143
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_d

    .line 1145
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_c

    iget-object v0, p0, Lbid;->b:Landroid/app/Activity;

    sget v1, Laxp$i;->ding_txt_sender_me:I

    .line 1146
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_8
    iget-object v1, p0, Lbid;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1146
    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1149
    :cond_d
    iget-object v0, p0, Lbid;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1154
    :cond_e
    iget-object v0, p0, Lbid;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lbid;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 5170
    :cond_f
    iget-object v0, p0, Lbid;->f:Landroid/widget/TextView;

    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    invoke-static {v4, v5}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5180
    :cond_10
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v0, :cond_2

    .line 5181
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v0, v1, :cond_15

    .line 5182
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5184
    :cond_11
    invoke-direct {p0, p2}, Lbid;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    goto/16 :goto_3

    .line 5247
    :cond_12
    iget-object v0, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/LinkifiedTextView;->setVisibility(I)V

    .line 5248
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 5249
    iget-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5251
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    .line 5252
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_14

    .line 5253
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>(Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;Ljava/util/Map;)V

    .line 5254
    iget-object v0, p0, Lbid;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Layt;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    move-result-object v0

    .line 5255
    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setSendId(J)V

    .line 5256
    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setDingId(Ljava/lang/String;)V

    .line 5257
    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setCommentId(Ljava/lang/String;)V

    .line 5258
    sget-object v3, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    sget-object v4, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    sget-object v5, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V

    .line 5259
    iget-object v3, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5260
    iget-object v3, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5261
    sget v3, Laxp$e;->ding_attachment_bg:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    .line 5262
    iget-object v3, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5263
    iget v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_13

    .line 5264
    invoke-virtual {v0}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->b()V

    .line 5266
    :cond_13
    iget-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 5268
    :cond_14
    iget-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5269
    iget-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 5189
    :cond_15
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v0, v1, :cond_2

    .line 6215
    iget-object v0, p0, Lbid;->g:Lcom/alibaba/android/ding/widget/LinkifiedTextView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/LinkifiedTextView;->setVisibility(I)V

    .line 6216
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    .line 6217
    iget-object v0, p0, Lbid;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6218
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    check-cast v0, Layy;

    .line 6219
    iget-object v1, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "comment"

    aput-object v5, v4, v2

    iget-wide v6, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageId(Ljava/lang/String;)V

    .line 6220
    if-eqz v0, :cond_16

    iget-object v1, v0, Layy;->c:Ljava/util/List;

    if-eqz v1, :cond_16

    iget-object v1, v0, Layy;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6221
    :cond_16
    iget-object v1, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getWaveView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6225
    :goto_9
    if-eqz v0, :cond_1a

    iget-object v1, v0, Layy;->a:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Layy;->c:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 6226
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v2, v0, Layy;->a:Ljava/lang/String;

    invoke-static {v2}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Layy;->b:J

    iget-object v6, v0, Layy;->c:Ljava/util/List;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 6228
    if-eqz v1, :cond_19

    .line 6229
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 6230
    iget-object v2, v0, Layy;->d:Ljava/lang/String;

    invoke-static {v2}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 6231
    iget-object v2, v0, Layy;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthCode(Ljava/lang/String;)V

    .line 6232
    iget-object v4, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget-object v2, p0, Lbid;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lbid;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    :goto_a
    iget-wide v6, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Layy;->e:Ljava/lang/String;

    invoke-virtual {v4, v2, v3, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6233
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageAudio(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 6234
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setScheme(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    .line 6235
    iget-object v0, p0, Lbid;->k:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 6359
    iget-object v0, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->g:Lbkz;

    .line 6235
    if-eqz v0, :cond_2

    .line 6236
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget-object v1, p0, Lbid;->k:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 7359
    iget-object v1, v1, Lcom/alibaba/android/ding/adapter/CommentAdapter;->g:Lbkz;

    .line 6236
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    goto/16 :goto_3

    .line 6223
    :cond_17
    iget-object v1, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getWaveView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_18
    move-object v2, v3

    .line 6232
    goto :goto_a

    .line 6239
    :cond_19
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_3

    .line 6242
    :cond_1a
    iget-object v0, p0, Lbid;->h:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_3
.end method
