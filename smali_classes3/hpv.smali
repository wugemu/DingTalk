.class public final Lhpv;
.super Lcri;
.source "DakaPopupWindow.java"


# instance fields
.field public c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhpu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcri;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic a(Lhpv;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lhpv;

    .prologue
    .line 33
    iget-object v0, p0, Lhpv;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Lhpu;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "action"    # Lhpu;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p2, Lhpu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v0, Lhpv$1;

    invoke-direct {v0, p0, p2}, Lhpv$1;-><init>(Lhpv;Lhpu;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lhpv;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lhpv;

    .prologue
    .line 33
    iget-object v0, p0, Lhpv;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lhpv;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lhpv;

    .prologue
    .line 33
    iget-object v0, p0, Lhpv;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lhpv;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lhpv;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iconResId"    # I
    .param p3, "iconColor"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "hasSettings"    # Z
    .param p7, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lhpu;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 71
    .local p8, "actions":Ljava/util/List;, "Ljava/util/List<Lhpu;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput p2, p0, Lhpv;->m:I

    .line 76
    iput p3, p0, Lhpv;->n:I

    .line 77
    iput-object p4, p0, Lhpv;->o:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lhpv;->p:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lhpv;->q:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lhpv;->r:Ljava/util/List;

    .line 1112
    if-eqz p6, :cond_4

    .line 1113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lhdn$i;->popup_window_atm_admin_daka:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhpv;->f:Landroid/view/View;

    .line 1118
    :goto_1
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 1119
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->layout_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhpv;->g:Landroid/view/View;

    .line 1120
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->iv_notify_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lhpv;->h:Landroid/widget/ImageView;

    .line 1121
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->tv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lhpv;->i:Landroid/widget/ImageView;

    .line 1122
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhpv;->j:Landroid/widget/TextView;

    .line 1123
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->tv_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhpv;->k:Landroid/widget/TextView;

    .line 1125
    if-eqz p6, :cond_2

    .line 1126
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->tv_settings:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhpv;->l:Landroid/widget/TextView;

    .line 1127
    iget-object v1, p0, Lhpv;->l:Landroid/widget/TextView;

    sget v2, Lhdn$k;->dt_oa_attend_dd_atm_settings:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1136
    :cond_2
    iget-object v1, p0, Lhpv;->r:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lhpv;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1137
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->ll_action_region:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1138
    if-eqz v1, :cond_7

    .line 1141
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v1, p0, Lhpv;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1143
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_7

    .line 1144
    iget-object v1, p0, Lhpv;->r:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpu;

    .line 1145
    if-nez v3, :cond_5

    .line 1146
    iget-object v2, p0, Lhpv;->f:Landroid/view/View;

    sget v5, Lhdn$h;->tv_action1:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1147
    invoke-direct {p0, v2, v1}, Lhpv;->a(Landroid/widget/TextView;Lhpu;)V

    .line 1143
    :cond_3
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 1115
    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lhdn$i;->popup_window_daka:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhpv;->f:Landroid/view/View;

    goto/16 :goto_1

    .line 1148
    :cond_5
    const/4 v2, 0x1

    if-ne v3, v2, :cond_3

    .line 1149
    iget-object v2, p0, Lhpv;->f:Landroid/view/View;

    sget v5, Lhdn$h;->tv_action2:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1150
    if-eqz v2, :cond_6

    .line 1151
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    :cond_6
    invoke-direct {p0, v2, v1}, Lhpv;->a(Landroid/widget/TextView;Lhpu;)V

    .line 1154
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    sget v2, Lhdn$h;->action2_divide:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1155
    if-eqz v1, :cond_3

    .line 1156
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1131
    :cond_7
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Lhpv;->setContentView(Landroid/view/View;)V

    .line 1191
    :cond_8
    iget-object v1, p0, Lhpv;->h:Landroid/widget/ImageView;

    new-instance v2, Lhpv$2;

    invoke-direct {v2, p0}, Lhpv$2;-><init>(Lhpv;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    iget-object v1, p0, Lhpv;->r:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lhpv;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1202
    :cond_9
    iget-object v1, p0, Lhpv;->g:Landroid/view/View;

    new-instance v2, Lhpv$3;

    invoke-direct {v2, p0}, Lhpv$3;-><init>(Lhpv;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    :cond_a
    iget-object v1, p0, Lhpv;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 1215
    iget-object v1, p0, Lhpv;->l:Landroid/widget/TextView;

    new-instance v2, Lhpv$4;

    invoke-direct {v2, p0}, Lhpv$4;-><init>(Lhpv;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_b
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lhpv;->setWidth(I)V

    .line 86
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lhpv;->setHeight(I)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lhpv;->setOutsideTouchable(Z)V

    .line 1230
    iget-object v1, p0, Lhpv;->f:Landroid/view/View;

    if-eqz v1, :cond_c

    if-nez p1, :cond_d

    .line 90
    :cond_c
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "parent":Landroid/view/View;
    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lhpv;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1234
    .end local v0    # "parent":Landroid/view/View;
    :cond_d
    iget-object v1, p0, Lhpv;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1235
    iget v1, p0, Lhpv;->n:I

    if-eqz v1, :cond_e

    iget v1, p0, Lhpv;->m:I

    if-eqz v1, :cond_e

    .line 1236
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lhpv;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1237
    new-instance v2, Lcjz;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lhpv;->m:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1238
    if-eqz p6, :cond_10

    .line 1239
    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 2045
    iput v1, v2, Lcjz;->b:F

    .line 1243
    :goto_5
    iget-object v1, p0, Lhpv;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    :cond_e
    :goto_6
    iget-object v1, p0, Lhpv;->o:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1252
    iget-object v1, p0, Lhpv;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lhpv;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    :cond_f
    iget-object v1, p0, Lhpv;->p:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1257
    iget-object v1, p0, Lhpv;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1258
    iget-object v1, p0, Lhpv;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lhpv;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1241
    :cond_10
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 3045
    iput v1, v2, Lcjz;->b:F

    goto :goto_5

    .line 1246
    :cond_11
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1247
    iget-object v2, p0, Lhpv;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lhpv;->q:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_6

    .line 1260
    :cond_12
    iget-object v1, p0, Lhpv;->k:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method
