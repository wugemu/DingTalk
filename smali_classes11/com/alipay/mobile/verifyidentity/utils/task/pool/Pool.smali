.class public abstract Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field protected final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->a:I

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->a:I

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 48
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;->b:I

    .line 50
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;

    if-eqz v0, :cond_2

    .line 51
    check-cast p1, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;

    invoke-interface {p1}, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;->a()V

    .line 52
    :cond_2
    return-void
.end method
