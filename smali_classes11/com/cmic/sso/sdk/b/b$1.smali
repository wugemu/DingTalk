.class Lcom/cmic/sso/sdk/b/b$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lcom/cmic/sso/sdk/b/f$a;


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/b/b;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/b/b;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$1;->a:Lcom/cmic/sso/sdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$1;->a:Lcom/cmic/sso/sdk/b/b;

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/b/b;->a(Lcom/cmic/sso/sdk/b/b;Landroid/net/Network;)Landroid/net/Network;

    .line 152
    return-void
.end method
