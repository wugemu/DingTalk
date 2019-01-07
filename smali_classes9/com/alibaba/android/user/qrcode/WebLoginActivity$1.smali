.class final Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/qrcode/WebLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->f()V

    .line 116
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->showLoadingDialog()V

    .line 84
    new-instance v0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1$1;-><init>(Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;)V

    .line 107
    .local v0, "apiEventListener":Lcma;
    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->a(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 110
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_management_setting_scan"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lfba;->a()Lfab;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->b(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-interface {v1, v0, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v3, v4, v1}, Lfab;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lfba;->a()Lfab;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/qrcode/WebLoginActivity;->b(Lcom/alibaba/android/user/qrcode/WebLoginActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/user/qrcode/WebLoginActivity$1;->a:Lcom/alibaba/android/user/qrcode/WebLoginActivity;

    invoke-interface {v1, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v3, v1}, Lfab;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
