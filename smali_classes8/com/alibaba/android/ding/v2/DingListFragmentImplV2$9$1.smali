.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 924
    .line 1927
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Z)Z

    .line 1928
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 924
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 937
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Z)Z

    .line 939
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 940
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 933
    return-void
.end method
