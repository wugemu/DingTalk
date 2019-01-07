.class public Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;
.super Landroid/widget/LinearLayout;
.source "StubOneBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ldvu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:I

.field private final d:Landroid/content/Context;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private q:Ljava/lang/String;

.field private r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "#A7A7A7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->a:I

    .line 32
    const-string/jumbo v0, "#40AFFC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->d:Landroid/content/Context;

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->d:Landroid/content/Context;

    sget v1, Lctk$g;->item_oa_tab:I

    invoke-static {v0, v1, p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1153
    sget v0, Lctk$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->h:Landroid/widget/TextView;

    .line 1154
    sget v0, Lctk$f;->tv_todo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->e:Landroid/widget/TextView;

    .line 1155
    sget v0, Lctk$f;->tv_todo_num:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->f:Landroid/widget/TextView;

    .line 1156
    sget v0, Lctk$f;->tv_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->g:Landroid/widget/TextView;

    .line 1157
    sget v0, Lctk$f;->listView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->i:Landroid/widget/ListView;

    .line 1158
    sget v0, Lctk$f;->todo_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->j:Landroid/view/View;

    .line 1159
    sget v0, Lctk$f;->notice_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->k:Landroid/view/View;

    .line 1160
    sget v0, Lctk$f;->todo_selected_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->l:Landroid/view/View;

    .line 1161
    sget v0, Lctk$f;->notice_selected_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->m:Landroid/view/View;

    .line 1162
    sget v0, Lctk$f;->overflow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->n:Landroid/view/View;

    .line 1164
    sget v0, Lctk$f;->swipe_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1165
    sget v0, Lctk$f;->notice_pull:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->o:Landroid/view/View;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->o:Landroid/view/View;

    .line 2022
    if-eqz v1, :cond_0

    .line 2024
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 2025
    if-eqz v6, :cond_0

    instance-of v0, v6, Landroid/view/View;

    if-nez v0, :cond_2

    .line 1169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1173
    instance-of v1, v0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    if-eqz v1, :cond_1

    .line 1174
    check-cast v0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    .line 1175
    sget v1, Lctk$f;->back:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1176
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->createNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void

    .line 2026
    :cond_2
    check-cast v6, Landroid/view/View;

    .line 2027
    new-instance v0, Ldkp$1;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Ldkp$1;-><init>(Landroid/view/View;IIIILandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->l:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 146
    rsub-int/lit8 v0, p1, 0x4

    .line 147
    .local v0, "v":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->b(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->e:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->g:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->g:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_work_notice:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->b(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->e:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->g:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->e()V

    .line 125
    return-void
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_work_notice_with_condition:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->q:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_work_notice_with_condition:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lctk$i;->dt_im_oa_all:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->layout_one_box_menu_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 345
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->d()V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 325
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "visiable"    # I

    .prologue
    .line 274
    return-void
.end method

.method public final a(IZ)V
    .locals 0
    .param p1, "headHeight"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 264
    return-void
.end method

.method public final a(IZZ)V
    .locals 0
    .param p1, "maxHeight"    # I
    .param p2, "showAvatar"    # Z
    .param p3, "showTag"    # Z

    .prologue
    .line 244
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 314
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->q:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->e()V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "subText"    # Ljava/lang/String;
    .param p2, "num"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    if-lez p2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->f:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 239
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lckn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "tagModels":Ljava/util/List;, "Ljava/util/List<Lckn;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 233
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/View;

    .prologue
    .line 357
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 254
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "needShape"    # Z

    .prologue
    .line 289
    return-void
.end method

.method public getAvatarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildHeight()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public getContentListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPullToRefreshView()Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->j:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    if-ne v0, v1, :cond_3

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c()V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;->aq()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->k:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 94
    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    if-ne v0, v1, :cond_5

    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->d()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;->ap()V

    .line 97
    iput v2, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c:I

    goto :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;->ar()V

    goto :goto_0

    .line 101
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->back:I

    if-ne v0, v1, :cond_7

    .line 2136
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2137
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2138
    check-cast v0, Landroid/app/Activity;

    .line 2139
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->n:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;->as()V

    goto :goto_0

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->o:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;->ar()V

    goto :goto_0
.end method

.method public setBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "backListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 319
    return-void
.end method

.method public setBackViewColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 367
    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 362
    return-void
.end method

.method public setContentResId(I)V
    .locals 0
    .param p1, "containId"    # I

    .prologue
    .line 190
    return-void
.end method

.method public setDragCloseLimit(I)V
    .locals 0
    .param p1, "dragCloseLimit"    # I

    .prologue
    .line 195
    return-void
.end method

.method public setGuideListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;)V
    .locals 0
    .param p1, "guideListener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

    .prologue
    .line 259
    return-void
.end method

.method public setGuideName(Ljava/lang/String;)V
    .locals 0
    .param p1, "guideName"    # Ljava/lang/String;

    .prologue
    .line 249
    return-void
.end method

.method public setOnEntryClickListener(Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;)V
    .locals 0
    .param p1, "onEntryClickListener"    # Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->r:Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;

    .line 83
    return-void
.end method

.method public setOnOneBoxPullViewVisibleChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;)V
    .locals 0
    .param p1, "onOneBoxPullViewVisibleChangedListener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

    .prologue
    .line 387
    return-void
.end method

.method public setShowOneBox(Z)V
    .locals 0
    .param p1, "showBox"    # Z

    .prologue
    .line 269
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 382
    return-void
.end method

.method public setSubTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 377
    return-void
.end method

.method public setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V
    .locals 0
    .param p1, "subTitleInfo"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .prologue
    .line 229
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 372
    return-void
.end method

.method public setTitleRightImage(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 304
    return-void
.end method

.method public setTitleRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 390
    return-void
.end method

.method public setTypingTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "typing"    # Ljava/lang/String;

    .prologue
    .line 294
    return-void
.end method

.method public setViewStatusListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    .prologue
    .line 186
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    if-nez p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->c()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->d()V

    goto :goto_0
.end method
