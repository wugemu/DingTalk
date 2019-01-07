.class final Lacp$23;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Lcma;


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
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Z

.field final synthetic c:Lacp;


# direct methods
.method constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 1102
    iput-object p1, p0, Lacp$23;->c:Lacp;

    iput-object p2, p0, Lacp$23;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-boolean p3, p0, Lacp$23;->b:Z

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

    .line 1102
    check-cast p1, Ljava/lang/String;

    .line 2105
    const-string/jumbo v0, "MailDialogManager"

    const-string/jumbo v1, "isSubscribedCainiao receive: "

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2107
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2108
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe_is_frist_time"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2109
    :cond_0
    :goto_0
    return-void

    .line 2110
    :cond_1
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2111
    const-string/jumbo v0, "pref_key_mail_cainiao_subscribe"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2113
    :cond_2
    iget-object v0, p0, Lacp$23;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp$23;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp$23;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 3114
    invoke-static {v0}, Lcms;->s(Landroid/content/Context;)Z

    move-result v0

    .line 2114
    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lacp$23;->c:Lacp;

    iget-object v1, p0, Lacp$23;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-boolean v2, p0, Lacp$23;->b:Z

    invoke-static {v0, v1, v2}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1125
    const-string/jumbo v0, "MailDialogManager"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1121
    return-void
.end method
