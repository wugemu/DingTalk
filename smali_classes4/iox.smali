.class public final Liox;
.super Ljava/lang/Object;
.source "H5PreSetPkgInfo.java"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "forceSync"    # Z
    .param p5, "downLoadUrl"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Liox;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Liox;->c:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Liox;->a:Ljava/io/InputStream;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Liox;->e:Z

    .line 33
    iput-object p5, p0, Liox;->d:Ljava/lang/String;

    .line 34
    return-void
.end method
