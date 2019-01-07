.class final Lbbu$11$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu$11;


# direct methods
.method constructor <init>(Lbbu$11;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$11;

    .prologue
    .line 388
    iput-object p1, p0, Lbbu$11$1;->a:Lbbu$11;

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

    .line 401
    instance-of v0, p2, Lcrn;

    if-nez v0, :cond_0

    .line 402
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2, p1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object v0, p2

    .line 405
    check-cast v0, Lcrn;

    .line 1028
    iput-boolean v3, v0, Lcri;->b:Z

    move-object v0, p2

    .line 406
    check-cast v0, Lcrn;

    const/4 v1, 0x1

    .line 1108
    iput v1, v0, Lcrn;->c:I

    move-object v0, p2

    .line 407
    check-cast v0, Lcrn;

    iget-object v1, p0, Lbbu$11$1;->a:Lbbu$11;

    iget-object v1, v1, Lbbu$11;->b:Lbfq;

    .line 2060
    iget-object v1, v1, Lbfq;->b:Ljava/lang/String;

    .line 407
    iget-object v2, p0, Lbbu$11$1;->a:Lbbu$11;

    iget-object v2, v2, Lbbu$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {p1, v1, v2}, Lbky;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 408
    invoke-static {v3}, Lbjz;->f(Z)V

    .line 409
    return-object p2
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 417
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 396
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbu$11$1;->a:Lbbu$11;

    iget-object v1, v1, Lbbu$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    .line 391
    const/4 v0, 0x1

    return v0
.end method
