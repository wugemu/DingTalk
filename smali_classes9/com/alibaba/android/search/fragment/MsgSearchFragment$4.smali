.class final Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;
.super Ljava/lang/Object;
.source "MsgSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/MsgSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->a:Landroid/widget/TextView;

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
    .line 227
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->c(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .line 228
    invoke-static {v2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->c(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->a:Landroid/widget/TextView;

    .line 229
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 230
    .local v0, "kwViewWidth":I
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->e(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "\" "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->d(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->e(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 232
    return-void
.end method
