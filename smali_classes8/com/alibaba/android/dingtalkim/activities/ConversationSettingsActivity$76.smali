.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 4701
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10
    .param p1, "t"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 4704
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->av(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ax(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 4706
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ay(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->getHeight()I

    move-result v2

    .line 4707
    .local v2, "height":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ay(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4708
    .local v1, "childView":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;II)V

    .line 4710
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v4

    neg-int v5, p1

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->az(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 4712
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->az(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5, v9, v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;FFF)F

    move-result v3

    .line 4713
    .local v3, "ratio":F
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sub-float v5, v8, v3

    invoke-static {v4, v5, v9, v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;FFF)F

    move-result v0

    .line 4714
    .local v0, "alpha":F
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4715
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4717
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->av(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ax(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Landroid/view/View;Landroid/view/View;F)V

    .line 4718
    return-void
.end method
