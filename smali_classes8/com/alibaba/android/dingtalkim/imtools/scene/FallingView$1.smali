.class public final Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;
.super Ljava/lang/Object;
.source "FallingView.java"

# interfaces
.implements Ldme$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Ljava/util/List;)Ljava/util/List;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->a()V

    .line 133
    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView$1;->a:Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;->b(Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
