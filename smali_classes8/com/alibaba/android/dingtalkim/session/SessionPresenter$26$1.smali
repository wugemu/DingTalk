.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjo$b;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;Lcjo$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;->a:Lcjo$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 794
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 794
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26$1;->a:Lcjo$b;

    iget-object v0, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1, v0}, Ldyy$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 795
    return-void
.end method
