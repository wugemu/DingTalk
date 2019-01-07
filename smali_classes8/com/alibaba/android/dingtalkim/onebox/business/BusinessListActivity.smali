.class public Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BusinessListActivity.java"


# instance fields
.field protected a:Z

.field private b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Landroid/widget/ListView;

.field private g:Ldvq;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 65
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->e:J

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->l:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method private a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    sget v0, Lctk$i;->dt_external_business_list_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->setTitle(I)V

    .line 133
    sget v0, Lctk$f;->list_business:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f:Landroid/widget/ListView;

    .line 134
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f:Landroid/widget/ListView;

    .line 1177
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->view_business_list_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1179
    sget v0, Lctk$f;->tv_avatar:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1180
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->d:Ljava/lang/String;

    .line 1181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 1184
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    .line 1201
    :goto_0
    sget v0, Lctk$f;->tv_name:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1202
    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1204
    sget v0, Lctk$f;->tv_desc:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1205
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1207
    sget v0, Lctk$f;->label_layout:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 1208
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    .line 1264
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6

    .line 1265
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 134
    :cond_2
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->h:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    new-instance v0, Ldvq;

    invoke-direct {v0, p0}, Ldvq;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->g:Ldvq;

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->g:Ldvq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 173
    return-void

    .line 1190
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1191
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c:Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1193
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1194
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c:Ljava/lang/String;

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 1197
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c:Ljava/lang/String;

    .line 1198
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ")"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 1267
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1269
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v3

    .line 1270
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 1271
    if-le v3, v4, :cond_9

    move v2, v3

    .line 1272
    :goto_1
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    .line 1273
    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-ge v6, v2, :cond_2

    .line 1274
    const/4 v1, 0x0

    .line 1275
    if-ge v6, v4, :cond_c

    .line 1276
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-object v5, v1

    .line 1279
    :goto_3
    const/4 v1, 0x0

    .line 1280
    if-ge v6, v3, :cond_7

    .line 1281
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    .line 1284
    :cond_7
    if-nez v5, :cond_a

    if-eqz v1, :cond_a

    .line 1285
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1273
    :cond_8
    :goto_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_9
    move v2, v4

    .line 1271
    goto :goto_1

    .line 1286
    :cond_a
    if-eqz v5, :cond_8

    .line 1287
    if-nez v1, :cond_b

    .line 1288
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 1289
    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 1290
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1291
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 1292
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1293
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v10, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 1294
    const/16 v11, 0x10

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 1295
    const/high16 v11, 0x42c80000    # 100.0f

    invoke-static {p0, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 1296
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 1298
    :cond_b
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1299
    iget-object v11, v5, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 1301
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->requestLayout()V

    goto :goto_4

    :cond_c
    move-object v5, v1

    goto :goto_3
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 55
    .line 2250
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 2252
    if-eqz v0, :cond_0

    .line 2253
    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->createAt:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->e:J

    .line 2257
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 2258
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a:Z

    .line 55
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->i:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->j:I

    return p1
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    new-instance v9, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;

    invoke-direct {v9, p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V

    .line 244
    .local v9, "apiEventListener":Lcma;
    const-class v0, Lcma;

    invoke-static {v9, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "apiEventListener":Lcma;
    check-cast v9, Lcma;

    .line 245
    .restart local v9    # "apiEventListener":Lcma;
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->e:J

    const/16 v8, 0x14

    invoke-virtual/range {v1 .. v9}, Ldyi;->a(JJJILcma;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->j:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->i:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->k:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->k:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->l:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)Ldvq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->g:Ldvq;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v4, Lctk$g;->activity_business_list:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->c:Ljava/lang/String;

    .line 89
    const-string/jumbo v4, "media_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->d:Ljava/lang/String;

    .line 90
    const-string/jumbo v4, "employee_info"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 92
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v4, :cond_1

    .line 93
    const-string/jumbo v4, "org_id"

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 94
    .local v2, "orgId":J
    const-string/jumbo v4, "staff_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "staffId":Ljava/lang/String;
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    new-instance v4, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V

    const-class v6, Lcma;

    invoke-static {v4, v6, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    invoke-virtual {v5, v2, v3, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/lang/String;Lcma;)V

    .line 127
    .end local v1    # "staffId":Ljava/lang/String;
    .end local v2    # "orgId":J
    :goto_0
    return-void

    .line 119
    .restart local v1    # "staffId":Ljava/lang/String;
    .restart local v2    # "orgId":J
    :cond_0
    sget v4, Lctk$i;->dt_im_trans_to_multiple_error_param_invalid:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 120
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const-string/jumbo v6, "BusinessListActivity orgId or staffId is empty"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->finish()V

    goto :goto_0

    .line 124
    .end local v1    # "staffId":Ljava/lang/String;
    .end local v2    # "orgId":J
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a()V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b()V

    goto :goto_0
.end method
