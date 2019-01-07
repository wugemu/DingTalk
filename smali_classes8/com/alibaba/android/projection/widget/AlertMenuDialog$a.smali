.class final Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;
.super Landroid/widget/BaseAdapter;
.source "AlertMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/widget/AlertMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/projection/widget/AlertMenuDialog;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;>;"
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    .line 244
    invoke-static {p1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->c(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->c:I

    .line 245
    invoke-static {p1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->c(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->d:I

    .line 246
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    .line 9258
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .line 235
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 263
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
    .line 268
    const/4 v0, -0x1

    .line 269
    .local v0, "type":I
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .line 1151
    iget-object v1, v1, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;

    .line 270
    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v0

    .line 272
    :cond_0
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, "listHolder":Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->getItemViewType(I)I

    move-result v4

    .line 287
    .local v4, "type":I
    if-nez p2, :cond_2

    .line 288
    iget-object v5, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-static {v5}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->c(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 289
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v5, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1322
    sget v5, Legm$d;->layout_focus_dialog_item_list_menu:I

    .line 290
    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 292
    new-instance v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;

    .end local v2    # "listHolder":Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;
    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;-><init>(Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;)V

    .line 293
    .restart local v2    # "listHolder":Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;
    sget v5, Legm$c;->item_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->a:Landroid/widget/TextView;

    .line 294
    sget v5, Legm$c;->item_tip:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->b:Landroid/widget/TextView;

    .line 295
    sget v5, Legm$c;->item_right_icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 297
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .line 305
    .local v3, "menu":Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
    if-eqz v3, :cond_1

    .line 306
    if-eqz v2, :cond_1

    .line 1326
    if-eqz v2, :cond_1

    if-nez v3, :cond_3

    .line 310
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->getCount()I

    move-result v1

    .line 311
    .local v1, "itemCount":I
    if-lez v1, :cond_7

    add-int/lit8 v5, v1, -0x1

    if-ne p1, v5, :cond_7

    .line 312
    sget v5, Legm$b;->focus_menu_item_bottom_corner_selector:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 318
    :goto_2
    return-object p2

    .line 300
    .end local v1    # "itemCount":I
    .end local v3    # "menu":Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
    :cond_2
    sget-object v5, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listHolder":Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;
    check-cast v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;

    .restart local v2    # "listHolder":Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;
    goto :goto_0

    .line 4151
    .restart local v3    # "menu":Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
    :cond_3
    iget-object v5, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 1331
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1332
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5151
    iget-object v6, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 1332
    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    :cond_4
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->a:Landroid/widget/TextView;

    .line 8151
    iget-object v6, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->b:Ljava/lang/String;

    .line 1337
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1340
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1341
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9187
    :goto_3
    iget-boolean v5, v3, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    .line 1346
    if-eqz v5, :cond_6

    .line 1347
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1

    .line 1343
    :cond_5
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1349
    :cond_6
    iget-object v5, v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v5, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1

    .line 313
    .restart local v1    # "itemCount":I
    :cond_7
    if-lez v1, :cond_8

    if-nez p1, :cond_8

    .line 314
    sget v5, Legm$b;->focus_menu_item_top_corner_selector:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 316
    :cond_8
    sget v5, Legm$b;->focus_menu_item_selector:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->values()[Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
