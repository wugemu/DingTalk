.class public Lcom/dbappsecurity/entity/PushDataAttributeEntity;
.super Ljava/lang/Object;
.source "PushDataAttributeEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dbappsecurity/entity/PushDataAttributeEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dbappsecurity/entity/PushDataAttributeEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dbappsecurity/entity/PushDataAttributeEntity;->data:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dbappsecurity/entity/PushDataAttributeEntity;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
