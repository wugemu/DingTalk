.class public Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;
.super Landroid/widget/FrameLayout;
.source "RedPacketsDetailHeaderEnterpriseB2C.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcaj$e;->header_packest_enterprise_b2c:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1057
    sget v0, Lcaj$d;->divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->a:Landroid/view/View;

    .line 1058
    sget v0, Lcaj$d;->layout_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->b:Landroid/view/View;

    .line 1059
    sget v0, Lcaj$d;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->c:Landroid/widget/TextView;

    .line 1060
    sget v0, Lcaj$d;->tv_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->d:Landroid/widget/TextView;

    .line 1061
    sget v0, Lcaj$d;->tv_enterprise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->e:Landroid/widget/TextView;

    .line 1062
    sget v0, Lcaj$d;->tv_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->f:Landroid/widget/TextView;

    .line 1063
    sget v0, Lcaj$d;->tv_balance:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->g:Landroid/widget/TextView;

    .line 1064
    sget v0, Lcaj$d;->receiver_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->h:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method public a()V
    .locals 19

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcaj$f;->dt_redenvelop_money_have_saved_to:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "saveTo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcaj$b;->redpackets_normal_yellow:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 112
    .local v5, "color":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 113
    .local v6, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v3, "builder":Landroid/text/SpannableStringBuilder;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccr;->c()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "binded_alipay"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ""

    .line 116
    invoke-static/range {v14 .. v16}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "alipayAccount":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 119
    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;)V

    .line 132
    .local v4, "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcaj$f;->redpackets_my_wallet:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "myWallet":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcaj$f;->redpackets_picked_tips_unbinded:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "tips":Ljava/lang/String;
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 135
    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 136
    .local v9, "index":I
    if-ltz v9, :cond_0

    .line 137
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int v12, v14, v9

    .line 138
    .local v12, "start":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int v8, v12, v14

    .line 139
    .local v8, "end":I
    const/16 v14, 0x21

    invoke-virtual {v3, v6, v12, v8, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 140
    const/16 v14, 0x21

    invoke-virtual {v3, v4, v12, v8, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 165
    .end local v8    # "end":I
    .end local v9    # "index":I
    .end local v10    # "myWallet":Ljava/lang/String;
    .end local v12    # "start":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->g:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    .end local v2    # "alipayAccount":Ljava/lang/String;
    .end local v4    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v13    # "tips":Ljava/lang/String;
    :goto_1
    return-void

    .line 143
    .restart local v2    # "alipayAccount":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;)V

    .line 160
    .restart local v4    # "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcaj$f;->redpackets_picked_tips_binded:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 161
    .restart local v13    # "tips":Ljava/lang/String;
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v3, v6, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v3, v4, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v2    # "alipayAccount":Ljava/lang/String;
    .end local v4    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v13    # "tips":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 168
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "red_packets"

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "formatMyBalance error="

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 169
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 168
    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
