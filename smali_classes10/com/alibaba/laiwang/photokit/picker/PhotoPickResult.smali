.class public Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
.super Ljava/lang/Object;
.source "PhotoPickResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field public extension:Ljava/io/Serializable;

.field public isCompressed:Z

.field public originUrl:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isCompressed"    # Z
    .param p3, "type"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    .line 60
    iput p3, p0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 61
    return-void
.end method
