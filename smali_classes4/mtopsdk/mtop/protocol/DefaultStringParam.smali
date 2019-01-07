.class public Lmtopsdk/mtop/protocol/DefaultStringParam;
.super Ljava/lang/Object;
.source "DefaultStringParam.java"

# interfaces
.implements Lli;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmtopsdk/mtop/protocol/DefaultStringParam;->key:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lmtopsdk/mtop/protocol/DefaultStringParam;->value:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lmtopsdk/mtop/protocol/DefaultStringParam;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lmtopsdk/mtop/protocol/DefaultStringParam;->value:Ljava/lang/String;

    return-object v0
.end method
