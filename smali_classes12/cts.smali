.class public abstract Lcts;
.super Ljava/lang/Object;
.source "AbsChatViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcts$a;,
        Lcts$c;,
        Lcts$b;
    }
.end annotation


# static fields
.field protected static final c:Landroid/view/View$OnLongClickListener;


# instance fields
.field protected A:Landroid/widget/CheckBox;

.field protected B:Landroid/view/View;

.field protected C:Landroid/view/View;

.field protected D:Landroid/widget/TextView;

.field protected E:Landroid/widget/ImageView;

.field protected F:Landroid/view/View;

.field protected G:Landroid/widget/TextView;

.field protected H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field protected K:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected L:Landroid/view/View;

.field M:I

.field public N:J

.field protected O:Z

.field protected P:Lcts$b;

.field protected Q:Lcom/alibaba/wukong/im/Message;

.field protected R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field private a:Landroid/animation/ValueAnimator;

.field private b:Ldjz$b;

.field protected d:Landroid/app/Activity;

.field protected e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field protected i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field protected j:Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;

.field protected k:Landroid/view/ViewGroup;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/ImageView;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/TextView;

.field protected q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

.field protected r:Landroid/view/View;

.field protected s:Landroid/view/View;

.field protected t:Landroid/view/View;

.field protected u:Landroid/widget/TextView;

.field protected v:Landroid/widget/ImageView;

.field protected w:Landroid/widget/ImageView;

.field protected x:Landroid/widget/TextView;

.field protected y:Landroid/widget/TextView;

.field protected z:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcts$1;

    invoke-direct {v0}, Lcts$1;-><init>()V

    sput-object v0, Lcts;->c:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcts;->f:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcts;->g:Landroid/view/View;

    .line 95
    iput-object v0, p0, Lcts;->h:Landroid/view/View;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcts;->M:I

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcts;->N:J

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcts;->O:Z

    .line 148
    return-void
.end method

.method protected static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 400
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 164
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 165
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcts;->b()I

    move-result v3

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->e:Landroid/view/View;

    .line 168
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_content_view_stub:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 169
    .local v2, "viewStub":Landroid/view/ViewStub;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcts;->c()I

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p0}, Lcts;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 171
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->r:Landroid/view/View;

    .line 174
    :cond_0
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chattting_avatar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, p0, Lcts;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 175
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->decoration_for_avatar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;

    iput-object v3, p0, Lcts;->j:Lcom/alibaba/android/dingtalkbase/widgets/DecorationRelativeLayout;

    .line 176
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->rl_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcts;->k:Landroid/view/ViewGroup;

    .line 177
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->l:Landroid/widget/TextView;

    .line 178
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->special_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->n:Landroid/widget/TextView;

    .line 1221
    iget-object v3, p0, Lcts;->n:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1224
    sget v3, Lctk$i;->icon_star_fill:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->ui_common_warming_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1226
    new-instance v5, Lcjz;

    invoke-direct {v5, v3, v4}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1227
    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 2045
    iput v3, v5, Lcjz;->b:F

    .line 1228
    iget-object v3, p0, Lcts;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1229
    iget-object v3, p0, Lcts;->n:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcts;->n:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcts;->n:Landroid/widget/TextView;

    .line 1230
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcts;->n:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 1229
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1231
    iget-object v3, p0, Lcts;->n:Landroid/widget/TextView;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 180
    :cond_1
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->title_suffix_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->o:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->title_suffix_tips_2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->p:Landroid/widget/TextView;

    .line 182
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->user_status_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iput-object v3, p0, Lcts;->q:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    .line 183
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->dt_signal:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcts;->m:Landroid/widget/ImageView;

    .line 2429
    sget v0, Lctk$f;->chatting_time_tv:I

    .line 187
    .local v0, "gmtResourceId":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 188
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->f:Landroid/widget/TextView;

    .line 189
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->tv_overlay:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->g:Landroid/view/View;

    .line 191
    :cond_2
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->rl_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->s:Landroid/view/View;

    .line 192
    iget-object v3, p0, Lcts;->s:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcts;->s:Landroid/view/View;

    sget v4, Lctk$f;->tips_setting:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcts;->w:Landroid/widget/ImageView;

    .line 194
    iget-object v3, p0, Lcts;->s:Landroid/view/View;

    sget v4, Lctk$f;->msg_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->t:Landroid/view/View;

    .line 195
    iget-object v3, p0, Lcts;->s:Landroid/view/View;

    sget v4, Lctk$f;->msg_tips_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->u:Landroid/widget/TextView;

    .line 196
    iget-object v3, p0, Lcts;->s:Landroid/view/View;

    sget v4, Lctk$f;->msg_tips_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcts;->v:Landroid/widget/ImageView;

    .line 197
    iget-object v3, p0, Lcts;->s:Landroid/view/View;

    sget v4, Lctk$f;->msg_status_tip:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->x:Landroid/widget/TextView;

    .line 199
    :cond_3
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->tv_overlay_new_message_start:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->h:Landroid/view/View;

    .line 200
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_item_hidden_time:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->y:Landroid/widget/TextView;

    .line 201
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_content_view_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcts;->z:Landroid/view/ViewGroup;

    .line 202
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_item_hidden_select:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcts;->A:Landroid/widget/CheckBox;

    .line 203
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    iput-object v3, p0, Lcts;->B:Landroid/view/View;

    .line 205
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->msg_devices_from:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->C:Landroid/view/View;

    .line 206
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->msg_devices_from_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->D:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->msg_devices_from_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcts;->E:Landroid/widget/ImageView;

    .line 208
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->tv_chatting_count_down:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->I:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_translate_status_tv:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->J:Landroid/widget/TextView;

    .line 210
    iget-object v3, p0, Lcts;->J:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 211
    iget-object v3, p0, Lcts;->J:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :cond_4
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->msg_safe_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcts;->F:Landroid/view/View;

    .line 214
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->tv_at_read_status:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->G:Landroid/widget/TextView;

    .line 215
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    sget v4, Lctk$f;->chatting_unreadcount_tv1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcts;->H:Landroid/widget/TextView;

    .line 216
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lcts;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 217
    iget-object v3, p0, Lcts;->e:Landroid/view/View;

    return-object v3
.end method

.method public final a()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcts;->Q:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method protected a(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 371
    const-string/jumbo v0, ""

    .line 374
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(F)V
    .locals 9
    .param p1, "offset"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 475
    iget-object v7, p0, Lcts;->y:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcts;->z:Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcts;->r:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 476
    iget-object v7, p0, Lcts;->y:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "chatOffset":F
    iget-object v7, p0, Lcts;->z:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcts;->r:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcts;->y:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    .line 479
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 480
    .local v0, "chatLocation":[I
    iget-object v7, p0, Lcts;->r:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 481
    iget-object v7, p0, Lcts;->z:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcts;->y:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float v5, v7, p1

    .line 482
    .local v5, "timeLeft":F
    const/4 v7, 0x0

    aget v7, v0, v7

    iget-object v8, p0, Lcts;->r:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcts;->r:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    sub-float v2, v7, v8

    .line 483
    .local v2, "chatRight":F
    cmpg-float v7, v5, v2

    if-gez v7, :cond_0

    .line 484
    sub-float v1, v5, v2

    .line 487
    .end local v0    # "chatLocation":[I
    .end local v2    # "chatRight":F
    .end local v5    # "timeLeft":F
    :cond_0
    iget-object v7, p0, Lcts;->z:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 488
    .local v3, "childrenLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 489
    iget-object v7, p0, Lcts;->z:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 490
    .local v6, "v":Landroid/view/View;
    iget-object v7, p0, Lcts;->y:Landroid/widget/TextView;

    if-eq v6, v7, :cond_1

    iget-object v7, p0, Lcts;->A:Landroid/widget/CheckBox;

    if-eq v6, v7, :cond_1

    .line 491
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 488
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "chatOffset":F
    .end local v3    # "childrenLength":I
    .end local v4    # "i":I
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
.end method

.method public a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    const/4 v6, 0x2

    .line 252
    iput-object p1, p0, Lcts;->d:Landroid/app/Activity;

    .line 253
    iget-object v1, p0, Lcts;->z:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcts;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcts;->z:Landroid/view/ViewGroup;

    const-string/jumbo v2, "backgroundColor"

    new-array v3, v6, [I

    const/4 v4, 0x0

    const v5, 0x106000d

    .line 256
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lctk$c;->im_card_bg_anim_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v4

    .line 255
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    .line 257
    iget-object v1, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 258
    iget-object v1, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 259
    iget-object v1, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 260
    iget-object v1, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 262
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    .line 2544
    iput-wide v2, p0, Lcts;->N:J

    .line 263
    return-void
.end method

.method public abstract a(Landroid/app/Activity;Landroid/view/View;)V
.end method

.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 151
    iput-object p1, p0, Lcts;->L:Landroid/view/View;

    .line 152
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .prologue
    .line 576
    iput-object p1, p0, Lcts;->R:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 577
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 299
    iput-object p1, p0, Lcts;->Q:Lcom/alibaba/wukong/im/Message;

    .line 300
    return-void
.end method

.method public final a(Lcts$b;)V
    .locals 0
    .param p1, "listener"    # Lcts$b;

    .prologue
    .line 528
    iput-object p1, p0, Lcts;->P:Lcts$b;

    .line 529
    return-void
.end method

.method public final a(Ldjz$a;)V
    .locals 4
    .param p1, "timer"    # Ldjz$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    if-eqz p1, :cond_1

    .line 308
    iget-object v1, p0, Lcts;->Q:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    .line 309
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v1

    iget-object v2, p0, Lcts;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldjz;->a(J)Ldjz$a;

    move-result-object v0

    .line 310
    .local v0, "t":Ldjz$a;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcts;->b:Ldjz$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcts;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ldjz$a;->a(I)Ldjz$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcts;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ldjz$a;->a(I)Ldjz$b;

    move-result-object v1

    iget-object v2, p0, Lcts;->b:Ldjz$b;

    if-ne v1, v2, :cond_0

    .line 311
    iget-object v1, p0, Lcts;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldjz$a;->a(ILdjz$b;)V

    .line 314
    .end local v0    # "t":Ldjz$a;
    :cond_0
    new-instance v1, Lcts$2;

    invoke-direct {v1, p0}, Lcts$2;-><init>(Lcts;)V

    iput-object v1, p0, Lcts;->b:Ldjz$b;

    .line 332
    iget-object v1, p0, Lcts;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcts;->b:Ldjz$b;

    invoke-virtual {p1, v1, v2}, Ldjz$a;->a(ILdjz$b;)V

    .line 334
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "showOnlyRealName"    # Z

    .prologue
    .line 287
    return-void
.end method

.method public abstract b()I
.end method

.method public b(J)V
    .locals 0
    .param p1, "orgId"    # J

    .prologue
    .line 283
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iput-object p1, p0, Lcts;->e:Landroid/view/View;

    .line 156
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    iput-boolean p1, p0, Lcts;->K:Z

    .line 292
    return-void
.end method

.method public abstract c()I
.end method

.method public final c(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 469
    iget-object v0, p0, Lcts;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcts;->y:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcts;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 503
    if-eqz p1, :cond_1

    .line 504
    iget-object v0, p0, Lcts;->h:Landroid/view/View;

    sget v1, Lctk$f;->tv_msg_start_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcts;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcts;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcts;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcts;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcts;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected final g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    iget-boolean v1, p0, Lcts;->O:Z

    if-eqz v1, :cond_0

    .line 391
    sget v1, Lctk$i;->me:I

    invoke-static {v1}, Lcts;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "sender":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 393
    .end local v0    # "sender":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcts;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcts;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "sender":Ljava/lang/String;
    goto :goto_0
.end method

.method protected final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    iget-object v0, p0, Lcts;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcts;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcts;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcts;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcts;->r:Landroid/view/View;

    invoke-virtual {p0}, Lcts;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 418
    :cond_1
    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcts;->r:Landroid/view/View;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->z:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 551
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 554
    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->z:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcts;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 556
    iget-object v0, p0, Lcts;->z:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcts;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 559
    :cond_0
    return-void
.end method

.method protected abstract l()Z
.end method

.method protected final m()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 567
    :cond_0
    return-void
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcts;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 573
    :cond_0
    return-void
.end method
