.class final Lady$1$1;
.super Ljava/lang/Object;
.source "OAuthLoginImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lady$1;->a(Lkli;Lnet/openid/appauth/AuthorizationException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkli;

.field final synthetic b:Lnet/openid/appauth/AuthorizationException;

.field final synthetic c:Lady$1;


# direct methods
.method constructor <init>(Lady$1;Lkli;Lnet/openid/appauth/AuthorizationException;)V
    .locals 0
    .param p1, "this$1"    # Lady$1;

    .prologue
    .line 117
    iput-object p1, p0, Lady$1$1;->c:Lady$1;

    iput-object p2, p0, Lady$1$1;->a:Lkli;

    iput-object p3, p0, Lady$1$1;->b:Lnet/openid/appauth/AuthorizationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lady$1$1;->c:Lady$1;

    iget-object v0, v0, Lady$1;->c:Lady;

    iget-object v1, p0, Lady$1$1;->c:Lady$1;

    iget-object v1, v1, Lady$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lady$1$1;->a:Lkli;

    iget-object v3, p0, Lady$1$1;->b:Lnet/openid/appauth/AuthorizationException;

    iget-object v4, p0, Lady$1$1;->c:Lady$1;

    iget-object v4, v4, Lady$1;->b:Lxv;

    invoke-static {v0, v1, v2, v3, v4}, Lady;->a(Lady;Ljava/lang/String;Lkli;Lnet/openid/appauth/AuthorizationException;Lxv;)V

    .line 121
    return-void
.end method
