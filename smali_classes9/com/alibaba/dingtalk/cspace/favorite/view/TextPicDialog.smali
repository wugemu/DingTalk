.class public Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "TextPicDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Landroid/app/Activity;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->v:Z

    .line 54
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->w:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->w:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unBindViews(Landroid/app/Activity;)V

    .line 243
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 72
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->requestWindowFeature(I)Z

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lfzs$g;->text_pic_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 77
    .local v7, "window":Landroid/view/Window;
    if-eqz v7, :cond_0

    .line 78
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/view/Window;->setGravity(I)V

    .line 1086
    :cond_0
    sget v0, Lfzs$f;->ll_start_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->s:Landroid/view/View;

    .line 1087
    sget v0, Lfzs$f;->btn_right_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->n:Landroid/widget/TextView;

    .line 1088
    sget v0, Lfzs$f;->tv_tip_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->m:Landroid/widget/TextView;

    .line 1089
    sget v0, Lfzs$f;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->q:Landroid/widget/TextView;

    .line 1090
    sget v0, Lfzs$f;->img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->p:Landroid/widget/ImageView;

    .line 1091
    sget v0, Lfzs$f;->btn_left_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->o:Landroid/widget/TextView;

    .line 1092
    sget v0, Lfzs$f;->ll_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->t:Landroid/view/View;

    .line 1093
    sget v0, Lfzs$f;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->r:Landroid/widget/TextView;

    .line 1094
    sget v0, Lfzs$f;->bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->u:Landroid/view/View;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    if-eqz v0, :cond_6

    .line 1107
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1108
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    if-lez v0, :cond_3

    .line 1109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->p:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1112
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->p:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    .line 1167
    if-eqz v1, :cond_5

    .line 1170
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->w:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1171
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->l:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 2078
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 2114
    iput v3, v6, Lhcg$a;->e:I

    .line 3104
    iput-boolean v8, v6, Lhcg$a;->b:Z

    .line 3109
    iput-boolean v8, v6, Lhcg$a;->c:Z

    .line 1175
    const/16 v0, 0x30

    .line 4099
    iput v0, v6, Lhcg$a;->a:I

    .line 1177
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->i:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->i:Ljava/util/Map;

    invoke-static {v6, v0}, Lgao;->a(Lhcg$a;Ljava/util/Map;)V

    .line 1180
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->l:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->w:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 1183
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1126
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1128
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcok;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1129
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/high16 v0, 0x41f00000    # 30.0f

    .line 5050
    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 1130
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1137
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :goto_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->t:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    :goto_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_b

    .line 1154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void

    .line 1115
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1129
    :cond_7
    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_1

    .line 1132
    :cond_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->u:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1140
    :cond_9
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1147
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->t:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1156
    :cond_b
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->s:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method
