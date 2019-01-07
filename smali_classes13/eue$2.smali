.class final Leue$2;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leue;->a(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Leue;


# direct methods
.method constructor <init>(Leue;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leue;

    .prologue
    .line 95
    iput-object p1, p0, Leue$2;->c:Leue;

    iput-object p2, p0, Leue$2;->a:Ljava/lang/String;

    iput-object p3, p0, Leue$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "FTS execute notifyTableReady"

    return-object v0
.end method

.method public final onExecute()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Leue$2;->c:Leue;

    invoke-static {v0}, Leue;->a(Leue;)Lcom/alibaba/android/searchengine/jni/Searcher;

    move-result-object v0

    iget-object v1, p0, Leue$2;->a:Ljava/lang/String;

    invoke-static {v1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Leue$2;->b:Ljava/lang/String;

    invoke-static {v2}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/searchengine/jni/Searcher;->notifyTableReady([B[B)I

    move-result v0

    return v0
.end method
