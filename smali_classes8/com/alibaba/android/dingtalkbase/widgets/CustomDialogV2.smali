.class public Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CustomDialogV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/content/DialogInterface$OnClickListener;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;-><init>(Landroid/content/Context;I)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->l:Z

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->m:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->n:Z

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->o:Z

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private a(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 10
    .param p1, "arrayId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 300
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 302
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->i:Landroid/widget/LinearLayout;

    if-nez v6, :cond_1

    .line 303
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->p:I

    .line 335
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    if-eqz v6, :cond_0

    .line 311
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->g:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->g:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->e:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 313
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->i:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 315
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    .local v4, "newItem":Landroid/widget/TextView;
    aget-object v6, v2, v1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$c;->dialog_btn_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 320
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_4

    .line 321
    sget v6, Lcig$e;->label_selector_radius_bottom:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 325
    :goto_1
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;

    invoke-direct {v6, p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    .line 329
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, "dividerLine":Landroid/view/View;
    sget v6, Lcig$c;->divider_line_color:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v0    # "dividerLine":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    sget v6, Lcig$e;->label_selector_radius_none:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/16 v10, 0x11

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->requestWindowFeature(I)Z

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v0, Lcig$h;->custom_dialog_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 91
    .local v8, "window":Landroid/view/Window;
    if-eqz v8, :cond_0

    .line 92
    invoke-virtual {v8, v10}, Landroid/view/Window;->setGravity(I)V

    .line 1103
    :cond_0
    sget v0, Lcig$f;->ll_start_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->g:Landroid/view/View;

    .line 1104
    sget v0, Lcig$f;->btn_right_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->b:Landroid/widget/TextView;

    .line 1105
    sget v0, Lcig$f;->tv_tip_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a:Landroid/widget/TextView;

    .line 1106
    sget v0, Lcig$f;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->e:Landroid/widget/TextView;

    .line 1107
    sget v0, Lcig$f;->tv_tip_title_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->f:Landroid/widget/TextView;

    .line 1108
    sget v0, Lcig$f;->img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->d:Landroid/widget/ImageView;

    .line 1109
    sget v0, Lcig$f;->btn_left_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->c:Landroid/widget/TextView;

    .line 1110
    sget v0, Lcig$f;->ll_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->h:Landroid/view/View;

    .line 1111
    sget v0, Lcig$f;->img_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1113
    sget v0, Lcig$f;->ll_bottom_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->i:Landroid/widget/LinearLayout;

    .line 1114
    sget v0, Lcig$f;->tv_tip_title_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1115
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1117
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1118
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v9, 0x22

    .line 1117
    invoke-virtual {v1, v3, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->l:Z

    if-eqz v1, :cond_9

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->m:Z

    if-eqz v1, :cond_a

    .line 1127
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1137
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1138
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1139
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1142
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->n:Z

    if-eqz v0, :cond_b

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->d:Landroid/widget/ImageView;

    .line 1213
    if-eqz v1, :cond_4

    .line 1216
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xc8

    const/16 v7, 0xc8

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1217
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1218
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1220
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v3, v2

    move-object v7, v2

    .line 1221
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1178
    :cond_4
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->o:Z

    if-eqz v1, :cond_7

    move v4, v6

    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 97
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->p:I

    if-lez v0, :cond_8

    .line 98
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->p:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 100
    :cond_8
    return-void

    .line 1124
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1129
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1167
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1190
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDialogV2;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
