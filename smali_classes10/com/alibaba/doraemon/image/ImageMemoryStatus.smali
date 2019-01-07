.class public Lcom/alibaba/doraemon/image/ImageMemoryStatus;
.super Ljava/lang/Object;
.source "ImageMemoryStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;,
        Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;
    }
.end annotation


# instance fields
.field public mBitmapStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/image/ImageMemoryStatus$BitmapStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mBitmapsSize:J

.field public mImageBytesSize:J

.field public mImageBytesStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/image/ImageMemoryStatus$ImageBytesStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method
