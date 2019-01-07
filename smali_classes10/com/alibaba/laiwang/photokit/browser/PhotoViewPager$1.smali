.class final Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$1;
.super Ljava/lang/Object;
.source "PhotoViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    check-cast p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    check-cast p2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;

    .line 1135
    iget v0, p1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    iget v1, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$b;->b:I

    sub-int/2addr v0, v1

    .line 132
    return v0
.end method
