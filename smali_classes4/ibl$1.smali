.class final Libl$1;
.super Ljava/lang/Object;
.source "GroupNickUpdater.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libl;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Libl;


# direct methods
.method constructor <init>(Libl;JLjava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Libl;

    .prologue
    .line 63
    iput-object p1, p0, Libl$1;->d:Libl;

    iput-wide p2, p0, Libl$1;->a:J

    iput-object p4, p0, Libl$1;->b:Ljava/lang/String;

    iput-wide p5, p0, Libl$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "[groupNick]fetch new group nick if necessary. no local group nick."

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Libl$1;->d:Libl;

    invoke-static {v0}, Libl;->a(Libl;)Libi;

    move-result-object v0

    iget-object v1, p0, Libl$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Libl$1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Libi;->a(Ljava/lang/String;J)V

    .line 75
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    check-cast p1, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 1066
    if-eqz p1, :cond_0

    iget-wide v0, p0, Libl$1;->a:J

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1067
    :cond_0
    iget-object v0, p0, Libl$1;->d:Libl;

    invoke-static {v0}, Libl;->a(Libl;)Libi;

    move-result-object v0

    iget-object v1, p0, Libl$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Libl$1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Libi;->a(Ljava/lang/String;J)V

    .line 63
    :cond_1
    return-void
.end method
