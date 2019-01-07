.class public final Lcom/alibaba/android/teleconf/widget/MenuDialog$a;
.super Landroid/widget/BaseAdapter;
.source "MenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/MenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;,
        Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/MenuDialog;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;Ljava/util/List;)V
    .locals 2
    .param p2, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 369
    iput-object p3, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    .line 370
    invoke-static {p1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->d:I

    .line 371
    invoke-static {p1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->e:I

    .line 372
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a(I)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 389
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 394
    const/4 v0, -0x1

    .line 395
    .local v0, "type":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 1048
    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->j:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    .line 396
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v0

    .line 398
    :cond_0
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x8

    const/4 v6, 0x0

    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, "viewHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;
    const/4 v1, 0x0

    .line 412
    .local v1, "listHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->getItemViewType(I)I

    move-result v2

    .line 414
    .local v2, "type":I
    if-nez p2, :cond_3

    .line 415
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 416
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 1459
    sget v4, Leuj$j;->layout_item_menu_dialog:I

    .line 417
    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 419
    new-instance v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;

    .end local v3    # "viewHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;
    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;-><init>(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;)V

    .line 420
    .restart local v3    # "viewHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;
    sget v4, Leuj$i;->icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 421
    sget v4, Leuj$i;->name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->b:Landroid/widget/TextView;

    .line 422
    sget v4, Leuj$i;->tip_content:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    .line 423
    sget v4, Leuj$i;->extra_action:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->d:Landroid/widget/TextView;

    .line 425
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 444
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 2463
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    if-eqz v4, :cond_1

    if-ltz p1, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_5

    .line 450
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->getCount()I

    move-result v4

    if-lez v4, :cond_12

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_12

    .line 451
    sget v4, Leuj$h;->bg_menu_item_bottom_corner_selector:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 455
    :goto_2
    return-object p2

    .line 426
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    sget-object v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1520
    sget v4, Leuj$j;->layout_item_list_menu:I

    .line 427
    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 429
    new-instance v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;

    .end local v1    # "listHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;
    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;-><init>(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;)V

    .line 430
    .restart local v1    # "listHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;
    sget v4, Leuj$i;->item_left_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 431
    sget v4, Leuj$i;->item_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->b:Landroid/widget/TextView;

    .line 432
    sget v4, Leuj$i;->item_tip:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->c:Landroid/widget/TextView;

    .line 433
    sget v4, Leuj$i;->item_right_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 435
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    sget-object v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 439
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "viewHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;
    check-cast v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;

    .restart local v3    # "viewHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;
    goto :goto_0

    .line 440
    :cond_4
    sget-object v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;
    check-cast v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;

    .restart local v1    # "listHolder":Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;
    goto/16 :goto_0

    .line 2466
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 3048
    iget v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->b:I

    .line 2467
    if-lez v5, :cond_7

    .line 2468
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4048
    iget v8, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->b:I

    .line 2468
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6048
    :goto_3
    iget v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->d:I

    .line 2472
    if-lez v5, :cond_8

    .line 2473
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 7048
    iget v8, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->d:I

    .line 2473
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2477
    :goto_4
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    .line 9048
    iget-object v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 2477
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9089
    iget-boolean v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 2478
    if-eqz v5, :cond_9

    .line 2479
    sget v5, Leuj$f;->ui_common_green_icon_bg_color:I

    .line 9097
    iget v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->g:I

    .line 2480
    if-lez v7, :cond_6

    .line 10097
    iget v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->g:I

    .line 2483
    :cond_6
    iget-object v7, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2484
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    sget v7, Leuj$h;->bg_tips_highlight:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2485
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2486
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    iget v7, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->d:I

    iget v8, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->e:I

    iget v9, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->d:I

    iget v10, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->e:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12145
    :goto_5
    iget-boolean v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->l:Z

    .line 2497
    if-eqz v5, :cond_b

    .line 13048
    iget-object v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->k:Ljava/lang/String;

    .line 2497
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2498
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2499
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->d:Landroid/widget/TextView;

    .line 14048
    iget-boolean v6, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->m:Z

    .line 2499
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2500
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->d:Landroid/widget/TextView;

    .line 15048
    iget-object v6, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->k:Ljava/lang/String;

    .line 2500
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16048
    iget-boolean v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->m:Z

    .line 2501
    if-eqz v5, :cond_1

    .line 2502
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->d:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;

    invoke-direct {v6, p0, v4, p1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;-><init>(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 2470
    :cond_7
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5048
    iget-object v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 2470
    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2475
    :cond_8
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->b:Landroid/widget/TextView;

    .line 8048
    iget-object v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->c:Ljava/lang/String;

    .line 2475
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2488
    :cond_9
    sget v5, Leuj$f;->ui_common_level3_text_color:I

    .line 11097
    iget v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->g:I

    .line 2489
    if-lez v7, :cond_a

    .line 12097
    iget v5, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->g:I

    .line 2492
    :cond_a
    iget-object v7, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2493
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2494
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v5, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2495
    iget-object v5, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    .line 2515
    :cond_b
    iget-object v4, v3, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 446
    :cond_c
    if-eqz v1, :cond_1

    .line 16524
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    if-eqz v4, :cond_1

    if-ltz p1, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 16527
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 17048
    iget v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->b:I

    .line 16529
    if-lez v7, :cond_d

    .line 16530
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 18048
    iget v9, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->b:I

    .line 16530
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 16531
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 21048
    :goto_6
    iget v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->d:I

    .line 16541
    if-lez v7, :cond_f

    .line 16542
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->b:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 22048
    iget v9, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->d:I

    .line 16542
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24048
    :goto_7
    iget-object v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 16546
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 16547
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->c:Landroid/widget/TextView;

    .line 25048
    iget-object v8, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 16547
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16548
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25089
    :goto_8
    iget-boolean v4, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 16552
    if-eqz v4, :cond_11

    .line 16553
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 16554
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Leuj$f;->ui_common_theme_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16555
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Leuj$f;->ui_common_theme_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16556
    if-eqz v5, :cond_1

    .line 16557
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Leuj$f;->ui_common_theme_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 19048
    :cond_d
    iget-object v7, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 16533
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 16534
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 20048
    iget-object v8, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 16534
    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 16535
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 16538
    :cond_e
    iget-object v5, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    move v5, v6

    .line 16539
    goto/16 :goto_6

    .line 16544
    :cond_f
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->b:Landroid/widget/TextView;

    .line 23048
    iget-object v8, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->c:Ljava/lang/String;

    .line 16544
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 16550
    :cond_10
    iget-object v7, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 16560
    :cond_11
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 16561
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Leuj$f;->ui_common_level1_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16562
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Leuj$f;->ui_common_level4_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16563
    if-eqz v5, :cond_1

    .line 16564
    iget-object v4, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Leuj$f;->ui_common_level1_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 453
    :cond_12
    sget v4, Leuj$h;->bg_menu_item_selector:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->values()[Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
