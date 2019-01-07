.class final Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;
.super Ljava/lang/Object;
.source "HybridGuideActivity.java"

# interfaces
.implements Lhln;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlp;)V
    .locals 3
    .param p1, "pageInstance"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;Lhlp;)Lhlp;

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;)Lhlp;

    move-result-object v2

    invoke-interface {v2}, Lhlp;->a()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;)Lhlp;

    move-result-object v0

    invoke-interface {v0}, Lhlp;->b()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;->b:Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;)Lhlp;

    move-result-object v0

    invoke-interface {v0}, Lhlp;->c()V

    .line 88
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string/jumbo v0, "async init instance fail code: %s,reason : %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method
