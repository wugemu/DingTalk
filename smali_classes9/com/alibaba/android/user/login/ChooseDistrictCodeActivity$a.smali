.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;
.super Lfxq;
.source "ChooseDistrictCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lfra;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
    .param p2, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lfra;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p3, "mList":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .line 291
    invoke-direct {p0, p2}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 293
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 294
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 304
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfra;

    .line 1056
    iget-object v0, v3, Lfra;->e:Ljava/lang/String;

    .line 305
    .local v0, "currentStr":Ljava/lang/String;
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfra;

    .line 2056
    iget-object v2, v3, Lfra;->e:Ljava/lang/String;

    .line 306
    .local v2, "previewStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-static {p1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->i(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->j(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)[Ljava/lang/String;

    move-result-object v3

    aput-object v0, v3, v1

    .line 296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "previewStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, " "

    goto :goto_1

    .line 311
    .end local v0    # "currentStr":Ljava/lang/String;
    :cond_2
    iput-object p3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->h:Ljava/util/List;

    .line 312
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 316
    .line 320
    move-object v4, p2

    .local v4, "row":Landroid/view/View;
    if-nez p2, :cond_0

    .line 321
    iget-object v5, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->i:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 322
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lezg$j;->district_item:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 324
    new-instance v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;)V

    .line 325
    .local v1, "holder":Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;
    sget v5, Lezg$h;->alpha:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->a:Landroid/widget/TextView;

    .line 326
    sget v5, Lezg$h;->item_district_name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->b:Landroid/widget/TextView;

    .line 327
    sget v5, Lezg$h;->item_district_code:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->c:Landroid/widget/TextView;

    .line 328
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 333
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfra;

    .line 3056
    iget-object v0, v5, Lfra;->e:Ljava/lang/String;

    .line 334
    .local v0, "currentStr":Ljava/lang/String;
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->h:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfra;

    .line 4056
    iget-object v3, v5, Lfra;->e:Ljava/lang/String;

    .line 335
    .local v3, "previewStr":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 336
    iget-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    const-string/jumbo v5, "\u2606"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    iget-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    sget v7, Lezg$l;->hot_country_list:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_2
    iget-object v6, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfra;

    .line 5024
    iget-object v5, v5, Lfra;->a:Ljava/lang/String;

    .line 346
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v6, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->c:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "+"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfra;

    .line 5032
    iget-object v5, v5, Lfra;->b:Ljava/lang/String;

    .line 347
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-object v4

    .line 330
    .end local v0    # "currentStr":Ljava/lang/String;
    .end local v1    # "holder":Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;
    .end local v3    # "previewStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;

    .restart local v1    # "holder":Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;
    goto :goto_0

    .line 334
    .restart local v0    # "currentStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, " "

    goto :goto_1

    .line 340
    .restart local v3    # "previewStr":Ljava/lang/String;
    :cond_2
    iget-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 343
    :cond_3
    iget-object v5, v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a$a;->a:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
