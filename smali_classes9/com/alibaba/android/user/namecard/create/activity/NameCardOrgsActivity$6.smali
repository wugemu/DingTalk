.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;
.super Ljava/lang/Object;
.source "NameCardOrgsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 284
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 261
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 265
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "string":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;J)J

    .line 267
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 271
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    const-string/jumbo v3, "org_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;J)J

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Ljava/util/List;)V

    .line 1034
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->d(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lftf;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .line 1033
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1037
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-static {}, Lcoh;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lftf$1;

    invoke-direct {v6, v2, v1}, Lftf$1;-><init>(Lftf;Ljava/lang/String;)V

    const-class v2, Lcma;

    invoke-static {v6, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
