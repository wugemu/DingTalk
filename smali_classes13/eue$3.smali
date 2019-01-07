.class final Leue$3;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leue;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Leue;


# direct methods
.method constructor <init>(Leue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Leue;

    .prologue
    .line 194
    iput-object p1, p0, Leue$3;->e:Leue;

    iput-object p2, p0, Leue$3;->a:Ljava/lang/String;

    iput-object p3, p0, Leue$3;->b:Ljava/lang/String;

    iput-object p4, p0, Leue$3;->c:Ljava/lang/String;

    iput p5, p0, Leue$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string/jumbo v0, "FTS execute fullSyncIndex"

    return-object v0
.end method

.method public final onExecute()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Leue$3;->e:Leue;

    invoke-static {v0}, Leue;->a(Leue;)Lcom/alibaba/android/searchengine/jni/Searcher;

    move-result-object v0

    iget-object v1, p0, Leue$3;->a:Ljava/lang/String;

    invoke-static {v1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Leue$3;->b:Ljava/lang/String;

    .line 198
    invoke-static {v2}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Leue$3;->c:Ljava/lang/String;

    invoke-static {v3}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v3

    iget v4, p0, Leue$3;->d:I

    .line 197
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/searchengine/jni/Searcher;->fullSyncIndex([B[B[BI)I

    move-result v0

    return v0
.end method
