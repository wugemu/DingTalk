.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "DDUpgradeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Landroid/view/View$OnClickListener;

.field public f:Landroid/view/View$OnClickListener;

.field public g:Landroid/view/View$OnClickListener;

.field public h:I

.field public i:Z

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/support/v4/view/ViewPager;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->t:Ljava/util/LinkedList;

    .line 60
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->h:I

    .line 61
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->i:Z

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 30
    .line 4258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 4259
    :cond_0
    :goto_0
    return-void

    .line 4261
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcig$e;->dot_focused:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcig$e;->dot_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4263
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->h:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->t:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->u:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    .line 76
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 268
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->t:Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    .line 276
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 278
    .local v9, "object":Ljava/lang/Object;
    if-eqz v9, :cond_2

    instance-of v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->u:Lcom/alibaba/doraemon/image/ImageMagician;

    check-cast v9, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;

    .line 3376
    .end local v9    # "object":Ljava/lang/Object;
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$b;->a:Landroid/widget/ImageView;

    .line 279
    const/16 v4, 0x8

    move-object v3, v2

    move v6, v5

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 276
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 285
    .end local v8    # "i":I
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x6

    const/4 v8, -0x2

    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->requestWindowFeature(I)Z

    .line 117
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v1, Lcig$h;->app_upgrade_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 121
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 122
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 124
    :cond_0
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->u:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1130
    sget v1, Lcig$f;->btn_right_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->k:Landroid/widget/TextView;

    .line 1131
    sget v1, Lcig$f;->btn_left_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->l:Landroid/widget/TextView;

    .line 1132
    sget v1, Lcig$f;->ll_cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->j:Landroid/view/View;

    .line 1134
    sget v1, Lcig$f;->btn_start_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->m:Landroid/widget/Button;

    .line 1135
    sget v1, Lcig$f;->ll_start_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->n:Landroid/view/View;

    .line 1136
    sget v1, Lcig$f;->dlg_bottom_line:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->o:Landroid/view/View;

    .line 1137
    sget v1, Lcig$f;->dlg_close:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->p:Landroid/view/View;

    .line 1139
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->i:Z

    if-eqz v1, :cond_1

    .line 1140
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->m:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1141
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->n:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->o:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    :goto_0
    sget v1, Lcig$f;->dlg_banner_viewPager:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->q:Landroid/support/v4/view/ViewPager;

    .line 1220
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_2

    const v1, 0x7fffffff

    .line 1221
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-direct {v2, p0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Ljava/util/List;I)V

    .line 1222
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->q:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1244
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 1245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2193
    :goto_2
    sget v1, Lcig$f;->dlg_banner_dot_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2194
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_a

    .line 2195
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 2196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    move v2, v3

    .line 2197
    :goto_3
    if-ge v2, v4, :cond_5

    .line 2198
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2199
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2200
    if-nez v2, :cond_4

    .line 2201
    sget v6, Lcig$e;->dot_focused:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2205
    :goto_4
    invoke-virtual {v5, v9, v3, v9, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2206
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2207
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->r:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2197
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1144
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->m:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->n:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->o:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1220
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_1

    .line 1248
    :cond_3
    const v1, 0x3fffffff    # 1.9999999f

    const v2, 0x3fffffff    # 1.9999999f

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 1249
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->q:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 2203
    :cond_4
    sget v6, Lcig$e;->dot_normal:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 2209
    :cond_5
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->h:I

    .line 3154
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3158
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3159
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3160
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3167
    :goto_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3168
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_c

    .line 3169
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3179
    :goto_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3180
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3183
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->f:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_8

    .line 3184
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3187
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_9

    .line 3188
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_9
    return-void

    .line 2211
    :cond_a
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 3162
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 3171
    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->n:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method
