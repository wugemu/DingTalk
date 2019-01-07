.class public Lmtopsdk/mtop/cache/handler/EmptyCacheParser;
.super Ljava/lang/Object;
.source "EmptyCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.EmptyCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;)V
    .locals 2
    .param p1, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 11
    const-string/jumbo v0, "mtopsdk.EmptyCacheParser"

    const-string/jumbo v1, "[parse]EmptyCacheParser parse called"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
