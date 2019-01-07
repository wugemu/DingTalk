.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1$1;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;

    iget-object v0, v0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 189
    return-void
.end method
