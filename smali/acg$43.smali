.class final Lacg$43;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->b(Landroid/content/Context;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcma;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lacg$43;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p2, p0, Lacg$43;->b:Lcma;

    iput-object p3, p0, Lacg$43;->c:Landroid/content/Context;

    iput p4, p0, Lacg$43;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 412
    .line 1415
    iget-object v0, p0, Lacg$43;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lacg$43;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1419
    :cond_0
    invoke-static {v2}, Lacg;->a(Z)V

    .line 1420
    iget-object v0, p0, Lacg$43;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, p0, Lacg$43;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1424
    :cond_1
    iget-object v0, p0, Lacg$43;->c:Landroid/content/Context;

    iget v1, p0, Lacg$43;->d:I

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;IZ)V

    .line 412
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lacg$43;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lacg$43;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 437
    :cond_0
    invoke-static {v2}, Lacg;->a(Z)V

    .line 439
    const-string/jumbo v0, "_#DINGTALK#_1234"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "_#DINGTALK#_1234"

    .line 440
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lacg$43;->b:Lcma;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lacg$43;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lacg$43;->c:Landroid/content/Context;

    iget v1, p0, Lacg$43;->d:I

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;IZ)V

    .line 452
    :goto_0
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lacg$43;->b:Lcma;

    if-eqz v0, :cond_3

    .line 447
    iget-object v0, p0, Lacg$43;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_3
    const-string/jumbo v0, "navToMailList, checkLogin:"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 430
    return-void
.end method
