.class public final Ldwn;
.super Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
.source "WorkItemBoxViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field d:Landroid/app/Activity;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;-><init>(Landroid/app/Activity;)V

    .line 80
    iput-object p1, p0, Ldwn;->d:Landroid/app/Activity;

    .line 81
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/models/ActionObject;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/models/ActionObject;
    .param p2, "actionView"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 332
    iget v1, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->textColor:I

    if-eqz v1, :cond_0

    .line 333
    iget v1, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->textColor:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 336
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Ldwn;->d:Landroid/app/Activity;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iget v2, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->frameColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 337
    iget v1, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 339
    const/16 v1, 0x10

    invoke-static {v1}, Lcms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :goto_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->text:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :goto_1
    return-void

    .line 342
    .restart local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 349
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Ldwn;Lcom/alibaba/android/dingtalkim/models/ActionObject;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V
    .locals 4
    .param p0, "x0"    # Ldwn;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/ActionObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .prologue
    .line 61
    .line 3175
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->status:I

    if-nez v0, :cond_1

    .line 3191
    :cond_0
    :goto_0
    return-void

    .line 3179
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v0

    .line 3180
    const-string/jumbo v1, "item_type"

    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->itemType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    const-string/jumbo v1, "todo_item_id"

    iget-wide v2, p2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    const-string/jumbo v1, "action_btn"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->text:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_todo_todotab_item_action_btn_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3185
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->action:Ljava/lang/String;

    const-string/jumbo v1, "link"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3186
    invoke-virtual {p0, p1}, Ldwn;->a(Lcom/alibaba/android/dingtalkim/models/ActionObject;)V

    goto :goto_0

    .line 3190
    :cond_2
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3229
    new-instance v0, Ldwn$4;

    invoke-direct {v0, p0, p2}, Ldwn$4;-><init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    .line 3261
    iget-object v1, p0, Ldwn;->d:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 3262
    const-class v1, Lcma;

    iget-object v2, p0, Ldwn;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3265
    :cond_3
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/models/ActionObject;->toModelIDL()Ldsg;

    move-result-object v2

    .line 4196
    new-instance v3, Ldyi$10;

    invoke-direct {v3, v1, v0}, Ldyi$10;-><init>(Ldyi;Lcma;)V

    .line 4202
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 4203
    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->doActionV2(Ldsg;Liyv;)V

    goto :goto_0

    .line 5198
    :cond_4
    new-instance v0, Ldwn$3;

    invoke-direct {v0, p0, p2}, Ldwn$3;-><init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    .line 5221
    iget-object v1, p0, Ldwn;->d:Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 5222
    const-class v1, Lcma;

    iget-object v2, p0, Ldwn;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5225
    :cond_5
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/models/ActionObject;->toModelIDL()Ldsg;

    move-result-object v2

    .line 6177
    new-instance v3, Ldyi$9;

    invoke-direct {v3, v1, v0}, Ldyi$9;-><init>(Ldyi;Lcma;)V

    .line 6190
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 6191
    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->doAction(Ldsg;Liyv;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Ldwn;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/WorkItemObject;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 61
    .line 6294
    invoke-direct {p0, p2}, Ldwn;->a(Ljava/util/List;)V

    .line 6296
    iput-object p2, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    .line 6297
    iget-object v0, p0, Ldwn;->b:Ldvv;

    if-eqz v0, :cond_0

    .line 6298
    iget-object v0, p0, Ldwn;->b:Ldvv;

    invoke-virtual {v0}, Ldvv;->notifyDataSetChanged()V

    .line 61
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ActionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/ActionObject;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 317
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 322
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;

    iget-object v1, p0, Ldwn;->l:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Ldwn;->a(Lcom/alibaba/android/dingtalkim/models/ActionObject;Landroid/widget/TextView;)V

    .line 323
    iget-object v0, p0, Ldwn;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;

    iget-object v1, p0, Ldwn;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Ldwn;->a(Lcom/alibaba/android/dingtalkim/models/ActionObject;Landroid/widget/TextView;)V

    .line 326
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;

    iget-object v1, p0, Ldwn;->l:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Ldwn;->a(Lcom/alibaba/android/dingtalkim/models/ActionObject;Landroid/widget/TextView;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget v0, Lctk$g;->box_work_item:I

    .line 87
    :goto_0
    return v0

    :cond_0
    sget v0, Lctk$g;->box_work_item_origin:I

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    sget v0, Lctk$f;->img_box_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldwn;->e:Landroid/widget/ImageView;

    .line 93
    sget v0, Lctk$f;->tv_box_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->f:Landroid/widget/TextView;

    .line 94
    sget v0, Lctk$f;->tv_box_content_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->g:Landroid/widget/TextView;

    .line 95
    sget v0, Lctk$f;->tv_box_content_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->h:Landroid/widget/TextView;

    .line 96
    sget v0, Lctk$f;->tv_box_content_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->i:Landroid/widget/TextView;

    .line 97
    sget v0, Lctk$f;->tv_box_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->j:Landroid/widget/TextView;

    .line 98
    sget v0, Lctk$f;->tv_box_action_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->k:Landroid/widget/TextView;

    .line 99
    sget v0, Lctk$f;->tv_box_action_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwn;->l:Landroid/widget/TextView;

    .line 100
    return-void
.end method

.method a(Lcom/alibaba/android/dingtalkim/models/ActionObject;)V
    .locals 5
    .param p1, "actionObject"    # Lcom/alibaba/android/dingtalkim/models/ActionObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 303
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/ActionObject;->link:Ljava/lang/String;

    .line 304
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Ldwn;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 307
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 61
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 3104
    if-eqz p1, :cond_8

    .line 3108
    iget-object v0, p0, Ldwn;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Ldwn;->e:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 3109
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3110
    iget-object v0, p0, Ldwn;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3113
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->createAt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 3114
    iget-object v0, p0, Ldwn;->j:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->createAt:J

    invoke-static {v4, v5, v9}, Lcog;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3117
    :cond_1
    iget-object v0, p0, Ldwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3118
    iget-object v0, p0, Ldwn;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3119
    iget-object v0, p0, Ldwn;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3120
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->contents:Ljava/util/List;

    if-eqz v0, :cond_7

    move v1, v2

    .line 3121
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 3123
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldth;

    .line 3124
    if-eqz v0, :cond_4

    .line 3127
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3128
    iget-object v4, v0, Ldth;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3129
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Ldth;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3130
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Ldwn;->d:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$c;->uidic_global_color_6_2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, v0, Ldth;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3131
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3134
    :cond_2
    iget-object v4, v0, Ldth;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3135
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v0, Ldth;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3136
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Ldwn;->d:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$c;->uidic_global_color_6_1:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v0, v0, Ldth;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v5, v2, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3137
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3140
    :cond_3
    if-nez v1, :cond_5

    .line 3141
    iget-object v0, p0, Ldwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3142
    iget-object v0, p0, Ldwn;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3121
    :cond_4
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 3143
    :cond_5
    if-ne v1, v9, :cond_6

    .line 3144
    iget-object v0, p0, Ldwn;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3145
    iget-object v0, p0, Ldwn;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3146
    :cond_6
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 3147
    iget-object v0, p0, Ldwn;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3148
    iget-object v0, p0, Ldwn;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3153
    :cond_7
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3154
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    invoke-direct {p0, v0}, Ldwn;->a(Ljava/util/List;)V

    .line 3156
    iget-object v0, p0, Ldwn;->k:Landroid/widget/TextView;

    new-instance v1, Ldwn$1;

    invoke-direct {v1, p0, p1}, Ldwn$1;-><init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3162
    iget-object v0, p0, Ldwn;->l:Landroid/widget/TextView;

    new-instance v1, Ldwn$2;

    invoke-direct {v1, p0, p1}, Ldwn$2;-><init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    return-void

    .line 3169
    :cond_9
    iget-object v0, p0, Ldwn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3170
    iget-object v0, p0, Ldwn;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 2355
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    iget-object v0, p0, Ldwn;->b:Ldvv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldwn;->b:Ldvv;

    iget-wide v0, v0, Ldvv;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2357
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_onebox_contactinner_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2364
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v0

    .line 2365
    const-string/jumbo v1, "item_type"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->itemType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    const-string/jumbo v1, "todo_item_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_todo_todotab_item_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 2369
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Ldwn;->d:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void

    .line 2360
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_onebox_oa_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 1375
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1376
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Ldwn;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ldwn;->d:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_remove_oa_todo_title:I

    .line 1377
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Ldwn$8;

    invoke-direct {v2, p0}, Ldwn$8;-><init>(Ldwn;)V

    .line 1378
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_remove_oa_todo:I

    new-instance v2, Ldwn$7;

    invoke-direct {v2, p0, p1}, Ldwn$7;-><init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    .line 1384
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1389
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1391
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1393
    :cond_0
    const/4 v0, 0x0

    .line 61
    goto :goto_0
.end method
