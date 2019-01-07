.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$8;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$8;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$8;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->l()V

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$8;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 1804
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    .line 350
    return-void
.end method
