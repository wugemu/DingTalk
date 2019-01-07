.class public Lcom/alibaba/alimei/mail/cache/UnkownFileCache;
.super Lcom/alibaba/alimei/mail/cache/FileCache;
.source "UnkownFileCache.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/cache/FileCache;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "unkown"

    return-object v0
.end method
