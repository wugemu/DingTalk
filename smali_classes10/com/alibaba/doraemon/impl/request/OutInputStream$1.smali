.class final Lcom/alibaba/doraemon/impl/request/OutInputStream$1;
.super Ljava/io/ByteArrayInputStream;
.source "OutInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromBytes([B)Lcom/alibaba/doraemon/impl/request/OutInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0
    .param p1, "x0"    # [B

    .prologue
    .line 43
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$1;->val$bytes:[B

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$1;->val$bytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$1;->val$bytes:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method
