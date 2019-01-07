.class final Leni$1;
.super Ljava/lang/Object;
.source "AssureHeaderPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leni;->a(Ljava/lang/String;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Leni;


# direct methods
.method constructor <init>(Leni;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Leni;

    .prologue
    .line 110
    iput-object p1, p0, Leni$1;->b:Leni;

    iput-object p2, p0, Leni$1;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 110
    check-cast p1, Ljava/util/Collection;

    .line 1113
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    iget-object v0, p0, Leni$1;->b:Leni;

    .line 2043
    iget v1, v0, Leni;->d:I

    .line 3190
    if-eqz p1, :cond_1

    .line 3191
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 3192
    if-eqz v0, :cond_0

    .line 3196
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getBaseModel()Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 3197
    if-eqz v0, :cond_0

    .line 3200
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    goto :goto_0

    .line 1118
    :cond_1
    iget-object v0, p0, Leni$1;->b:Leni;

    .line 4043
    iput-object p1, v0, Leni;->a:Ljava/util/Collection;

    .line 1119
    iget-object v0, p0, Leni$1;->b:Leni;

    .line 5043
    iget-object v0, v0, Leni;->c:Landroid/app/Activity;

    .line 1120
    iget-object v1, p0, Leni$1;->b:Leni;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6043
    iput-object v2, v1, Leni;->b:Landroid/widget/LinearLayout;

    .line 1121
    iget-object v1, p0, Leni$1;->b:Leni;

    .line 7043
    iget-object v1, v1, Leni;->b:Landroid/widget/LinearLayout;

    .line 1121
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1122
    iget-object v1, p0, Leni$1;->b:Leni;

    .line 8043
    iget-object v1, v1, Leni;->b:Landroid/widget/LinearLayout;

    .line 1122
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1124
    iget-object v0, p0, Leni$1;->b:Leni;

    .line 9043
    iget-object v0, v0, Leni;->c:Landroid/app/Activity;

    .line 1124
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->header_search_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1125
    sget v0, Lemt$e;->tv_search_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1126
    sget v2, Lemt$g;->dt_search_assure_tip:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1127
    iget-object v0, p0, Leni$1;->b:Leni;

    .line 10043
    iget-object v0, v0, Leni;->b:Landroid/widget/LinearLayout;

    .line 1127
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1131
    iget-object v0, p0, Leni$1;->a:Landroid/widget/ListView;

    iget-object v1, p0, Leni$1;->b:Leni;

    .line 11043
    iget-object v1, v1, Leni;->b:Landroid/widget/LinearLayout;

    .line 1131
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1133
    iget-object v0, p0, Leni$1;->b:Leni;

    invoke-static {v0, p1}, Leni;->a(Leni;Ljava/util/Collection;)V

    .line 1135
    iget-object v0, p0, Leni$1;->b:Leni;

    iget-object v1, p0, Leni$1;->b:Leni;

    .line 12043
    iget-object v1, v1, Leni;->b:Landroid/widget/LinearLayout;

    .line 1135
    invoke-static {v0, v1, p1}, Leni;->a(Leni;Landroid/view/ViewGroup;Ljava/util/Collection;)V

    .line 110
    :cond_2
    return-void
.end method
