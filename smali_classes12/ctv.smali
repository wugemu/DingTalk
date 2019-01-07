.class public abstract Lctv;
.super Lcts;
.source "AbsUserMsgHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lctv$a;
    }
.end annotation


# instance fields
.field private S:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field protected T:Z

.field protected U:Z

.field protected V:J

.field protected W:J

.field protected X:Lcom/alibaba/wukong/im/Message;

.field private Y:Lctv$a;

.field private Z:Landroid/view/View$OnClickListener;

.field private a:Z

.field private aa:Landroid/view/View$OnClickListener;

.field private ab:Landroid/view/View$OnClickListener;

.field private b:J


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isTo"    # Z

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcts;-><init>()V

    .line 71
    iput-boolean v0, p0, Lctv;->T:Z

    .line 72
    iput-boolean v0, p0, Lctv;->U:Z

    .line 79
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iput-object v0, p0, Lctv;->S:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 223
    new-instance v0, Lctv$7;

    invoke-direct {v0, p0}, Lctv$7;-><init>(Lctv;)V

    iput-object v0, p0, Lctv;->Z:Landroid/view/View$OnClickListener;

    .line 827
    new-instance v0, Lctv$4;

    invoke-direct {v0, p0}, Lctv$4;-><init>(Lctv;)V

    iput-object v0, p0, Lctv;->aa:Landroid/view/View$OnClickListener;

    .line 840
    new-instance v0, Lctv$5;

    invoke-direct {v0, p0}, Lctv$5;-><init>(Lctv;)V

    iput-object v0, p0, Lctv;->ab:Landroid/view/View$OnClickListener;

    .line 85
    iput-boolean p1, p0, Lctv;->O:Z

    .line 86
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 784
    if-nez p1, :cond_0

    .line 785
    iget-object v0, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 786
    iget-object v0, p0, Lctv;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lctv;->d:Landroid/app/Activity;

    const/high16 v4, 0x40800000    # 4.0f

    .line 787
    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 786
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 794
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v0, p0, Lctv;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lctv;->d:Landroid/app/Activity;

    const/high16 v4, 0x41000000    # 8.0f

    .line 791
    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 790
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 792
    iget-object v0, p0, Lctv;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lctv;->d:Landroid/app/Activity;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)V
    .locals 1
    .param p1, "personStatus"    # Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    .prologue
    .line 822
    iget-object v0, p0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    invoke-static {v0, p1}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)Z

    .line 825
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 757
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 761
    iget-object v3, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 763
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v1

    .line 764
    .local v1, "isWorkmate":Z
    if-eqz v1, :cond_3

    .line 765
    iget-object v3, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    iget-object v3, p0, Lctv;->p:Landroid/widget/TextView;

    sget v4, Lctk$i;->dt_im_bubble_name_colleague_mark:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 767
    invoke-direct {p0, v0}, Lctv;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 769
    :cond_3
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {p1, v3}, Ldjl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v2

    .line 770
    .local v2, "orgInfo":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 771
    :cond_4
    iget-object v3, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    invoke-direct {p0, v0}, Lctv;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 774
    :cond_5
    iget-object v3, p0, Lctv;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    iget-object v3, p0, Lctv;->p:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5798
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v3, :cond_6

    .line 5801
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->authLevel:I

    packed-switch v3, :pswitch_data_0

    .line 5808
    sget v3, Lctk$i;->icon_certification_f:I

    invoke-static {v3}, Lctv;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 5809
    iget-object v3, p0, Lctv;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lctk$c;->ui_common_level3_text_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 5812
    :goto_1
    if-eqz v4, :cond_6

    iget-object v5, p0, Lctv;->d:Landroid/app/Activity;

    if-eqz v5, :cond_6

    .line 5813
    new-instance v0, Lcjz;

    invoke-direct {v0, v4, v3}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 5814
    iget-object v3, p0, Lctv;->d:Landroid/app/Activity;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 6045
    iput v3, v0, Lcjz;->b:F

    .line 777
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-direct {p0, v0}, Lctv;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5804
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget v3, Lctk$i;->icon_certification_f:I

    invoke-static {v3}, Lctv;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 5805
    iget-object v3, p0, Lctv;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lctk$c;->ui_common_warming_text_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 5801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lctv;Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)V
    .locals 0
    .param p0, "x0"    # Lctv;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lctv;->a(Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)V

    return-void
.end method

.method static synthetic a(Lctv;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p0, "x0"    # Lctv;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lctv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;)V

    return-void
.end method

.method static synthetic a(Lctv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lctv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lctv;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v2, p0, Lctv;->j:Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;

    if-nez v2, :cond_0

    .line 885
    .end local p1    # "mediaId":Ljava/lang/String;
    :goto_0
    return-void

    .line 881
    .restart local p1    # "mediaId":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lctv;->V:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 882
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 883
    .local v0, "isShow":Z
    :goto_1
    iget-object v2, p0, Lctv;->j:Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;

    if-eqz v0, :cond_2

    .end local p1    # "mediaId":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;->a(Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 882
    .end local v0    # "isShow":Z
    .restart local p1    # "mediaId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "isShow":Z
    :cond_2
    move-object p1, v1

    .line 883
    goto :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "conversationType"    # I

    .prologue
    const/4 v0, 0x1

    .line 289
    if-ne p1, v0, :cond_0

    .line 290
    iput-boolean v0, p0, Lctv;->T:Z

    .line 292
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "conversationTag"    # J

    .prologue
    .line 296
    iput-wide p1, p0, Lctv;->V:J

    .line 297
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lctv;->U:Z

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctv;->U:Z

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 22
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 102
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v20, v0

    .line 1318
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->m:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->m:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->m:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1322
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lctv;->a(Ljava/lang/String;)V

    .line 1323
    if-eqz v20, :cond_1

    .line 1325
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    .line 1326
    new-instance v4, Lctv$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lctv$8;-><init>(Lctv;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1333
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_17

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->S:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->S:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v9

    .line 1336
    :goto_0
    new-instance v4, Lctv$9;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lctv$9;-><init>(Lctv;JLandroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    if-nez v9, :cond_e

    .line 1452
    sget v4, Lctk$e;->icon_avatar_default_round:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1497
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->l:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->k:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->l:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1499
    move-object/from16 v0, p0

    iget-wide v4, v0, Lctv;->V:J

    const-wide/16 v10, 0x4

    cmp-long v4, v4, v10

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->T:Z

    if-eqz v4, :cond_12

    .line 1500
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->k:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2662
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    .line 2663
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->O:Z

    if-eqz v4, :cond_18

    .line 2664
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2712
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->p:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    if-eqz p4, :cond_5

    if-eqz p1, :cond_5

    .line 2713
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->O:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->T:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->U:Z

    if-eqz v4, :cond_1b

    .line 2714
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->p:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->p:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->p:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3159
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    if-eqz p4, :cond_7

    .line 3160
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->T:Z

    if-eqz v4, :cond_1d

    .line 3161
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setTag(Ljava/lang/Object;)V

    .line 3162
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lctv;->a(Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)V

    .line 109
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->s:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->s:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->w:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->t:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->u:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->v:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->t:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 118
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->C:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->C:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->F:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_a

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->af()Lcom/alibaba/wukong/im/Message;

    move-result-object v18

    .line 125
    .local v18, "m":Lcom/alibaba/wukong/im/Message;
    if-eqz v18, :cond_23

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_23

    .line 3202
    if-eqz p4, :cond_22

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 3203
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v4, v5, :cond_1f

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 3204
    const/4 v4, 0x1

    .line 125
    :goto_6
    if-eqz v4, :cond_23

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->F:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->F:Landroid/view/View;

    new-instance v5, Lctv$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lctv$1;-><init>(Lctv;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .end local v18    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_b

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U()Ldru;

    move-result-object v19

    .line 141
    .local v19, "manager":Ldru;
    if-eqz v19, :cond_b

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ldru;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lctv;->d(Z)V

    .line 3862
    .end local v19    # "manager":Ldru;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->d:Landroid/app/Activity;

    if-nez v4, :cond_24

    .line 147
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lctv;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lctv;->o()Z

    .line 149
    return-void

    .line 1334
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1454
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->m:Landroid/widget/ImageView;

    if-eqz v4, :cond_f

    .line 1455
    move-object/from16 v0, p0

    iget-wide v4, v0, Lctv;->V:J

    const-wide/16 v10, 0x4

    cmp-long v4, v4, v10

    if-nez v4, :cond_10

    .line 1456
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->m:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1470
    :cond_f
    :goto_9
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lctv;->a(Ljava/lang/String;)V

    .line 1473
    move-object/from16 v0, p0

    iget-wide v4, v0, Lctv;->V:J

    const-wide/16 v10, 0x4

    cmp-long v4, v4, v10

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lctv;->T:Z

    if-eqz v4, :cond_11

    .line 1474
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1475
    sget v4, Lctk$e;->icon_burn_chat_avatar_small:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1481
    :goto_a
    iget-object v4, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1483
    new-instance v4, Lctv$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v9, v2}, Lctv$10;-><init>(Lctv;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/app/Activity;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 1458
    :cond_10
    invoke-static {v9}, Lddq;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v12

    .line 1459
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1460
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->m:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1461
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1463
    move-object/from16 v0, p0

    iget-object v11, v0, Lctv;->m:Landroid/widget/ImageView;

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_9

    .line 1477
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1478
    iget-object v4, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1501
    :cond_12
    if-nez v9, :cond_13

    .line 1502
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->l:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->k:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->n:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1506
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->S:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->S:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-wide v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(J)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1507
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->n:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->n:Landroid/widget/TextView;

    new-instance v5, Lctv$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lctv$11;-><init>(Lctv;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    :goto_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lctv;->b:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_14

    .line 1518
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->l:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->k:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1521
    :cond_14
    move-object/from16 v0, p0

    iput-wide v6, v0, Lctv;->b:J

    .line 1522
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1523
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->Y:Lctv$a;

    if-eqz v4, :cond_15

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->Y:Lctv$a;

    .line 1559
    const/4 v5, 0x1

    iput-boolean v5, v4, Lctv$a;->d:Z

    .line 1526
    :cond_15
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v4, v5}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v10

    .line 1527
    new-instance v4, Lctv$a;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lctv$a;-><init>(Lctv;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lctv;->Y:Lctv$a;

    .line 1528
    move-object/from16 v0, p0

    iget-object v11, v0, Lctv;->Y:Lctv$a;

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lctv;->W:J

    iget-wide v8, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2549
    const/4 v4, 0x0

    iput-boolean v4, v11, Lctv$a;->d:Z

    .line 2550
    iput-object v5, v11, Lctv$a;->a:Ljava/lang/String;

    .line 2551
    iput-wide v6, v11, Lctv$a;->b:J

    .line 2552
    iput-wide v8, v11, Lctv$a;->c:J

    .line 2553
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2554
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v4

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_2

    .line 1515
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->n:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 1533
    :cond_17
    const-string/jumbo v4, ""

    .line 1534
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string/jumbo v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2669
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lctv;->aa:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2671
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2672
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    .line 2673
    if-eqz v5, :cond_1a

    .line 2674
    iget v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_19

    .line 2675
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2676
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    invoke-static {v5}, Lddq;->c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2678
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->o:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2681
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lctv;->o:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2682
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lctv$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lctv$2;-><init>(Lctv;)V

    const-class v9, Lcma;

    move-object/from16 v0, p1

    invoke-interface {v5, v8, v9, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    invoke-virtual {v4, v6, v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_3

    .line 2719
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->p:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lctv;->ab:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->p:Landroid/widget/TextView;

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2721
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2722
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    .line 2723
    if-eqz v5, :cond_1c

    .line 2724
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v5, v1}, Lctv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_4

    .line 2726
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lctv;->p:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2727
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lctv$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lctv$3;-><init>(Lctv;Lcom/alibaba/wukong/im/Message;)V

    const-class v9, Lcma;

    move-object/from16 v0, p1

    invoke-interface {v5, v8, v9, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    invoke-virtual {v4, v6, v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_4

    .line 3164
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setTag(Ljava/lang/Object;)V

    .line 3165
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    .line 3166
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 3167
    if-eqz v4, :cond_1e

    .line 3168
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lctv;->a(Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)V

    goto/16 :goto_5

    .line 3170
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setVisibility(I)V

    .line 3171
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    new-instance v4, Lctv$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lctv$6;-><init>(Lctv;)V

    const-class v8, Lcma;

    move-object/from16 v0, p1

    invoke-static {v4, v8, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    invoke-virtual {v5, v6, v7, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_5

    .line 3205
    .restart local v18    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_1f
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xcc

    if-ne v4, v5, :cond_20

    .line 3206
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 3207
    :cond_20
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xcb

    if-ne v4, v5, :cond_21

    .line 3208
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 3210
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3213
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 134
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->F:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 3865
    .end local v18    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3866
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->l:Landroid/widget/TextView;

    if-eqz v4, :cond_25

    .line 3867
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->l:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lctv;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->uidic_global_color_6_7:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3869
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    if-eqz v4, :cond_c

    .line 3870
    move-object/from16 v0, p0

    iget-object v4, v0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lctv;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->uidic_global_color_6_7:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setTextColor(I)V

    goto/16 :goto_8
.end method

.method public abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end method

.method protected final a(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v0, Lctv$12;

    invoke-direct {v0, p0, p1}, Lctv$12;-><init>(Lctv;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "showOnlyRealName"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lctv;->a:Z

    .line 311
    return-void
.end method

.method public final b(F)V
    .locals 8
    .param p1, "offset"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 248
    iget-object v5, p0, Lctv;->d:Landroid/app/Activity;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lctv;->d:Landroid/app/Activity;

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v5, :cond_6

    .line 249
    iget-object v5, p0, Lctv;->d:Landroid/app/Activity;

    check-cast v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U()Ldru;

    move-result-object v2

    .line 250
    .local v2, "manager":Ldru;
    if-eqz v2, :cond_6

    .line 251
    invoke-virtual {v2}, Ldru;->e()F

    move-result v3

    .line 252
    .local v3, "maxOffset":F
    cmpl-float v5, p1, v7

    if-lez v5, :cond_4

    .line 253
    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    if-eqz v5, :cond_0

    .line 254
    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    check-cast v5, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    const/4 v6, 0x1

    .line 4029
    iput-boolean v6, v5, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 255
    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    iget-object v6, p0, Lctv;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_0
    :goto_0
    iget-object v5, p0, Lctv;->A:Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    .line 264
    cmpl-float v5, p1, v3

    if-lez v5, :cond_5

    .line 265
    move p1, v3

    .line 269
    :cond_1
    :goto_1
    iget-object v5, p0, Lctv;->A:Landroid/widget/CheckBox;

    sub-float v6, p1, v3

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 271
    invoke-virtual {p0}, Lctv;->b()I

    move-result v5

    sget v6, Lctk$g;->chatting_item_from:I

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lctv;->b()I

    move-result v5

    sget v6, Lctk$g;->encrypt_picture_chatting_item_from:I

    if-eq v5, v6, :cond_2

    .line 272
    invoke-virtual {p0}, Lctv;->b()I

    move-result v5

    sget v6, Lctk$g;->chatting_item_markdown_from:I

    if-ne v5, v6, :cond_6

    .line 274
    :cond_2
    iget-object v5, p0, Lctv;->z:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 275
    .local v0, "childrenLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 276
    iget-object v5, p0, Lctv;->z:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 277
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lctv;->A:Landroid/widget/CheckBox;

    if-eq v4, v5, :cond_3

    iget-object v5, p0, Lctv;->y:Landroid/widget/TextView;

    if-eq v4, v5, :cond_3

    .line 278
    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 275
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 258
    .end local v0    # "childrenLength":I
    .end local v1    # "i":I
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    check-cast v5, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    const/4 v6, 0x0

    .line 5029
    iput-boolean v6, v5, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 260
    iget-object v5, p0, Lctv;->B:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 266
    :cond_5
    cmpg-float v5, p1, v7

    if-gez v5, :cond_1

    .line 267
    const/4 p1, 0x0

    goto :goto_1

    .line 285
    .end local v2    # "manager":Ldru;
    .end local v3    # "maxOffset":F
    :cond_6
    return-void
.end method

.method public final b(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 306
    iput-wide p1, p0, Lctv;->W:J

    .line 307
    return-void
.end method

.method protected final b(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 653
    :cond_0
    new-instance v0, Lctv$13;

    invoke-direct {v0, p0}, Lctv$13;-><init>(Lctv;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lctv;->A:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lctv;->A:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    :cond_0
    return-void
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lctv;->O:Z

    return v0
.end method

.method protected o()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 888
    iget-object v1, p0, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lctv;->d:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v0

    .line 891
    :cond_1
    iget-object v1, p0, Lctv;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 894
    iget-object v1, p0, Lctv;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lctv;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v1, :cond_0

    .line 900
    iget-object v0, p0, Lctv;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lctv;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lctv;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->nickColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 903
    :cond_2
    iget-object v0, p0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    if-eqz v0, :cond_3

    .line 904
    iget-object v0, p0, Lctv;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iget-object v1, p0, Lctv;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->statusColor:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setTextColor(I)V

    .line 906
    :cond_3
    iget-object v0, p0, Lctv;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 907
    iget-object v0, p0, Lctv;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lctv;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->atReadColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 909
    :cond_4
    iget-object v0, p0, Lctv;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 910
    iget-object v0, p0, Lctv;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lctv;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->atReadColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 912
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method
