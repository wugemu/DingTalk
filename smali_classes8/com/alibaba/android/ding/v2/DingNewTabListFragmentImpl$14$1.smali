.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14$1;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Laxs;

    move-result-object v0

    invoke-virtual {v0}, Laxs;->notifyDataSetChanged()V

    goto :goto_0
.end method
