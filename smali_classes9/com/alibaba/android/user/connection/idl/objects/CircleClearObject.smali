.class public Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;
.super Ljava/lang/Object;
.source "CircleClearObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xeaea0ec0348684bL


# instance fields
.field private createAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfed;)Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;
    .locals 4
    .param p0, "model"    # Lfed;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;-><init>()V

    .line 30
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;
    iget-object v1, p0, Lfed;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 30
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;->type:I

    .line 31
    iget-object v1, p0, Lfed;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 31
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;->createAt:J

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lfed;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 36
    new-instance v0, Lfed;

    invoke-direct {v0}, Lfed;-><init>()V

    .line 37
    .local v0, "result":Lfed;
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfed;->a:Ljava/lang/Integer;

    .line 38
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleClearObject;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfed;->b:Ljava/lang/Long;

    .line 39
    return-object v0
.end method
