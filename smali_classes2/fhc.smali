.class public Lfhc;
.super Lfgx;
.source "ContactSubDepartmentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfhc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public b:Lcry;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Lfhc;->l:I

    .line 89
    const/16 v0, 0x12

    iput v0, p0, Lfhc;->m:I

    .line 91
    const-string/jumbo v0, "smart_device_red_dot_key_"

    iput-object v0, p0, Lfhc;->n:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhc;->k:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic a(Lfhc;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfhc;

    .prologue
    .line 73
    iget-object v0, p0, Lfhc;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lfhc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lfhc;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lfhc;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lfhc;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lfhc;

    .prologue
    .line 73
    iget-object v0, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lfhc;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lfhc;

    .prologue
    .line 73
    iget-object v0, p0, Lfhc;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lfhc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfhc;

    .prologue
    .line 73
    iget-object v0, p0, Lfhc;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lfhc;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lfhc;

    .prologue
    .line 73
    iget-object v0, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lezg$j;->fragment_contact_home_main_org_sub_layout:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    sget v0, Lezg$h;->rl_component:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhc;->c:Landroid/view/View;

    .line 105
    sget v0, Lezg$h;->if_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 106
    sget v0, Lezg$h;->cell_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhc;->d:Landroid/widget/TextView;

    .line 107
    sget v0, Lezg$h;->rl_cell_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    .line 108
    sget v0, Lezg$h;->cell_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhc;->f:Landroid/widget/TextView;

    .line 109
    sget v0, Lezg$h;->cell_content_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfhc;->g:Landroid/widget/ImageView;

    .line 110
    sget v0, Lezg$h;->view_ads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 111
    sget v0, Lezg$h;->if_union_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhc;->i:Landroid/view/View;

    .line 113
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x8

    .line 73
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1125
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComponent()Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1127
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComponent()Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lfhc;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v1, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1130
    iget-object v1, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1131
    iget-object v1, p0, Lfhc;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1132
    iget-object v1, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 1133
    iget-object v1, p0, Lfhc;->i:Landroid/view/View;

    invoke-static {v1, v10}, Lfxp;->a(Landroid/view/View;I)V

    .line 1135
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->getIconFontResId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1137
    iget-object v1, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lfhc;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->getIconFontColorResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1140
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->getIconFontResId()I

    move-result v1

    sget v3, Lezg$l;->icon_branch:I

    if-ne v1, v3, :cond_3

    .line 1141
    iget-object v1, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 1147
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v1

    sget-object v3, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_8

    .line 1148
    check-cast v0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    .line 1163
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getNodeItem()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1164
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getNodeItem()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getNodeItem()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->unionNode:Z

    if-eqz v1, :cond_4

    move v1, v2

    .line 1166
    :goto_1
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v3, "contact_related_org"

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1167
    iget-object v1, p0, Lfhc;->i:Landroid/view/View;

    invoke-static {v1, v7}, Lfxp;->a(Landroid/view/View;I)V

    .line 1223
    :goto_2
    iget-object v1, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    invoke-static {v1, v10}, Lfxp;->a(Landroid/view/View;I)V

    .line 1225
    if-eqz v0, :cond_1

    .line 1229
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getGroupCreated()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v1

    const-string/jumbo v3, "enterpise_group_entrance_enable"

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lfvv;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1231
    :goto_3
    if-eqz v1, :cond_1

    .line 1235
    new-instance v6, Lfhc$a;

    invoke-direct {v6, p0, v7}, Lfhc$a;-><init>(Lfhc;B)V

    .line 1236
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgId()J

    move-result-wide v2

    iput-wide v2, v6, Lfhc$a;->a:J

    .line 1237
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getDepartmentId()J

    move-result-wide v2

    iput-wide v2, v6, Lfhc$a;->b:J

    .line 1238
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->isRootDepartment()Z

    move-result v1

    iput-boolean v1, v6, Lfhc$a;->c:Z

    .line 1239
    iget-object v1, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    iput-object v1, v6, Lfhc$a;->d:Landroid/view/View;

    .line 1240
    iget-object v1, p0, Lfhc;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Lfhc$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1242
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getDepartmentId()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(JJLcma;)V

    .line 1175
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getUnreadCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1176
    iget-object v1, p0, Lfhc;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1182
    :goto_4
    iget-object v1, p0, Lfhc;->c:Landroid/view/View;

    new-instance v2, Lfhc$1;

    invoke-direct {v2, p0, v0}, Lfhc$1;-><init>(Lfhc;Lcom/alibaba/android/user/contact/homepage/DepartmentItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    :cond_2
    :goto_5
    return-void

    .line 1143
    :cond_3
    iget-object v1, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_4
    move v1, v7

    .line 1164
    goto/16 :goto_1

    .line 1169
    :cond_5
    iget-object v1, p0, Lfhc;->i:Landroid/view/View;

    invoke-static {v1, v10}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    move v1, v7

    .line 1229
    goto :goto_3

    .line 1178
    :cond_7
    iget-object v1, p0, Lfhc;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1149
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v1

    sget-object v3, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_a

    instance-of v1, v0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    .line 1150
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getAppId()J

    move-result-wide v4

    const-wide/16 v8, -0x10

    cmp-long v1, v4, v8

    if-nez v1, :cond_a

    .line 1151
    check-cast v0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    .line 1322
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->isMainOrg()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1323
    iget-object v1, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iget-object v2, p0, Lfhc;->b:Lcry;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1328
    :goto_6
    iget-object v1, p0, Lfhc;->c:Landroid/view/View;

    new-instance v2, Lfhc$2;

    invoke-direct {v2, p0, v0}, Lfhc$2;-><init>(Lfhc;Lcom/alibaba/android/user/contact/homepage/MicroAppItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1325
    :cond_9
    iget-object v1, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    goto :goto_6

    .line 1152
    :cond_a
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v1

    sget-object v3, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->AlphaDevice:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_c

    .line 1153
    check-cast v0, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    .line 1377
    if-eqz v0, :cond_2

    .line 1382
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "smart_device_red_dot_key_"

    aput-object v3, v1, v7

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->getOrgId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1386
    if-eqz v2, :cond_b

    .line 1387
    new-instance v2, Lcry;

    invoke-direct {v2}, Lcry;-><init>()V

    .line 1388
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    .line 2047
    iput v3, v2, Lcry;->a:I

    .line 1389
    iget-object v3, p0, Lfhc;->k:Landroid/content/Context;

    sget v4, Lezg$l;->dt_conact_smartDevice_hasNew:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2071
    iput-object v3, v2, Lcry;->d:Ljava/lang/String;

    .line 1390
    iget-object v3, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 1391
    iget-object v3, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1396
    :goto_7
    iget-object v2, p0, Lfhc;->c:Landroid/view/View;

    new-instance v3, Lfhc$4;

    invoke-direct {v3, p0, v1, v0}, Lfhc$4;-><init>(Lfhc;Ljava/lang/String;Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1393
    :cond_b
    iget-object v2, p0, Lfhc;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    goto :goto_7

    .line 1154
    :cond_c
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgMember:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2367
    iget-object v0, p0, Lfhc;->c:Landroid/view/View;

    new-instance v1, Lfhc$3;

    invoke-direct {v1, p0}, Lfhc$3;-><init>(Lfhc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5
.end method
