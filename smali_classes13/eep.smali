.class public Leep;
.super Ljava/lang/Object;
.source "OAExpandHeaderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leep$b;,
        Leep$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Landroid/content/BroadcastReceiver;

.field public final c:Landroid/app/Activity;

.field public d:Leer$a;

.field public e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/view/View;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/view/GestureDetector;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View$OnTouchListener;

.field public l:Leee;

.field private final m:Lcom/alibaba/doraemon/image/ImageMagician;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private final p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Leep;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leep;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Leer$a;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "controller"    # Leer$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Leep;->j:Landroid/view/View;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leep;->n:Ljava/util/List;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ledz$f;->oa_expand_header_banner_first:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Ledz$f;->oa_expand_header_banner_second:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Ledz$f;->oa_expand_header_banner_third:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Ledz$f;->oa_expand_header_banner_fourth:I

    aput v2, v0, v1

    iput-object v0, p0, Leep;->p:[I

    .line 89
    iput-object p1, p0, Leep;->c:Landroid/app/Activity;

    .line 90
    iput-object p2, p0, Leep;->d:Leer$a;

    .line 91
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Leep;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1331
    new-instance v0, Leep$5;

    invoke-direct {v0, p0}, Leep$5;-><init>(Leep;)V

    iput-object v0, p0, Leep;->b:Landroid/content/BroadcastReceiver;

    .line 1338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1339
    const-string/jumbo v1, "exit_work_stat_webview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, Leep;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1341
    iget-object v1, p0, Leep;->c:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Leep;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic a(Leep;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leep;

    .prologue
    .line 56
    iget-object v0, p0, Leep;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Leep;Ljava/util/List;)V
    .locals 14
    .param p0, "x0"    # Leep;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x6

    const/4 v11, -0x2

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 56
    .line 3138
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    if-eqz v0, :cond_1

    .line 3141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3142
    :cond_0
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setVisibility(I)V

    .line 3143
    iget-object v0, p0, Leep;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3144
    iget-object v0, p0, Leep;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3211
    :goto_0
    iget-object v0, p0, Leep;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 56
    :cond_1
    return-void

    .line 3149
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 3151
    add-int/lit8 v0, v6, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v7, v0, 0x4

    .line 3152
    iget-object v0, p0, Leep;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 3153
    if-ge v2, v7, :cond_3

    move v1, v5

    .line 3154
    :goto_1
    sub-int v0, v7, v2

    if-ge v1, v0, :cond_3

    .line 3155
    iget-object v0, p0, Leep;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Ledz$g;->fragment_common_oa_expand_header_banner:I

    invoke-virtual {v0, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3156
    iget-object v3, p0, Leep;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3165
    :cond_3
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->removeAllViews()V

    .line 3166
    iget-object v0, p0, Leep;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3167
    iget-object v0, p0, Leep;->h:Ljava/util/List;

    if-nez v0, :cond_4

    .line 3168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leep;->h:Ljava/util/List;

    :goto_2
    move v4, v5

    .line 3173
    :goto_3
    if-ge v4, v7, :cond_8

    .line 3174
    iget-object v0, p0, Leep;->n:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3175
    mul-int/lit8 v1, v4, 0x4

    add-int/lit8 v8, v1, 0x4

    .line 3176
    mul-int/lit8 v1, v4, 0x4

    move v3, v1

    :goto_4
    if-ge v3, v8, :cond_6

    .line 3177
    if-ge v3, v6, :cond_5

    .line 3178
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/model/TeamStatModelObject;

    .line 3179
    iget-object v2, p0, Leep;->p:[I

    rem-int/lit8 v9, v3, 0x4

    aget v2, v2, v9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 3180
    invoke-direct {p0, v1, v2, v3}, Leep;->a(Lcom/alibaba/android/oa/model/TeamStatModelObject;Landroid/widget/RelativeLayout;I)Z

    .line 3176
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 3170
    :cond_4
    iget-object v0, p0, Leep;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 3182
    :cond_5
    iget-object v1, p0, Leep;->p:[I

    rem-int/lit8 v2, v3, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3183
    invoke-direct {p0, v13, v1, v3}, Leep;->a(Lcom/alibaba/android/oa/model/TeamStatModelObject;Landroid/widget/RelativeLayout;I)Z

    goto :goto_5

    .line 3186
    :cond_6
    iget-object v1, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->addView(Landroid/view/View;)V

    .line 3187
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Leep;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3188
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3189
    if-nez v4, :cond_7

    .line 3190
    sget v1, Ledz$e;->dot_focused:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3194
    :goto_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v12, v5, v12, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3195
    iget-object v1, p0, Leep;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3196
    iget-object v1, p0, Leep;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3173
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    .line 3192
    :cond_7
    sget v1, Ledz$e;->dot_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 3198
    :cond_8
    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    .line 3200
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setAutoStart(Z)V

    .line 3201
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->stopFlipping()V

    .line 3202
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setVisibility(I)V

    .line 3203
    iget-object v0, p0, Leep;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3204
    iget-object v0, p0, Leep;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 3206
    :cond_9
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setAutoStart(Z)V

    .line 3207
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setVisibility(I)V

    .line 3208
    iget-object v0, p0, Leep;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3209
    iget-object v0, p0, Leep;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/oa/model/TeamStatModelObject;Landroid/widget/RelativeLayout;I)Z
    .locals 17
    .param p1, "object"    # Lcom/alibaba/android/oa/model/TeamStatModelObject;
    .param p2, "layout"    # Landroid/widget/RelativeLayout;
    .param p3, "position"    # I

    .prologue
    .line 216
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 286
    :goto_0
    return v2

    .line 217
    :cond_0
    sget v2, Ledz$f;->oa_entry_header_inner_layout:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 218
    .local v15, "innerLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Leep;->k:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    sget v2, Ledz$f;->header_banner_item_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 220
    .local v16, "titleTx":Landroid/widget/TextView;
    sget v2, Ledz$f;->oa_header_banner_item_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 221
    .local v3, "iv":Landroid/widget/ImageView;
    sget v2, Ledz$f;->header_banner_item_desc:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 223
    .local v13, "descTx":Landroid/widget/TextView;
    if-nez p1, :cond_1

    .line 224
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    sget v2, Ledz$c;->pure_white:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 226
    new-instance v2, Leep$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Leep$2;-><init>(Leep;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v2, v4, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Leep;->m:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 241
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    .end local v4    # "url":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmActUrl()Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, "actUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmAppId()J

    move-result-wide v8

    .line 254
    .local v8, "appId":J
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmTips()Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, "tips":Ljava/lang/String;
    new-instance v6, Leep$3;

    move-object/from16 v7, p0

    move/from16 v10, p3

    invoke-direct/range {v6 .. v12}, Leep$3;-><init>(Leep;JILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    .end local v8    # "appId":J
    .end local v11    # "actUrl":Ljava/lang/String;
    .end local v12    # "tips":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 282
    .local v14, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v14}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 283
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 244
    .end local v14    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    if-lt v2, v5, :cond_3

    .line 247
    const/4 v2, 0x1

    const/high16 v5, 0x41880000    # 17.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 249
    :cond_3
    const/4 v2, 0x1

    const/high16 v5, 0x41b00000    # 22.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Leep;)J
    .locals 2
    .param p0, "x0"    # Leep;

    .prologue
    .line 56
    iget-wide v0, p0, Leep;->o:J

    return-wide v0
.end method

.method static synthetic c(Leep;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Leep;

    .prologue
    .line 56
    iget-object v0, p0, Leep;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Leep;)Leer$a;
    .locals 1
    .param p0, "x0"    # Leep;

    .prologue
    .line 56
    iget-object v0, p0, Leep;->d:Leer$a;

    return-object v0
.end method

.method static synthetic e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;
    .locals 1
    .param p0, "x0"    # Leep;

    .prologue
    .line 56
    iget-object v0, p0, Leep;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    return-object v0
.end method

.method static synthetic f(Leep;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Leep;

    .prologue
    .line 56
    iget-object v0, p0, Leep;->i:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    .line 304
    iput-wide p1, p0, Leep;->o:J

    .line 305
    invoke-static {}, Lees;->a()Lees;

    move-result-object v1

    new-instance v2, Leep$4;

    invoke-direct {v2, p0}, Leep$4;-><init>(Leep;)V

    .line 3050
    iput-wide p1, v1, Lees;->b:J

    .line 3051
    iget v0, v1, Lees;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lees;->c:I

    .line 3052
    const-class v0, Lcom/alibaba/android/oa/idl/service/SWCommonIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/SWCommonIService;

    .line 3053
    iget-wide v4, v1, Lees;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Lees;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lees$1;

    invoke-direct {v5, v1, v2}, Lees$1;-><init>(Lees;Leer$b;)V

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/android/oa/idl/service/SWCommonIService;->getShortcut(Ljava/lang/Long;Ljava/lang/Long;Liyv;)Lefs;

    .line 322
    return-void
.end method
