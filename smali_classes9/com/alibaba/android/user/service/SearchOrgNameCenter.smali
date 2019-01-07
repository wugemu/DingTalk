.class public abstract Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.super Ljava/lang/Object;
.source "SearchOrgNameCenter.java"

# interfaces
.implements Lfwa$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;,
        Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfwa$b",
        "<",
        "Lccl;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field protected b:Lfwa$a;

.field public c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Z

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 2
    .param p1, "clearableAutoCompleteTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->i:Z

    .line 45
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->j:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$4;-><init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->k:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setClearAble(Z)V

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 53
    new-instance v0, Lfwb;

    invoke-direct {v0, p2, p0}, Lfwb;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfwa$b;)V

    .line 1058
    new-instance v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    new-instance v1, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$1;-><init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V

    .line 1287
    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    new-instance v1, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;-><init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    new-instance v1, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$3;-><init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .prologue
    .line 31
    .line 3297
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->e:Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
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
            "<",
            "Lccl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lccl;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 150
    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->i:Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lfwa$a;

    .line 3124
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->b:Lfwa$a;

    .line 31
    return-void
.end method
