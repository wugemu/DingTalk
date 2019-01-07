.class public abstract Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;
.super Landroid/widget/RelativeLayout;
.source "IMBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InnerView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/View$OnTouchListener;

.field private b:Lga;

.field private final c:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field public mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 183
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 187
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->a:Landroid/view/View$OnTouchListener;

    .line 214
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->c:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->getLayout()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1193
    new-instance v0, Lga;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->c:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Lga;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->b:Lga;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;)Lga;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->b:Lga;

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/Object;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 202
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView<TT;>;"
    return-void
.end method

.method public abstract display(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected getClickData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLayout()I
.end method

.method public abstract removeFromParent()V
.end method

.method public setInnerViewClickListener(Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    .prologue
    .line 176
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    .line 177
    return-void
.end method
