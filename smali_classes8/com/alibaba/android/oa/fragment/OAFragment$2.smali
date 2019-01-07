.class final Lcom/alibaba/android/oa/fragment/OAFragment$2;
.super Ljava/lang/Object;
.source "OAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/OAFragment;->setUserVisibleHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/oa/fragment/OAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/OAFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/OAFragment;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/OAFragment$2;->b:Lcom/alibaba/android/oa/fragment/OAFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/oa/fragment/OAFragment$2;->a:Z

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
    .line 420
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment$2;->b:Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Lcom/alibaba/android/oa/fragment/OAFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment$2;->b:Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->b(Lcom/alibaba/android/oa/fragment/OAFragment;)Lcom/alibaba/android/oa/fragment/OAContentFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment$2;->b:Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->b(Lcom/alibaba/android/oa/fragment/OAFragment;)Lcom/alibaba/android/oa/fragment/OAContentFragment;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/oa/fragment/OAFragment$2;->a:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->c(Z)V

    .line 423
    :cond_0
    return-void
.end method
