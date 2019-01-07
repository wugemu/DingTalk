.class final Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;
.super Ljava/lang/Object;
.source "FallingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$2;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->invalidate()V

    .line 194
    return-void
.end method
