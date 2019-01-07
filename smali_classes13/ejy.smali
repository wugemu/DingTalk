.class public Lejy;
.super Ljava/lang/Object;
.source "OAUndoObject.java"


# instance fields
.field public a:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Leka;)Lejy;
    .locals 4
    .param p0, "model"    # Leka;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lejy;

    invoke-direct {v0}, Lejy;-><init>()V

    .line 30
    .local v0, "obj":Lejy;
    iget-object v1, p0, Leka;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    iput v1, v0, Lejy;->a:I

    .line 31
    iget-object v1, p0, Leka;->b:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    iput-wide v2, v0, Lejy;->b:J

    .line 32
    iget-object v1, p0, Leka;->c:Ljava/util/Map;

    iput-object v1, v0, Lejy;->c:Ljava/util/Map;

    goto :goto_0
.end method
