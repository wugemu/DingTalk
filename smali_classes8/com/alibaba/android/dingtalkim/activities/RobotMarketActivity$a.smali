.class final Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;
.super Landroid/widget/BaseAdapter;
.source "RobotMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->b:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->c:Landroid/content/Context;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->d:Landroid/view/LayoutInflater;

    .line 291
    return-void
.end method

.method private b(I)Z
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 367
    if-lez p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v2

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 371
    .local v1, "preObject":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 372
    .local v0, "curObject":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v3, :cond_0

    .line 373
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a(I)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 314
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 320
    if-nez p2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->d:Landroid/view/LayoutInflater;

    sget v3, Lctk$g;->view_market_robot_item:I

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 322
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->b:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {v1, v2, v5}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;B)V

    .line 323
    .local v1, "viewHolder":Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;
    sget v2, Lctk$f;->tv_header:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->a:Landroid/widget/TextView;

    .line 324
    sget v2, Lctk$f;->iv_avatar:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 325
    sget v2, Lctk$f;->tv_robot_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->c:Landroid/widget/TextView;

    .line 326
    sget v2, Lctk$f;->tv_robot_tag:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->d:Landroid/widget/TextView;

    .line 327
    sget v2, Lctk$f;->tv_robot_desc:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->e:Landroid/widget/TextView;

    .line 328
    sget v2, Lctk$f;->v_divider_part:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->f:Landroid/view/View;

    .line 329
    sget v2, Lctk$f;->v_divider_full:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->g:Landroid/view/View;

    .line 330
    sget v2, Lctk$f;->tv_org_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->h:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 335
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a(I)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    move-result-object v0

    .line 336
    .local v0, "item":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :goto_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->e:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->brief:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v2, :cond_3

    .line 345
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isOrgInner()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    :goto_3
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    .line 357
    :cond_0
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->f:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->g:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :goto_4
    return-object p2

    .line 333
    .end local v0    # "item":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    .end local v1    # "viewHolder":Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;
    goto :goto_0

    .line 339
    .restart local v0    # "item":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 348
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 353
    :cond_4
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 360
    :cond_5
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->f:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$c;->g:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method
