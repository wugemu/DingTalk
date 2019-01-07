.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 977
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    .line 978
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I

    .line 980
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->a:Landroid/view/View;

    .line 981
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 982
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 983
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 984
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    :cond_0
    return-void
.end method
