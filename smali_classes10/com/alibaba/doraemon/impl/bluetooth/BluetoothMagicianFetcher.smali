.class public Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianFetcher;
.super Ljava/lang/Object;
.source "BluetoothMagicianFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mBluetoothMagician:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianFetcher;->mBluetoothMagician:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianFetcher;->mBluetoothMagician:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    .line 21
    return-void
.end method
