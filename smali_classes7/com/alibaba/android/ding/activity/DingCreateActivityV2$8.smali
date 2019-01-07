.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 398
    return-void
.end method

.method public final a(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 374
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-static {v0, v1, v2, v3}, Lbki;->a(Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 375
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-static {v0}, Lbki;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->d(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-static {v0, v1, v2, v3}, Lbki;->a(Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 380
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->e(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingAttachmentView;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-static {v0, v1, v2, v3}, Lbki;->a(Landroid/view/View;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e()V

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b()V

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$8;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->c()V

    goto :goto_0
.end method
