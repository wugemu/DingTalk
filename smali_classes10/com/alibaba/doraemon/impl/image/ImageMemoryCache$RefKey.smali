.class public Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefKey"
.end annotation


# instance fields
.field public mDisplayMode:I

.field public mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
