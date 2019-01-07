.class public final Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
.super Ljava/lang/Object;
.source "FloatWindowObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x334c4d034e9c59f2L


# instance fields
.field public bizId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bizId"
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bizType"
    .end annotation
.end field

.field public cid:Ljava/lang/String;

.field public extension:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;)I
    .locals 8
    .param p1, "another"    # Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    iget v3, p0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    iget v4, p1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sub-int/2addr v3, v4

    int-to-long v0, v3

    .line 44
    .local v0, "ret":J
    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->compareTo(Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;)I

    move-result v0

    return v0
.end method

.method public final toIDLModel()Ldck;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    new-instance v0, Ldck;

    invoke-direct {v0}, Ldck;-><init>()V

    .line 59
    .local v0, "model":Ldck;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Ldck;->a:Ljava/lang/String;

    .line 60
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldck;->b:Ljava/lang/Integer;

    .line 61
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->bizId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldck;->c:Ljava/lang/Long;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->bizType:Ljava/lang/String;

    iput-object v1, v0, Ldck;->d:Ljava/lang/String;

    .line 63
    return-object v0
.end method
