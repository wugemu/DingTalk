.class final Lbbu$3$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu$3;


# direct methods
.method constructor <init>(Lbbu$3;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$3;

    .prologue
    .line 507
    iput-object p1, p0, Lbbu$3$1;->a:Lbbu$3;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 520
    instance-of v0, p2, Lcrn;

    if-nez v0, :cond_0

    .line 521
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2, p1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object v0, p2

    .line 524
    check-cast v0, Lcrn;

    .line 1028
    iput-boolean v3, v0, Lcri;->b:Z

    .line 525
    iget-object v0, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v0, v0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 526
    check-cast v0, Lcrn;

    const/4 v1, 0x3

    .line 1108
    iput v1, v0, Lcrn;->c:I

    :cond_1
    :goto_0
    move-object v0, p2

    .line 531
    check-cast v0, Lcrn;

    iget-object v1, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v1, v1, Lbbu$3;->b:Lbfd;

    .line 3062
    iget-object v1, v1, Lbfd;->b:Ljava/lang/String;

    .line 531
    iget-object v2, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v2, v2, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {p1, v1, v2}, Lbky;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 532
    iget-object v0, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v0, v0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    invoke-static {v3}, Lbjz;->d(Z)V

    .line 537
    :cond_2
    :goto_1
    return-object p2

    .line 527
    :cond_3
    iget-object v0, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v0, v0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 528
    check-cast v0, Lcrn;

    const/4 v1, 0x1

    .line 2108
    iput v1, v0, Lcrn;->c:I

    goto :goto_0

    .line 534
    :cond_4
    iget-object v0, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v0, v0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    invoke-static {v3}, Lbjz;->h(Z)V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 542
    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 545
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 515
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbu$3$1;->a:Lbbu$3;

    iget-object v1, v1, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method
