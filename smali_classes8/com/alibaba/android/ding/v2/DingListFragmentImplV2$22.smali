.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lbiz;


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
    .line 587
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c()V

    .line 592
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 596
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c()V

    .line 598
    return-void
.end method
