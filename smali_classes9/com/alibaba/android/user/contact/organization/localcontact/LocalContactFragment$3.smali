.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "LocalContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$3;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$3;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->b(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)Lfjp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$3;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1251
    sget-object v2, Lfjp;->a:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lfjp$3;

    invoke-direct {v3, v0, v1}, Lfjp$3;-><init>(Lfjp;Landroid/app/Activity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method
