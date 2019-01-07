.class final Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;
.super Ljava/lang/Object;
.source "PhotoViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;I)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$3;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->b()V

    .line 261
    return-void
.end method
