.class public Lcom/alibaba/android/dingtalkim/views/BillBannerView;
.super Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
.source "BillBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

.field private l:Lcom/alibaba/wukong/im/Conversation;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1225
    sget v0, Lctk$f;->bill_sender_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1226
    sget v0, Lctk$f;->bill_sender_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->d:Landroid/widget/TextView;

    .line 1227
    sget v0, Lctk$f;->bill_detail_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->e:Landroid/widget/TextView;

    .line 1228
    sget v0, Lctk$f;->bill_detail_name_des_pre:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->f:Landroid/widget/TextView;

    .line 1229
    sget v0, Lctk$f;->bill_detail_name_des_suf:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->g:Landroid/widget/TextView;

    .line 1230
    sget v0, Lctk$f;->bill_detail_name_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->h:Landroid/widget/TextView;

    .line 1231
    sget v0, Lctk$f;->bill_detail_total_remain:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->i:Landroid/widget/TextView;

    .line 1232
    sget v0, Lctk$f;->bill_pay_now:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->j:Landroid/widget/Button;

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    sget v0, Lctk$f;->bill_banner_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/BillBannerView;Ldrj;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;
    .param p1, "x1"    # Ldrj;

    .prologue
    .line 47
    .line 4239
    if-nez p1, :cond_0

    .line 4240
    :goto_0
    return-void

    .line 4242
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView;Ldrj;)V

    .line 4274
    sget-object v1, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->b:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 4275
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->j:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 79
    instance-of v0, p2, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 80
    check-cast p2, Lcom/alibaba/wukong/im/Conversation;

    .end local p2    # "extraData":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->l:Lcom/alibaba/wukong/im/Conversation;

    .line 82
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->m:I

    .line 83
    return-void
.end method

.method public display(Ljava/lang/Object;)V
    .locals 20
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-nez v13, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v3, p1

    .line 95
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 96
    .local v3, "billDoData":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    iget-object v13, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    .line 2109
    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 97
    .local v4, "creatorUid":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v13

    invoke-virtual {v13}, Lccr;->c()J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-nez v13, :cond_2

    .line 98
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->j:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 103
    :cond_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v14, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->d:Landroid/widget/TextView;

    sget v14, Lctk$i;->dt_pay_group_bill_pay:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    new-instance v15, Lcom/alibaba/android/dingtalkim/views/BillBannerView$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)V

    const-class v16, Lcma;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/app/Activity;

    .line 108
    move-object/from16 v0, v16

    invoke-static {v15, v0, v13}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcma;

    .line 107
    invoke-virtual {v14, v4, v5, v13}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 129
    iget-object v13, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->h:Landroid/widget/TextView;

    iget-object v14, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    iget-object v13, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillTotalAmount:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillRealAmount:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 135
    const-string/jumbo v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillTotalAmount:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "totalAmountStr":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lctk$i;->dt_pay_total_amount_AT:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "totalAmount":Ljava/lang/String;
    const-string/jumbo v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillRealAmount:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "remainAmountStr":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lctk$i;->dt_pay_total_remain_amount_AT:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "remainAmount":Ljava/lang/String;
    invoke-static {}, Lcms;->c()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->f:Landroid/widget/TextView;

    const-string/jumbo v14, "\u201c"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->g:Landroid/widget/TextView;

    const-string/jumbo v14, "\u201d"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "\uff0c"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "totalRamainSummery":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->i:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v7    # "remainAmount":Ljava/lang/String;
    .end local v8    # "remainAmountStr":Ljava/lang/String;
    .end local v10    # "totalAmount":Ljava/lang/String;
    .end local v11    # "totalAmountStr":Ljava/lang/String;
    .end local v12    # "totalRamainSummery":Ljava/lang/String;
    :cond_3
    iget-object v13, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    if-eqz v13, :cond_5

    iget-object v13, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    array-length v13, v13

    if-lez v13, :cond_5

    .line 156
    const/4 v9, 0x0

    .line 157
    .local v9, "selfAmount":Ljava/lang/String;
    iget-object v14, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_4

    aget-object v2, v14, v13

    .line 158
    .local v2, "billAmount":Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;
    if-eqz v2, :cond_8

    .line 161
    iget-wide v0, v2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;->uid:J

    move-wide/from16 v16, v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lccr;->c()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-nez v16, :cond_8

    .line 162
    iget-object v9, v2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;->amount:Ljava/lang/String;

    .line 166
    .end local v2    # "billAmount":Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 167
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lctk$i;->dt_pay_u_need_pay_AT:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "needPayStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->e:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .end local v6    # "needPayStr":Ljava/lang/String;
    .end local v9    # "selfAmount":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->j:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 132
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->h:Landroid/widget/TextView;

    sget v14, Lctk$i;->dt_pay_group_bill:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 147
    .restart local v7    # "remainAmount":Ljava/lang/String;
    .restart local v8    # "remainAmountStr":Ljava/lang/String;
    .restart local v10    # "totalAmount":Ljava/lang/String;
    .restart local v11    # "totalAmountStr":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->f:Landroid/widget/TextView;

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->g:Landroid/widget/TextView;

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, ","

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "totalRamainSummery":Ljava/lang/String;
    goto/16 :goto_2

    .line 157
    .end local v7    # "remainAmount":Ljava/lang/String;
    .end local v8    # "remainAmountStr":Ljava/lang/String;
    .end local v10    # "totalAmount":Ljava/lang/String;
    .end local v11    # "totalAmountStr":Ljava/lang/String;
    .end local v12    # "totalRamainSummery":Ljava/lang/String;
    .restart local v2    # "billAmount":Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;
    .restart local v9    # "selfAmount":Ljava/lang/String;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3
.end method

.method protected getClickData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lctk$g;->im_group_bill_banner_layout:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    sget v1, Lctk$i;->network_error:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 4061
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 194
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "page_id"

    iget v4, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->m:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v4, "a2o5v.12290095"

    const-string/jumbo v5, "AlipayCardPay"

    invoke-static {v4, v5}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v4, "Page_Chat_Detail"

    const-string/jumbo v5, "Button-AlipayCardPay"

    invoke-interface {v1, v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->j:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    .line 3109
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 201
    .local v2, "creatorUid":J
    invoke-static {}, Ldxq;->a()Ldxq;

    move-result-object v5

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->k:Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillId:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/dingtalkim/views/BillBannerView$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)V

    const-class v7, Lcma;

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 202
    invoke-static {v4, v7, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 4050
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4051
    :cond_2
    if-eqz v1, :cond_0

    .line 4052
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "Invalid parameter"

    invoke-interface {v1, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4056
    :cond_3
    const-class v4, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLGroupBillService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLGroupBillService;

    .line 4057
    if-nez v4, :cond_4

    .line 4058
    if-eqz v1, :cond_0

    .line 4059
    const-string/jumbo v4, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4063
    :cond_4
    new-instance v7, Ldxq$1;

    invoke-direct {v7, v5, v1}, Ldxq$1;-><init>(Ldxq;Lcma;)V

    .line 4070
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1, v6, v7}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLGroupBillService;->payGroupBill(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    goto/16 :goto_0
.end method

.method public removeFromParent()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method
