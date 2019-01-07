.class final Lcom/alibaba/doraemon/impl/request/OutInputStream$2;
.super Lcom/alibaba/doraemon/impl/request/OutInputStream;
.source "OutInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromInputStream(Ljava/io/InputStream;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;ILjava/io/InputStream;J)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 62
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$2;->val$stream:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$2;->val$length:J

    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$2;->val$stream:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$2;->val$length:J

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method
