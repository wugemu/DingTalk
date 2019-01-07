.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2$2;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lbhs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2$2;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2$2;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;)V

    .line 653
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 657
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingListFragment]eager load, request more failed"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2$2;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;)V

    .line 659
    return-void
.end method
