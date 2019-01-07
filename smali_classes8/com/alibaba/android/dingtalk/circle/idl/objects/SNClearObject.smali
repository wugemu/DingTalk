.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;
.super Ljava/lang/Object;
.source "SNClearObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xeaea0ec0348684bL


# instance fields
.field private createAt:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbpj;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;
    .locals 4
    .param p0, "model"    # Lbpj;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;-><init>()V

    .line 23
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;
    iget-object v1, p0, Lbpj;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 23
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;->type:I

    .line 24
    iget-object v1, p0, Lbpj;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 24
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;->createAt:J

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lbpj;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 29
    new-instance v0, Lbpj;

    invoke-direct {v0}, Lbpj;-><init>()V

    .line 30
    .local v0, "result":Lbpj;
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbpj;->a:Ljava/lang/Integer;

    .line 31
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNClearObject;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpj;->b:Ljava/lang/Long;

    .line 32
    return-object v0
.end method
