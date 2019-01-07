.class Lcom/cmic/sso/sdk/auth/AuthnHelper$1;
.super Ljava/lang/Thread;
.source "AuthnHelper.java"


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->access$000(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V

    .line 124
    return-void
.end method
