.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 364
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 365
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$1;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;)V

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    .line 409
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;)V

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    goto :goto_0
.end method
