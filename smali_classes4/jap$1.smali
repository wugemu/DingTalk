.class final Ljap$1;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Ljai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljap;->a(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljap;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljap;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljap$1;->a:Ljap;

    iput p2, p0, Ljap$1;->b:I

    iput-object p3, p0, Ljap$1;->c:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 195
    iget-object v0, p0, Ljap$1;->a:Ljap;

    iget-object v1, p0, Ljap$1;->a:Ljap;

    invoke-static {v1}, Ljap;->a(Ljap;)Ljai;

    move-result-object v1

    iget-object v2, p0, Ljap$1;->a:Ljap;

    invoke-static {v2}, Ljap;->b(Ljap;)Lcom/laiwang/sdk/openapi/LWAPIAccount;

    move-result-object v2

    iget-object v3, p0, Ljap$1;->a:Ljap;

    invoke-static {v3}, Ljap;->c(Ljap;)Ljan;

    move-result-object v3

    iget v4, p0, Ljap$1;->b:I

    iget-object v5, p0, Ljap$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljai;->a(Lcom/laiwang/sdk/openapi/LWAPIAccount;Ljam;ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljap;->a(Ljap;I)V

    .line 197
    iget v0, p0, Ljap$1;->b:I

    iget-object v1, p0, Ljap$1;->a:Ljap;

    invoke-static {v1}, Ljap;->d(Ljap;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Ljap$1;->a:Ljap;

    invoke-static {v0, v6}, Ljap;->a(Ljap;Z)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Ljap$1;->a:Ljap;

    invoke-static {v0, v6}, Ljap;->b(Ljap;Z)V

    goto :goto_0
.end method
