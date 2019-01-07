.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$5;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Lemm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$5;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$5;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 222
    :cond_0
    return-void
.end method
