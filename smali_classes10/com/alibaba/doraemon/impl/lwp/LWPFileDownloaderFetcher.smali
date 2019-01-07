.class public Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderFetcher;
.super Ljava/lang/Object;
.source "LWPFileDownloaderFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mLWPFileDownloader:Lcom/alibaba/doraemon/lwp/LWPFileDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderFetcher;->mLWPFileDownloader:Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderFetcher;->mLWPFileDownloader:Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

    .line 26
    return-void
.end method
