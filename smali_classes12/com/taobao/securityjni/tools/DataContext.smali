.class public Lcom/taobao/securityjni/tools/DataContext;
.super Ljava/lang/Object;
.source "DataContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public category:I

.field public extData:[B

.field public index:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 46
    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->category:I

    .line 47
    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->type:I

    .line 48
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "extData"    # [B

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 52
    iput-object p2, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 53
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "extData"    # [B
    .param p3, "cate"    # I
    .param p4, "type"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 57
    iput-object p2, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 58
    iput p3, p0, Lcom/taobao/securityjni/tools/DataContext;->category:I

    .line 59
    iput p4, p0, Lcom/taobao/securityjni/tools/DataContext;->type:I

    .line 60
    return-void
.end method
