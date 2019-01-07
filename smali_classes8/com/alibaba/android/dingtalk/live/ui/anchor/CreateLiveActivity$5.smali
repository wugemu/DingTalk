.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;
.super Lbyi$a;
.source "CreateLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->b:Z

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 354
    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1358
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->a:Z

    if-nez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v0

    invoke-virtual {v0}, Ljjx;->e()V

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->c:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;->b:Z

    invoke-virtual {v0, v1}, Ljjx;->b(Z)V

    .line 354
    :cond_1
    return-void
.end method
