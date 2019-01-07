.class final Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;
.super Landroid/database/DataSetObserver;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;


# direct methods
.method private constructor <init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V
    .locals 0

    .prologue
    .line 2870
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .prologue
    .line 2870
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;-><init>(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a()V

    .line 2874
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$f;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a()V

    .line 2878
    return-void
.end method
