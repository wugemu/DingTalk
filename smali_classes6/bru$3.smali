.class final Lbru$3;
.super Ljava/lang/Object;
.source "CacheUpdater.java"

# interfaces
.implements Lhpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbru;


# direct methods
.method constructor <init>(Lbru;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbru;

    .prologue
    .line 163
    iput-object p1, p0, Lbru$3;->b:Lbru;

    iput-object p2, p0, Lbru$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lbru$3;->b:Lbru;

    iget-object v1, p0, Lbru$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbru;->b(Lbru;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 171
    const-string/jumbo v0, "doc"

    const-string/jumbo v1, "CacheUpdater"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onCached url = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lbru$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "   errorCode = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   errorMsg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lbru$3;->b:Lbru;

    iget-object v1, p0, Lbru$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbru;->b(Lbru;Ljava/lang/String;)V

    .line 173
    return-void
.end method
