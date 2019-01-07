.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3443
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 4
    .param p1, "isShowBox"    # Z
    .param p2, "showBoxGuide"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3446
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->V(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->V(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 3447
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->V(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3448
    .local v1, "originalLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 3449
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3450
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    .line 3451
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3457
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->V(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3460
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "originalLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 3452
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "originalLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz p2, :cond_2

    .line 3453
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 3455
    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method
