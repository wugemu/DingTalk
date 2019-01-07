.class public final Lech;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "MemberPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lech$a;
    }
.end annotation


# instance fields
.field public b:Lech$a;

.field public c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/view/View;

.field private t:Landroid/view/ViewGroup;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcwf;

.field private z:Lcwg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, -0x1

    .line 93
    sget v0, Lctk$g;->popup_member_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;II)V

    .line 96
    iput-object p1, p0, Lech;->d:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lech;->e:Ljava/util/List;

    .line 99
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lech;->m:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->tv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lech;->n:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->tv_sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lech;->p:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->grid_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v0, p0, Lech;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 103
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lech;->j:Landroid/widget/ListView;

    .line 104
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->img_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lech;->o:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->btn_sure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lech;->k:Landroid/widget/Button;

    .line 106
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lech;->l:Landroid/widget/Button;

    .line 107
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->rl_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lech;->f:Landroid/widget/RelativeLayout;

    .line 108
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->rl_sub_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lech;->g:Landroid/widget/RelativeLayout;

    .line 109
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->rl_horizontal_member:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lech;->h:Landroid/widget/RelativeLayout;

    .line 110
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->img_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lech;->q:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->rl_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lech;->r:Landroid/widget/RelativeLayout;

    .line 112
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->v_bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lech;->s:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lech;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->ll_bottom_operation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lech;->t:Landroid/view/ViewGroup;

    .line 115
    iget-object v0, p0, Lech;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lech$1;

    invoke-direct {v1, p0}, Lech$1;-><init>(Lech;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lech;->k:Landroid/widget/Button;

    new-instance v1, Lech$2;

    invoke-direct {v1, p0}, Lech$2;-><init>(Lech;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lech;->l:Landroid/widget/Button;

    new-instance v1, Lech$3;

    invoke-direct {v1, p0}, Lech$3;-><init>(Lech;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lech;->o:Landroid/widget/ImageView;

    new-instance v1, Lech$4;

    invoke-direct {v1, p0}, Lech$4;-><init>(Lech;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method static synthetic a(Lech;)Lech$a;
    .locals 1
    .param p0, "x0"    # Lech;

    .prologue
    .line 37
    iget-object v0, p0, Lech;->b:Lech$a;

    return-object v0
.end method

.method static synthetic a(Lech;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lech;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lech;->x:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lech;Z)V
    .locals 0
    .param p0, "x0"    # Lech;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lech;->a(Z)V

    return-void
.end method

.method static synthetic b(Lech;)V
    .locals 4
    .param p0, "x0"    # Lech;

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 37
    .line 1207
    iget-object v0, p0, Lech;->y:Lcwf;

    if-nez v0, :cond_1

    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1208
    new-instance v2, Lcwf;

    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcwf;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lech;->y:Lcwf;

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    iget-object v2, p0, Lech;->x:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, p0, Lech;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 1212
    iget-object v2, p0, Lech;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1217
    :cond_0
    :goto_0
    iget-object v2, p0, Lech;->y:Lcwf;

    invoke-virtual {v2, v0}, Lcwf;->b(Ljava/util/List;)V

    .line 1218
    iget-object v0, p0, Lech;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v2, p0, Lech;->y:Lcwf;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1220
    iget-object v0, p0, Lech;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setNumColumns(I)V

    .line 1221
    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 1222
    iget-object v2, p0, Lech;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setHorizontalSpacing(I)V

    .line 1248
    :cond_1
    iget-object v0, p0, Lech;->x:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lech;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 1249
    const/4 v0, 0x1

    .line 1225
    :goto_1
    if-eqz v0, :cond_4

    .line 1226
    iget-object v0, p0, Lech;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lech$6;

    invoke-direct {v2, p0}, Lech$6;-><init>(Lech;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    iget-object v0, p0, Lech;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    new-instance v2, Lech$7;

    invoke-direct {v2, p0}, Lech$7;-><init>(Lech;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1241
    iget-object v0, p0, Lech;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    .line 1214
    :cond_2
    iget-object v2, p0, Lech;->x:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1251
    goto :goto_1

    .line 1243
    :cond_4
    iget-object v0, p0, Lech;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic c(Lech;)V
    .locals 2
    .param p0, "x0"    # Lech;

    .prologue
    .line 37
    .line 1255
    iget-object v0, p0, Lech;->z:Lcwg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1256
    new-instance v1, Lcwg;

    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcwg;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lech;->z:Lcwg;

    .line 1257
    iget-object v0, p0, Lech;->z:Lcwg;

    iget-object v1, p0, Lech;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcwg;->b(Ljava/util/List;)V

    .line 1258
    iget-object v0, p0, Lech;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lech;->z:Lcwg;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v1}, Lech;->a(Z)V

    .line 1172
    iget-object v2, p0, Lech;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lech;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v2, p0, Lech;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lech;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    iget-object v2, p0, Lech;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lech;->v:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v2, p0, Lech;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lech;->w:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    new-instance v2, Lech$5;

    invoke-direct {v2, p0}, Lech$5;-><init>(Lech;)V

    .line 1199
    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 1200
    const-class v3, Lcma;

    iget-object v0, p0, Lech;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1201
    invoke-static {v2, v3, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1203
    :goto_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lech;->e:Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 268
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, v1, v1}, Lech;->showAtLocation(Landroid/view/View;III)V

    .line 269
    sget v0, Lctk$j;->member_preview_anim_style:I

    invoke-virtual {p0, v0}, Lech;->setAnimationStyle(I)V

    .line 270
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lech;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1173
    goto :goto_1

    .line 1174
    :cond_2
    iget-object v0, p0, Lech;->v:Ljava/lang/String;

    goto :goto_2

    .line 1175
    :cond_3
    iget-object v0, p0, Lech;->w:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lech;->u:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lech;->v:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lech;->w:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "subView"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 151
    iput-boolean p1, p0, Lech;->c:Z

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lech;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lech;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lech;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lech;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lech;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lech;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lech;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lech;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
