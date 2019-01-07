.class public Lcom/laiwang/protocol/android/be$a;
.super Ljava/lang/Object;
.source "MessageConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:I

.field public c:I

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/be$a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "payload"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget v0, p0, Lcom/laiwang/protocol/android/be$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/laiwang/protocol/android/be$a;->c:I

    .line 148
    iget-object v0, p0, Lcom/laiwang/protocol/android/be$a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget v0, p0, Lcom/laiwang/protocol/android/be$a;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/laiwang/protocol/android/be$a;->b:I

    iget v1, p0, Lcom/laiwang/protocol/android/be$a;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
