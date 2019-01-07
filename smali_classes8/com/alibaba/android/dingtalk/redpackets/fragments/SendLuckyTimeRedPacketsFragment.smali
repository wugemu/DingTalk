.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
.super Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;
.source "SendLuckyTimeRedPacketsFragment.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field n:Landroid/view/View$OnClickListener;

.field o:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->n:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(JZLjava/lang/String;)V
    .locals 7
    .param p1, "timePick"    # J
    .param p3, "isTomorrow"    # Z
    .param p4, "luckyTip"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 139
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->w:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->x:I

    if-nez v1, :cond_1

    .line 141
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->w:I

    .line 142
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->x:I

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->j:J

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->A:Landroid/widget/TextView;

    sget v3, Lcaj$f;->dt_luckytime_pick_show:I

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz p3, :cond_3

    sget v1, Lcaj$f;->dt_luckytime_tomorrow:I

    .line 146
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->x:I

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 145
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcaj$b;->uidic_global_color_6_6:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->C:Landroid/widget/TextView;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p4, ""

    .end local p4    # "luckyTip":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void

    .line 146
    .restart local p4    # "luckyTip":Ljava/lang/String;
    :cond_3
    sget v1, Lcaj$f;->dt_luckytime_today:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .prologue
    .line 31
    .line 1161
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V

    const-class v2, Lcma;

    .line 1194
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1162
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1195
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    .line 1264
    new-instance v2, Lcbs$23;

    invoke-direct {v2, v1, v0}, Lcbs$23;-><init>(Lcbs;Lcma;)V

    .line 1271
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    .line 1272
    if-eqz v0, :cond_0

    .line 1273
    invoke-interface {v0, v2}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->calGoodTime(Liyv;)V

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;JIIZLjava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 1121
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->g()J

    move-result-wide v0

    .line 1122
    sub-long v2, p1, v0

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1123
    sget v0, Lcaj$f;->dt_luckytime_pick_min:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_0
    sub-long v0, p1, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1126
    sget v0, Lcaj$f;->dt_luckytime_pick_max:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1129
    :cond_1
    iput p3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->w:I

    .line 1130
    iput p4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->x:I

    .line 1131
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->a(JZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .prologue
    const/4 v0, 0x1

    const/16 v6, 0xb

    .line 31
    .line 2202
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v2

    .line 2204
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->g()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2205
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2206
    const/4 v1, 0x2

    invoke-virtual {v2, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 2207
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2209
    const/4 v1, 0x0

    .line 2210
    if-ge v4, v3, :cond_0

    .line 2211
    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 2214
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2215
    sget v1, Lcaj$f;->dt_luckytime_default_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->a(JZLjava/lang/String;)V

    .line 31
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(DZ)V
    .locals 5
    .param p1, "amount"    # D
    .param p3, "forceShowDefault"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 220
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    if-nez p3, :cond_1

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->D:Landroid/widget/TextView;

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->redpackets_luckytime_amount_invalidate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->redpackets_luckytime_amount_invalidate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->redpackets_luckytime_amount_invalidate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    cmpl-double v0, p1, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->uidic_global_color_6_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->E:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->uidic_global_color_6_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->uidic_global_color_6_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->setTextColor(I)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 10
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/Integer;
    .param p4, "type"    # Ljava/lang/Integer;
    .param p5, "congratulations"    # Ljava/lang/String;
    .param p6, "payMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 241
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 242
    .local v8, "amountSum":D
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpg-double v0, v8, v0

    if-gez v0, :cond_0

    .line 243
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcaj$f;->dt_luckytime_redpacket_min_amount:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "8"

    .line 244
    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcaj$f;->dt_red_envelop_unit_yuan:I

    .line 245
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 243
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->u:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_luckytime_packet_top_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->v:Z

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->rl_luckytime:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->z:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->A:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->tv_random:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->B:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->tv_lucky_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->C:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->tv_top_invalidate_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->F:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->money_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->E:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->tv_sum_amount_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->D:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->F:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcaj$f;->dt_luckytime_redpacket_min_amount:I

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "8"

    .line 67
    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcaj$f;->dt_red_envelop_unit_yuan:I

    .line 68
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 66
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->A:Landroid/widget/TextView;

    sget v1, Lcaj$f;->dt_redenvelop_goodtime_pick_placeholder:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$b;->text_color_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    sget v1, Lcaj$f;->dt_luckytime_redpacket_min_amount:I

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "8"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->setHint(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->I:Landroid/view/View;

    return-object v0
.end method
