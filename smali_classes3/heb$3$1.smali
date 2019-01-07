.class final Lheb$3$1;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lheb$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lheb$3;


# direct methods
.method constructor <init>(Lheb$3;)V
    .locals 0
    .param p1, "this$1"    # Lheb$3;

    .prologue
    .line 209
    iput-object p1, p0, Lheb$3$1;->a:Lheb$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lheb$3$1;->a:Lheb$3;

    iget-object v0, v0, Lheb$3;->c:Lheb;

    invoke-static {v0}, Lheb;->k(Lheb;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lheb$3$1;->a:Lheb$3;

    iget-object v0, v0, Lheb$3;->c:Lheb;

    invoke-static {v0}, Lheb;->l(Lheb;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 215
    :cond_0
    return-void
.end method
