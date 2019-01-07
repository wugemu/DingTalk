.class public abstract Lcom/alibaba/android/user/service/BaseSearchNameCenter;
.super Ljava/lang/Object;
.source "BaseSearchNameCenter.java"

# interfaces
.implements Lfwa$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;,
        Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfwa$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field protected k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field protected l:Lfwa$a;

.field protected m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

.field protected n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

.field protected o:Ljava/lang/String;

.field protected p:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 2
    .param p1, "clearableAutoCompleteTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->p:Z

    .line 37
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->a:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$1;-><init>(Lcom/alibaba/android/user/service/BaseSearchNameCenter;)V

    iput-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->b:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setClearAble(Z)V

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 45
    new-instance v0, Lfwb;

    invoke-direct {v0, p2, p0}, Lfwb;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfwa$b;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 63
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->p:Z

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 177
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter<TT;>;"
    check-cast p1, Lfwa$a;

    .line 2050
    iput-object p1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter;->l:Lfwa$a;

    .line 27
    return-void
.end method
