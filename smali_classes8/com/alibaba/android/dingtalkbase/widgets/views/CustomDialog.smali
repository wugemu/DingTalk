.class public Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/content/DialogInterface$OnClickListener;

.field private x:Z

.field private y:Landroid/view/View$OnClickListener;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 60
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->x:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->y:Landroid/view/View$OnClickListener;

    .line 63
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 10
    .param p1, "arrayId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 284
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 286
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->v:Landroid/widget/LinearLayout;

    if-nez v6, :cond_1

    .line 287
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->z:I

    .line 319
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    if-eqz v6, :cond_0

    .line 295
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->t:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->t:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->r:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 297
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->v:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 299
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 300
    .local v4, "newItem":Landroid/widget/TextView;
    aget-object v6, v2, v1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$c;->dialog_btn_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_4

    .line 305
    sget v6, Lcig$e;->label_selector_radius_bottom:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 309
    :goto_1
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog$a;

    invoke-direct {v6, p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    .line 313
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 314
    .local v0, "dividerLine":Landroid/view/View;
    sget v6, Lcig$c;->divider_line_color:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 315
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v0    # "dividerLine":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    sget v6, Lcig$e;->label_selector_radius_none:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0x11

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->requestWindowFeature(I)Z

    .line 84
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcig$h;->custom_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 88
    .local v8, "window":Landroid/view/Window;
    if-eqz v8, :cond_0

    .line 89
    invoke-virtual {v8, v10}, Landroid/view/Window;->setGravity(I)V

    .line 1100
    :cond_0
    sget v0, Lcig$f;->ll_start_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->t:Landroid/view/View;

    .line 1101
    sget v0, Lcig$f;->btn_right_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->n:Landroid/widget/TextView;

    .line 1102
    sget v0, Lcig$f;->tv_tip_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->m:Landroid/widget/TextView;

    .line 1103
    sget v0, Lcig$f;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->r:Landroid/widget/TextView;

    .line 1104
    sget v0, Lcig$f;->tv_tip_title_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->s:Landroid/widget/TextView;

    .line 1105
    sget v0, Lcig$f;->img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->p:Landroid/widget/ImageView;

    .line 1106
    sget v0, Lcig$f;->img_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->q:Landroid/widget/ImageView;

    .line 1107
    sget v0, Lcig$f;->btn_left_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->o:Landroid/widget/TextView;

    .line 1108
    sget v0, Lcig$f;->ll_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->u:Landroid/view/View;

    .line 1110
    sget v0, Lcig$f;->ll_bottom_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->v:Landroid/widget/LinearLayout;

    .line 1111
    sget v0, Lcig$f;->tv_tip_title_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1112
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1114
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1115
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v9, 0x22

    .line 1114
    invoke-virtual {v1, v3, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    if-eqz v1, :cond_9

    .line 1119
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1123
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    if-eqz v1, :cond_a

    .line 1124
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    if-eqz v0, :cond_b

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1149
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    if-lez v0, :cond_3

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->p:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1153
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1154
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->p:Landroid/widget/ImageView;

    .line 1206
    if-eqz v1, :cond_4

    .line 1209
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xc8

    const/16 v7, 0xc8

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1210
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1211
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1213
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v3, v2

    move-object v7, v2

    .line 1214
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1167
    :cond_4
    :goto_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->i:I

    if-lez v0, :cond_5

    .line 1168
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v6, v6, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1170
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->m:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1174
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :goto_4
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->z:I

    if-lez v0, :cond_8

    .line 95
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->z:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 97
    :cond_8
    return-void

    .line 1121
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1126
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1164
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1186
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->u:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1195
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->t:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method
