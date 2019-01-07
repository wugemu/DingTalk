.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

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
    .line 469
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 470
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;)V

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    .line 514
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v2, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$2;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;)V

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    goto :goto_0
.end method
