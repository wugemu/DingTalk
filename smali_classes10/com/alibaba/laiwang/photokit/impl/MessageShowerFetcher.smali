.class public Lcom/alibaba/laiwang/photokit/impl/MessageShowerFetcher;
.super Ljava/lang/Object;
.source "MessageShowerFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private a:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerFetcher;->a:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    .line 32
    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerFetcher;->a:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerFetcher;->a:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    .line 42
    return-void
.end method
