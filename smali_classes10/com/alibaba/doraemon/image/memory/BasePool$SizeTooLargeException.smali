.class public Lcom/alibaba/doraemon/image/memory/BasePool$SizeTooLargeException;
.super Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;
.source "BasePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/image/memory/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeTooLargeException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Object;

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    .line 809
    return-void
.end method
