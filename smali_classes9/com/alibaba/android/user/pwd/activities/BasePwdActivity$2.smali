.class final Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;
.super Ljava/lang/Object;
.source "BasePwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;Z)Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;->a:Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->b()V

    .line 151
    :cond_0
    return-void
.end method
