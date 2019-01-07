.class public Lcom/alibaba/laiwang/photokit/impl/MessageSenderFetcher;
.super Ljava/lang/Object;
.source "MessageSenderFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private a:Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderFetcher;->a:Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;

    .line 31
    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderFetcher;->a:Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageSenderFetcher;->a:Lcom/alibaba/laiwang/photokit/impl/MessageSenderImpl;

    .line 41
    return-void
.end method
