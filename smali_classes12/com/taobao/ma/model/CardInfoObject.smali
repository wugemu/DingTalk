.class public Lcom/taobao/ma/model/CardInfoObject;
.super Ljava/lang/Object;
.source "CardInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x299d705c01cb33c1L


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Ljmz;)Lcom/taobao/ma/model/CardInfoObject;
    .locals 2
    .param p0, "model"    # Ljmz;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/taobao/ma/model/CardInfoObject;

    invoke-direct {v0}, Lcom/taobao/ma/model/CardInfoObject;-><init>()V

    .line 44
    .local v0, "object":Lcom/taobao/ma/model/CardInfoObject;
    iget-object v1, p0, Ljmz;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/ma/model/CardInfoObject;->key:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Ljmz;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/ma/model/CardInfoObject;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Ljmz;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    new-instance v0, Ljmz;

    invoke-direct {v0}, Ljmz;-><init>()V

    .line 51
    .local v0, "model":Ljmz;
    iget-object v1, p0, Lcom/taobao/ma/model/CardInfoObject;->key:Ljava/lang/String;

    iput-object v1, v0, Ljmz;->a:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/taobao/ma/model/CardInfoObject;->value:Ljava/lang/String;

    iput-object v1, v0, Ljmz;->b:Ljava/lang/String;

    .line 53
    return-object v0
.end method
