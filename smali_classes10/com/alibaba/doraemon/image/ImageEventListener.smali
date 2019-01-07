.class public interface abstract Lcom/alibaba/doraemon/image/ImageEventListener;
.super Ljava/lang/Object;
.source "ImageEventListener.java"


# static fields
.field public static final ERR_AUTHENTICATION_FAILED:I = -0x4

.field public static final ERR_AUTH_ENTITY_FAILED:I = -0x8

.field public static final ERR_DECODE_FAILED:I = -0x3

.field public static final ERR_DOWNLOAD_FAILED:I = -0x2

.field public static final ERR_HTTP_421:I = -0x6

.field public static final ERR_HTTP_422:I = -0x7

.field public static final ERR_IMAGE_GONE:I = -0x5

.field public static final ERR_IMAGE_TOO_LARGE:I = -0x1

.field public static final EVENT_BITMAP_RELEASED:I = 0x5

.field public static final EVENT_DECODE_BITMAP_INTO_MEM:I = 0x4

.field public static final EVENT_DOWNLOAD_COMPLETED:I = 0x3

.field public static final EVENT_DOWNLOAD_STARTED:I = 0x2

.field public static final EVENT_FILL_IMAGEBYTES_INTO_MEM:I = 0x6

.field public static final EVENT_IMAGEBYTES_RELEASED:I = 0x7


# virtual methods
.method public abstract onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
.end method

.method public abstract onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
.end method

.method public abstract onMemoryOverflow(JJ[Ljava/lang/String;)V
.end method
