.class public final Lfwb;
.super Ljava/lang/Object;
.source "SearchOrgNamePresenter.java"

# interfaces
.implements Lfwa$a;


# instance fields
.field a:Lfwa$b;

.field private b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfwa$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lfwa$b;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lfwb;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 26
    iput-object p2, p0, Lfwb;->a:Lfwa$b;

    .line 27
    iget-object v0, p0, Lfwb;->a:Lfwa$b;

    invoke-interface {v0, p0}, Lfwa$b;->setPresenter(Lcjd;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 34
    :cond_0
    iget-object v0, p0, Lfwb;->a:Lfwa$b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lfwa$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 57
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-static {}, Lcoh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lfwb$1;

    invoke-direct {v0, p0, p1}, Lfwb$1;-><init>(Lfwb;Ljava/lang/String;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lfwb;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lfwb;->a:Lfwa$b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lfwa$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-static {}, Lcoh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lfwb$2;

    invoke-direct {v0, p0, p1}, Lfwb$2;-><init>(Lfwb;Ljava/lang/String;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lfwb;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lfwb;->a:Lfwa$b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lfwa$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-static {}, Lcoh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lfwb$3;

    invoke-direct {v0, p0, p1}, Lfwb$3;-><init>(Lfwb;Ljava/lang/String;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lfwb;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lfwb;->a:Lfwa$b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lfwa$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 141
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-static {}, Lcoh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lfwb$4;

    invoke-direct {v0, p0, p1}, Lfwb$4;-><init>(Lfwb;Ljava/lang/String;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lfwb;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, p1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
