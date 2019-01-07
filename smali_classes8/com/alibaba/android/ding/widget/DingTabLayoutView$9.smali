.class public final Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;
.super Ljava/lang/Object;
.source "DingTabLayoutView.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->a:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 519
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 525
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 492
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 488
    check-cast p1, Lifx;

    .line 1496
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$1;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;Lifx;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method
