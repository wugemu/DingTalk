.class public abstract Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;
.super Ljava/lang/Object;
.source "ErrorMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/upload/ErrorMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EStatus"
.end annotation


# static fields
.field private static final ALL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I

.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->ALL:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v1, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->ALL:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    iput p1, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code:I

    .line 62
    iput-object p2, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->ALL:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static valueOf(I)Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 49
    sget-object v1, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->ALL:Ljava/util/Map;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->ALL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 83
    .local v0, "status":Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;
    iget v3, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code:I

    iget v4, v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason:Ljava/lang/String;

    iget-object v4, v0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public reason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
