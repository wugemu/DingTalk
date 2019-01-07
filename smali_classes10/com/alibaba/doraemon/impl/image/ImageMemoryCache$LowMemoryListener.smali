.class Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LowMemoryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;JLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$LowMemoryListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-static {v0, v2, v3}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;J)V

    .line 158
    return-void
.end method
