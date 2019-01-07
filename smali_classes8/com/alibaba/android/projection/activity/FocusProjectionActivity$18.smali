.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 1597
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "pwp_client"

    invoke-virtual {v0, v1}, Lcjn;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1599
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Check dynamic so started "

    aput-object v4, v2, v3

    .line 1600
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1599
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 1604
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_0
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Check dynamic so fail :"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 1625
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1624
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1594
    .line 2630
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Loading "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->I(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1594
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1594
    .line 3608
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3609
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 3610
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 3612
    :cond_0
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Check dynamic so success"

    aput-object v3, v2, v4

    .line 3613
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3612
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3614
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->a:Lcma;

    if-eqz v0, :cond_1

    .line 3615
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$18;->a:Lcma;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1594
    :cond_1
    return-void
.end method
