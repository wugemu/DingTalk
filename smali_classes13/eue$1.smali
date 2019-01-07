.class public final Leue$1;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Leue;


# direct methods
.method public constructor <init>(Leue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "this$0"    # Leue;

    .prologue
    .line 75
    iput-object p1, p0, Leue$1;->f:Leue;

    iput-object p2, p0, Leue$1;->a:Ljava/lang/String;

    iput-object p3, p0, Leue$1;->b:Ljava/lang/String;

    iput-object p4, p0, Leue$1;->c:Ljava/lang/String;

    iput-wide p5, p0, Leue$1;->d:J

    iput-boolean p7, p0, Leue$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "FTS execute notifyDbReady"

    return-object v0
.end method

.method public final onExecute()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Leue$1;->f:Leue;

    invoke-static {v0}, Leue;->a(Leue;)Lcom/alibaba/android/searchengine/jni/Searcher;

    move-result-object v0

    iget-object v1, p0, Leue$1;->a:Ljava/lang/String;

    invoke-static {v1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Leue$1;->b:Ljava/lang/String;

    .line 79
    invoke-static {v2}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Leue$1;->c:Ljava/lang/String;

    invoke-static {v3}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v3

    iget-wide v4, p0, Leue$1;->d:J

    iget-boolean v6, p0, Leue$1;->e:Z

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/searchengine/jni/Searcher;->notifyDbReady([B[B[BJZ)I

    move-result v0

    return v0
.end method
