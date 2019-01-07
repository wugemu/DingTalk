.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 790
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 790
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 791
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;Lcjo$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    :cond_0
    return-void
.end method
