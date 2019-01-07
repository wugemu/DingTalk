.class public Lcom/alibaba/android/dingtalkim/models/AttractModelObject;
.super Ljava/lang/Object;
.source "AttractModelObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cid:Ljava/lang/String;

.field public extParam:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalkim/models/AttractModelObject;)Ldqk;
    .locals 2
    .param p0, "attractModelObject"    # Lcom/alibaba/android/dingtalkim/models/AttractModelObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ldqk;

    invoke-direct {v0}, Ldqk;-><init>()V

    .line 26
    .local v0, "attractModel":Ldqk;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->cid:Ljava/lang/String;

    iput-object v1, v0, Ldqk;->a:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->source:Ljava/lang/String;

    iput-object v1, v0, Ldqk;->c:Ljava/lang/String;

    .line 28
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldqk;->b:Ljava/lang/Integer;

    .line 29
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->extParam:Ljava/lang/String;

    iput-object v1, v0, Ldqk;->d:Ljava/lang/String;

    goto :goto_0
.end method
