.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$6;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$6;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$6;->b:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$6;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;Landroid/view/View;)V

    .line 1007
    return-void
.end method
