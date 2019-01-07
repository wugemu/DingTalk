.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$3;
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
    .line 816
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$3;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 819
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$3;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$3;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->f(Lcom/alibaba/android/user/external/list/ExternalListFragment;)Lfnq;

    move-result-object v2

    invoke-virtual {v2}, Lfnq;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;Ljava/util/ArrayList;)V

    .line 820
    return-void
.end method
