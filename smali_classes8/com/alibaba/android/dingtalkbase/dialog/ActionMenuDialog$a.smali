.class final Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;
.super Landroid/widget/BaseAdapter;
.source "ActionMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;,
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;,
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    .line 273
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->d:I

    .line 274
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->e:I

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->a:Z

    .line 276
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    .line 28292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .line 262
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 297
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 302
    const/4 v0, -0x1

    .line 303
    .local v0, "type":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .line 1494
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 304
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v0

    .line 306
    :cond_0
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 317
    const/4 v6, 0x0

    .line 318
    .local v6, "viewHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;
    const/4 v1, 0x0

    .line 319
    .local v1, "listHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;
    const/4 v4, 0x0

    .line 321
    .local v4, "sampleHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->getItemViewType(I)I

    move-result v5

    .line 323
    .local v5, "type":I
    if-nez p2, :cond_5

    .line 324
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 325
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 2382
    sget v7, Lcig$h;->layout_normal_menu_item:I

    .line 326
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 328
    new-instance v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;

    .end local v6    # "viewHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;
    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;)V

    .line 329
    .restart local v6    # "viewHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;
    sget v7, Lcig$f;->icon:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 330
    sget v7, Lcig$f;->name:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->b:Landroid/widget/TextView;

    .line 331
    sget v7, Lcig$f;->tip_content:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    .line 333
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->c:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .line 361
    .local v2, "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    if-eqz v2, :cond_1

    .line 362
    if-eqz v6, :cond_d

    .line 3386
    if-eqz v6, :cond_1

    if-nez v2, :cond_8

    .line 370
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->getCount()I

    move-result v3

    .line 371
    .local v3, "menuCount":I
    if-lez v3, :cond_2

    add-int/lit8 v7, v3, -0x1

    if-ne p1, v7, :cond_2

    .line 372
    sget v7, Lcig$e;->bg_corner_12_bottom_selector:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 373
    :cond_2
    if-lez v3, :cond_15

    if-nez p1, :cond_15

    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->a:Z

    if-nez v7, :cond_15

    .line 374
    sget v7, Lcig$e;->bg_corner_12_top_selector:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 378
    :goto_2
    return-object p2

    .line 334
    .end local v2    # "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    .end local v3    # "menuCount":I
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_RIGHT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 2429
    sget v7, Lcig$h;->layout_list_menu_item:I

    .line 335
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 337
    new-instance v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;

    .end local v1    # "listHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;
    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;)V

    .line 338
    .restart local v1    # "listHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;
    sget v7, Lcig$f;->item_name:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->a:Landroid/widget/TextView;

    .line 339
    sget v7, Lcig$f;->item_tip:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->b:Landroid/widget/TextView;

    .line 340
    sget v7, Lcig$f;->item_right_icon:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 342
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_4
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 2459
    sget v7, Lcig$h;->layout_sample_menu_item:I

    .line 344
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 346
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;

    .end local v4    # "sampleHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;
    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;)V

    .line 347
    .restart local v4    # "sampleHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;
    sget v7, Lcig$f;->action_name:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;->a:Landroid/widget/TextView;

    .line 349
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 352
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_6

    .line 353
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "viewHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;
    check-cast v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;

    .restart local v6    # "viewHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;
    goto/16 :goto_0

    .line 354
    :cond_6
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_RIGHT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_7

    .line 355
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;
    check-cast v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;

    .restart local v1    # "listHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;
    goto/16 :goto_0

    .line 356
    :cond_7
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 357
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sampleHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;
    check-cast v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;

    .restart local v4    # "sampleHolder":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;
    goto/16 :goto_0

    .line 3494
    .restart local v2    # "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    :cond_8
    iget v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->b:I

    .line 3389
    if-lez v7, :cond_9

    .line 3390
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 4494
    iget v9, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->b:I

    .line 3390
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6494
    :goto_3
    iget v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 3394
    if-lez v7, :cond_a

    .line 3395
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->b:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 7494
    iget v9, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 3395
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3399
    :goto_4
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 9494
    iget v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 3400
    if-eq v8, v7, :cond_b

    .line 3401
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->b:Landroid/widget/TextView;

    .line 10494
    iget v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 3401
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3406
    :goto_5
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    .line 11494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 3406
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11537
    iget-boolean v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->f:Z

    .line 3407
    if-eqz v7, :cond_c

    .line 3408
    sget v7, Lcig$c;->ui_common_green_icon_bg_color:I

    .line 3412
    iget-object v8, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3413
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    sget v8, Lcig$e;->bg_tips_high_light:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3414
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    const/4 v8, 0x2

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3415
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    iget v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->d:I

    iget v9, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->e:I

    iget v10, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->d:I

    iget v11, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->e:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 3392
    :cond_9
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 3392
    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3397
    :cond_a
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->b:Landroid/widget/TextView;

    .line 8494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->c:Ljava/lang/String;

    .line 3397
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3403
    :cond_b
    iget-object v8, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 3417
    :cond_c
    sget v7, Lcig$c;->ui_common_level4_text_color:I

    .line 3421
    iget-object v8, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3422
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3423
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    const/4 v8, 0x2

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3424
    iget-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$c;->c:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 364
    :cond_d
    if-eqz v1, :cond_12

    .line 15433
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 15494
    iget v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->b:I

    .line 15436
    if-lez v7, :cond_f

    .line 15437
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 16494
    iget v9, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->b:I

    .line 15437
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 19494
    :cond_e
    :goto_6
    iget v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 15441
    if-lez v7, :cond_10

    .line 15442
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 20494
    iget v9, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 15442
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15446
    :goto_7
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->b:Landroid/widget/TextView;

    .line 22494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 15446
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22537
    iget-boolean v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->f:Z

    .line 15447
    if-eqz v7, :cond_11

    .line 15448
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 15449
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15450
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->b:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 17494
    :cond_f
    iget-object v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 15438
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 15439
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 18494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 15439
    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 15444
    :cond_10
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->a:Landroid/widget/TextView;

    .line 21494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->c:Ljava/lang/String;

    .line 15444
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 15452
    :cond_11
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 15453
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15454
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$a;->b:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcig$c;->ui_common_level4_text_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 366
    :cond_12
    if-eqz v4, :cond_1

    .line 23463
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 23494
    iget v7, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 23466
    if-lez v7, :cond_13

    .line 23467
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 24494
    iget v9, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 23467
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23471
    :goto_8
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->b:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 26494
    iget v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 23472
    if-eq v8, v7, :cond_14

    .line 23473
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;->a:Landroid/widget/TextView;

    .line 27494
    iget v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 23473
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 23469
    :cond_13
    iget-object v7, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;->a:Landroid/widget/TextView;

    .line 25494
    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->c:Ljava/lang/String;

    .line 23469
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 23475
    :cond_14
    iget-object v8, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 376
    .restart local v3    # "menuCount":I
    :cond_15
    sget v7, Lcig$e;->bg_12_no_stroke_selector:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->values()[Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
