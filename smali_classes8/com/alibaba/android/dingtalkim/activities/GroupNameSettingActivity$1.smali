.class final Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;
.super Ljava/lang/Object;
.source "GroupNameSettingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 99
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 100
    .local v3, "screenHeight":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 101
    .local v0, "heightDifference":I
    const/16 v4, 0x12c

    if-le v0, v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 104
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->a:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;

    const-string/jumbo v5, "pref_keyboard_height"

    invoke-static {v4, v5, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 106
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method
