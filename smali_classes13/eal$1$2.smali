.class final Leal$1$2;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "PushTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leal$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

.field final synthetic b:Leal$1;


# direct methods
.method constructor <init>(Leal$1;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V
    .locals 0
    .param p1, "this$1"    # Leal$1;

    .prologue
    .line 306
    iput-object p1, p0, Leal$1$2;->b:Leal$1;

    iput-object p2, p0, Leal$1$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    const-string/jumbo v0, "PushTaskManager"

    const-string/jumbo v1, "[showGlobalRemindPopupWindow]show"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    instance-of v0, p2, Lcrn;

    if-nez v0, :cond_0

    .line 316
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2, p1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object v0, p2

    .line 318
    check-cast v0, Lcrn;

    iget-object v1, p0, Leal$1$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-virtual {v0, v1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 319
    return-object p2
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 327
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method
