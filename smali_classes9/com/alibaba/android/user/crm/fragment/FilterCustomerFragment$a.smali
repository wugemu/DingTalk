.class final Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;
.super Lfxq;
.source "FilterCustomerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:I

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "multiChoose"    # Z

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->g:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .line 286
    invoke-direct {p0, p2}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->c:Z

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->d:Z

    .line 287
    iput-boolean p3, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->d:Z

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->f:Ljava/util/List;

    .line 289
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->text_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->a:I

    .line 290
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->text_color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->b:I

    .line 291
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 294
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    .line 295
    .local v0, "obj":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    goto :goto_0

    .line 297
    .end local v0    # "obj":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->notifyDataSetChanged()V

    .line 298
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 301
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    .line 303
    .local v0, "obj":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    iget-boolean v2, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->f:Ljava/util/List;

    iget-object v3, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0    # "obj":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->f:Ljava/util/List;

    return-object v1
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 314
    .local v0, "index":I
    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    .line 315
    .local v2, "obj":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    iget-object v4, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->f:Ljava/util/List;

    iget-object v5, v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 316
    .local v1, "isChecked":Z
    iput-boolean v1, v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    .line 317
    iget-boolean v4, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->d:Z

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 318
    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->e:I

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 321
    goto :goto_0

    .line 323
    .end local v1    # "isChecked":Z
    .end local v2    # "obj":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->notifyDataSetChanged()V

    .line 324
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lfxq;->getCount()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 343
    if-nez p2, :cond_0

    .line 344
    new-instance v0, Lcom/alibaba/android/user/widget/LabelButton;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/user/widget/LabelButton;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "label":Lcom/alibaba/android/user/widget/LabelButton;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    .line 351
    .local v1, "labelObject":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    iget-object v2, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelButton;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    iget-boolean v2, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelButton;->setChecked(Z)V

    .line 354
    iget-boolean v2, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->b:I

    :goto_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelButton;->setTextColor(I)V

    .line 355
    new-instance v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;Lcom/alibaba/android/user/widget/LabelButton;I)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 372
    return-object v0

    .end local v0    # "label":Lcom/alibaba/android/user/widget/LabelButton;
    .end local v1    # "labelObject":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    :cond_0
    move-object v0, p2

    .line 346
    check-cast v0, Lcom/alibaba/android/user/widget/LabelButton;

    .restart local v0    # "label":Lcom/alibaba/android/user/widget/LabelButton;
    goto :goto_0

    .line 354
    .restart local v1    # "labelObject":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    :cond_1
    iget v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->a:I

    goto :goto_1
.end method
