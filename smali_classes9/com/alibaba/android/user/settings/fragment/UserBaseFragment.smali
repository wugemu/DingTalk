.class public abstract Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "UserBaseFragment.java"


# instance fields
.field private a:Lcom/alibaba/doraemon/trace/Trace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1075
    const-string/jumbo v0, "user_ct"

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->a:Lcom/alibaba/doraemon/trace/Trace;

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/UserBaseFragment;->a:Lcom/alibaba/doraemon/trace/Trace;

    invoke-static {v0}, Lfxo;->a(Lcom/alibaba/doraemon/trace/Trace;)V

    .line 81
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 82
    return-void
.end method
