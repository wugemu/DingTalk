.class final Lcom/alibaba/android/search/utils/SearchUtils$5;
.super Ljava/lang/Object;
.source "SearchUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1156
    iget-object v2, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->a:Landroid/view/View;

    sget v3, Lemt$e;->tv_recall_tip_keyword:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1157
    .local v0, "keywordView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->a:Landroid/view/View;

    .line 1158
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->a:Landroid/view/View;

    .line 1159
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->b:Landroid/widget/TextView;

    .line 1160
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 1161
    .local v1, "kwViewWidth":I
    iget-object v2, p0, Lcom/alibaba/android/search/utils/SearchUtils$5;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1163
    return-void
.end method
