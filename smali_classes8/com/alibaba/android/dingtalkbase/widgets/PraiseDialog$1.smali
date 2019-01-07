.class final Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;
.super Ljava/lang/Object;
.source "PraiseDialog.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "rating"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;I)I

    .line 179
    const/4 v0, 0x4

    if-lt p1, v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;I)I

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    move-result-object v0

    .line 1060
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->g:Z

    .line 182
    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcig$j;->dt_ratings_window_share_button_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->c(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;Z)Z

    .line 195
    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcig$j;->dt_ratings_window_rating_button_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;I)I

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcig$j;->dt_ratings_window_feedback_button_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
