.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadResult"
.end annotation


# instance fields
.field public mBitmapDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

.field public mErrorCode:I

.field public mErrorDescription:Ljava/lang/String;

.field public mImageUrl:Ljava/lang/String;

.field public mUrlKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
