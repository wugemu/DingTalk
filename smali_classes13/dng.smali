.class public final Ldng;
.super Ljava/lang/Object;
.source "MdRenderCacher.java"


# instance fields
.field public a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lldd;",
            "Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldnc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldnc",
            "<",
            "Lldd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldnc;Landroid/util/LruCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldnc",
            "<",
            "Lldd;",
            ">;",
            "Landroid/util/LruCache",
            "<",
            "Lldd;",
            "Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "mdCache":Ldnc;, "Ldnc<Lldd;>;"
    .local p2, "imageFormatLruCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Lldd;Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "MdRenderCacher params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    iput-object p1, p0, Ldng;->b:Ldnc;

    .line 25
    iput-object p2, p0, Ldng;->a:Landroid/util/LruCache;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(J)Lldd;
    .locals 1
    .param p1, "messageId"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Ldng;->b:Ldnc;

    invoke-virtual {v0, p1, p2}, Ldnc;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldd;

    return-object v0
.end method

.method public final a(JLldd;)V
    .locals 1
    .param p1, "messageId"    # J
    .param p3, "node"    # Lldd;

    .prologue
    .line 38
    iget-object v0, p0, Ldng;->b:Ldnc;

    invoke-virtual {v0, p1, p2, p3}, Ldnc;->a(JLjava/lang/Object;)V

    .line 39
    return-void
.end method
