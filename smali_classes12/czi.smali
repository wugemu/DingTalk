.class public Lczi;
.super Lczk;
.source "UserPictureFromViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$a;
.implements Ldjn$a;


# static fields
.field private static ad:I

.field private static ae:I


# instance fields
.field private a:Landroid/widget/ImageView;

.field private ac:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput v0, Lczi;->ad:I

    .line 97
    sput v0, Lczi;->ae:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lczk;-><init>(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 13
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x0

    .line 75
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b()Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    move-result-object v2

    iget-object v1, p0, Lczi;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lczi;->X:Lcom/alibaba/wukong/im/Message;

    .line 1074
    iget-boolean v0, v2, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->c:Z

    if-nez v0, :cond_2

    .line 1075
    if-eqz v1, :cond_0

    .line 1076
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4187
    :cond_0
    :goto_0
    invoke-static {}, Ldjn$c;->a()Ldjn;

    move-result-object v1

    .line 76
    iget-object v5, p0, Lczi;->ac:Landroid/widget/TextView;

    iget-object v2, p0, Lczi;->X:Lcom/alibaba/wukong/im/Message;

    .line 5057
    iget-boolean v0, v1, Ldjn;->b:Z

    if-nez v0, :cond_7

    .line 5058
    if-eqz v5, :cond_1

    .line 5059
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5115
    :cond_1
    :goto_1
    return-void

    .line 1081
    :cond_2
    if-eqz v4, :cond_10

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1082
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    move-result-object v0

    .line 1309
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 1083
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    if-ne v5, v6, :cond_5

    .line 2309
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->e:Lcom/alibaba/wukong/im/Message;

    .line 1083
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1085
    :goto_2
    if-eqz v0, :cond_6

    .line 1086
    if-nez v1, :cond_f

    if-eqz p0, :cond_f

    .line 1087
    invoke-interface {p0}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$a;->p()Landroid/widget/ImageView;

    move-result-object v0

    .line 1089
    :goto_3
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    sget v1, Lctk$e;->icon_fight_emotion:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3222
    if-eqz v4, :cond_3

    .line 3225
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 3226
    invoke-virtual {v2, v1, v4}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3229
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    move-result-object v1

    .line 3231
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 3232
    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a:Ljava/util/HashSet;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3233
    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 3309
    iput v5, v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->d:I

    .line 4137
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 4138
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4139
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v1

    new-instance v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;

    invoke-direct {v5, v2, v0, v4}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Landroid/widget/ImageView;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v1, v5}, Lcnr;->a(Lcnq;)V

    .line 1100
    :cond_4
    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 1083
    goto :goto_2

    .line 1122
    :cond_6
    if-eqz v1, :cond_0

    .line 1123
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5063
    :cond_7
    const/4 v4, 0x0

    .line 5064
    if-eqz v2, :cond_a

    invoke-static {}, Lcms;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5065
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v0, :cond_a

    .line 5066
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v6

    .line 5067
    if-eqz v6, :cond_a

    const-string/jumbo v0, "e_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v2}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5069
    iget-wide v8, v1, Ldjn;->a:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_8

    .line 5070
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    iput-wide v8, v1, Ldjn;->a:J

    .line 5071
    const-string/jumbo v0, "pref_key_im_gif_emotion_first_seen"

    iget-wide v8, v1, Ldjn;->a:J

    invoke-static {v0, v8, v9}, Lcpk;->b(Ljava/lang/String;J)V

    .line 5073
    :cond_8
    const-string/jumbo v0, "activity_comment"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5074
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v8, v1, Ldjn;->a:J

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-nez v0, :cond_a

    .line 5076
    :cond_9
    new-instance v4, Ldjn$b;

    invoke-direct {v4, v6}, Ldjn$b;-><init>(Ljava/util/Map;)V

    .line 5086
    :cond_a
    if-eqz v4, :cond_d

    .line 5087
    if-nez v5, :cond_e

    if-eqz p0, :cond_e

    .line 5089
    invoke-interface {p0}, Ldjn$a;->q()Landroid/widget/TextView;

    move-result-object v0

    move-object v8, v0

    .line 5091
    :goto_4
    if-eqz v8, :cond_1

    .line 5094
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5095
    invoke-static {v4}, Ldjn$b;->a(Ldjn$b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5096
    invoke-static {v4}, Ldjn$b;->b(Ldjn$b;)J

    move-result-wide v6

    .line 5097
    invoke-static {v4}, Ldjn$b;->c(Ldjn$b;)I

    move-result v3

    .line 5143
    if-eqz v8, :cond_b

    if-nez v2, :cond_c

    .line 5101
    :cond_b
    :goto_5
    new-instance v0, Ldjn$1;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Ldjn$1;-><init>(Ldjn;Lcom/alibaba/wukong/im/Message;ILdjn$b;Landroid/app/Activity;J)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 5146
    :cond_c
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5147
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v0

    new-instance v5, Ldjn$2;

    invoke-direct {v5, v1, v8, v2, v3}, Ldjn$2;-><init>(Ldjn;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;I)V

    invoke-virtual {v0, v5}, Lcnr;->a(Lcnq;)V

    goto :goto_5

    .line 5116
    :cond_d
    if-eqz v5, :cond_1

    .line 5117
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    move-object v8, v5

    goto :goto_4

    :cond_f
    move-object v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v3

    goto/16 :goto_2
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 4
    .param p1, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v1, p0, Lczi;->Y:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lczi;->Y:Landroid/widget/ImageView;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 82
    iget-object v1, p0, Lczi;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 84
    iget-object v1, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "e_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lczi;->Y:Landroid/widget/ImageView;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setForgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const-string/jumbo v1, "1"

    iget-object v2, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "p_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 92
    :cond_0
    :goto_0
    iget-object v1, p0, Lczi;->Y:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 90
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lczi;->Y:Landroid/widget/ImageView;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$e;->im_chat_arrow_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;->setForgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lctk$g;->chatting_item_from_picture:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 38
    return-void
.end method

.method public final p()Landroid/widget/ImageView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v2, p0, Lczi;->a:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lczi;->e:Landroid/view/View;

    sget v3, Lctk$f;->compete_icon_stub:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 54
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "stubView":Landroid/view/View;
    sget v2, Lctk$f;->compete_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lczi;->a:Landroid/widget/ImageView;

    .line 58
    .end local v0    # "stub":Landroid/view/ViewStub;
    .end local v1    # "stubView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lczi;->a:Landroid/widget/ImageView;

    return-object v2
.end method

.method public final q()Landroid/widget/TextView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v2, p0, Lczi;->ac:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Lczi;->e:Landroid/view/View;

    sget v3, Lctk$f;->img_emotion_guide_stub:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 65
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "stubView":Landroid/view/View;
    sget v2, Lctk$f;->img_emotion_guide:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lczi;->ac:Landroid/widget/TextView;

    .line 69
    .end local v0    # "stub":Landroid/view/ViewStub;
    .end local v1    # "stubView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lczi;->ac:Landroid/widget/TextView;

    return-object v2
.end method
