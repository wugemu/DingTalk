.class public Lcom/alibaba/android/user/model/RealVerifyOCRObject;
.super Ljava/lang/Object;
.source "RealVerifyOCRObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c109a7d43403911L


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lfqb;)Lcom/alibaba/android/user/model/RealVerifyOCRObject;
    .locals 2
    .param p0, "model"    # Lfqb;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "object":Lcom/alibaba/android/user/model/RealVerifyOCRObject;
    if-eqz p0, :cond_0

    .line 41
    new-instance v0, Lcom/alibaba/android/user/model/RealVerifyOCRObject;

    .end local v0    # "object":Lcom/alibaba/android/user/model/RealVerifyOCRObject;
    invoke-direct {v0}, Lcom/alibaba/android/user/model/RealVerifyOCRObject;-><init>()V

    .line 42
    .restart local v0    # "object":Lcom/alibaba/android/user/model/RealVerifyOCRObject;
    iget-object v1, p0, Lfqb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyOCRObject;->name:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lfqb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyOCRObject;->code:Ljava/lang/String;

    .line 45
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toIDL()Lfqb;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lfqb;

    invoke-direct {v0}, Lfqb;-><init>()V

    .line 50
    .local v0, "model":Lfqb;
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyOCRObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfqb;->a:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyOCRObject;->code:Ljava/lang/String;

    iput-object v1, v0, Lfqb;->b:Ljava/lang/String;

    .line 52
    return-object v0
.end method
