.class final Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity$1;
.super Ljava/lang/Object;
.source "BaseUIActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;->compatFixSystemWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity$1;->a:Lcom/alibaba/android/dingtalkui/activity/BaseUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p2, v1, v1, v1, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    .line 510
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 511
    return-object p2
.end method
