.class public final Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;
.super Ljava/lang/Object;
.source "BaseForwardHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;, "Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a<TT;>;"
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    .line 349
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 360
    .local p0, "this":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;, "Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;, "Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 370
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;, "Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$a;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 356
    :cond_0
    return-void
.end method
