.class public abstract Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BaseMultipleModeFragment.java"


# instance fields
.field public a:Lbhx;

.field b:Z

.field c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 53
    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->b:Z

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c()V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->d()V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "choosingMode"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    if-ne v0, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iput p1, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->a:Lbhx;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->a:Lbhx;

    invoke-interface {v0, p1}, Lbhx;->a(I)V

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->b(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "lazyReload"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->d:Z

    .line 37
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->d:Z

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->g()V

    .line 40
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->d:Z

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->d:Z

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->g()V

    .line 50
    :cond_0
    return-void
.end method

.method protected abstract b(I)V
.end method

.method protected abstract c()V
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->b:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->b:Z

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->f()V

    .line 76
    :cond_0
    return-void
.end method

.method protected abstract f()V
.end method
