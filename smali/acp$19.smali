.class final Lacp$19;
.super Lcmi;
.source "MailDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lacp$c;

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lacp$c;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 909
    iput-object p1, p0, Lacp$19;->c:Lacp;

    iput-object p2, p0, Lacp$19;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lacp$19;->b:Lacp$c;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 931
    const-string/jumbo v0, "queryPopRule"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lacp$19;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Lacp$19;->b:Lacp$c;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lacp$19;->b:Lacp$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lacp$c;->a(Z)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 909
    check-cast p1, Laat;

    .line 1912
    iget-object v0, p0, Lacp$19;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    iget-object v0, p0, Lacp$19;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 2114
    invoke-static {v0}, Lcms;->s(Landroid/content/Context;)Z

    move-result v0

    .line 1916
    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lacp$19;->c:Lacp;

    iget-object v1, p0, Lacp$19;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, p1}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Laat;)Z

    move-result v0

    .line 1924
    iget-object v1, p0, Lacp$19;->b:Lacp$c;

    if-eqz v1, :cond_0

    .line 1925
    iget-object v1, p0, Lacp$19;->b:Lacp$c;

    invoke-interface {v1, v0}, Lacp$c;->a(Z)V

    .line 909
    :cond_0
    return-void
.end method
