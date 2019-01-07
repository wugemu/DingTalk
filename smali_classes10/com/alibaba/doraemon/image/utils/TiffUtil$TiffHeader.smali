.class Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;
.super Ljava/lang/Object;
.source "TiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/image/utils/TiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TiffHeader"
.end annotation


# instance fields
.field byteOrder:I

.field firstIfdOffset:I

.field isLittleEndian:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/image/utils/TiffUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/image/utils/TiffUtil$1;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/utils/TiffUtil$TiffHeader;-><init>()V

    return-void
.end method
