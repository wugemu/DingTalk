.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$1;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$1;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$1;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lhdf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$1;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lhdf;

    move-result-object v0

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 249
    :cond_0
    return-void
.end method
