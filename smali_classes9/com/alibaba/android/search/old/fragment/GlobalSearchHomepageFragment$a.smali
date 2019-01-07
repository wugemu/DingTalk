.class final Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;
.super Lemv;
.source "GlobalSearchHomepageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;Landroid/app/Activity;)V
    .locals 0
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    .line 314
    invoke-direct {p0, p2}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 321
    if-nez p2, :cond_2

    .line 322
    new-instance v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->c:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;-><init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;B)V

    .line 323
    .local v1, "holder":Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->b:Landroid/app/Activity;

    if-nez v2, :cond_1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lemt$f;->item_homepage_category:I

    const/4 v4, 0x0

    .line 324
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 325
    sget v2, Lemt$e;->iv_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;->a:Landroid/widget/ImageView;

    .line 326
    sget v2, Lemt$e;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;->b:Landroid/widget/TextView;

    .line 327
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 332
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;

    .line 333
    .local v0, "data":Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;
    if-eqz v0, :cond_0

    .line 334
    iget-object v2, v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;->a:Landroid/widget/ImageView;

    iget v3, v0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v2, v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    new-instance v2, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a$1;-><init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    return-object p2

    .line 323
    .end local v0    # "data":Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$a;->b:Landroid/app/Activity;

    goto :goto_0

    .line 329
    .end local v1    # "holder":Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;

    .restart local v1    # "holder":Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$c;
    goto :goto_1
.end method
