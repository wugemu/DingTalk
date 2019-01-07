.class final Lady$1;
.super Ljava/lang/Object;
.source "OAuthLoginImpl.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lady;->a(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lxv;

.field final synthetic c:Lady;


# direct methods
.method constructor <init>(Lady;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lady;

    .prologue
    .line 113
    iput-object p1, p0, Lady$1;->c:Lady;

    iput-object p2, p0, Lady$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lady$1;->b:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkli;Lnet/openid/appauth/AuthorizationException;)V
    .locals 5
    .param p1, "tokenResponse"    # Lkli;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 116
    invoke-static {}, Lss;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v0, Lady$1$1;

    invoke-direct {v0, p0, p1, p2}, Lady$1$1;-><init>(Lady$1;Lkli;Lnet/openid/appauth/AuthorizationException;)V

    .line 123
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v2}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 124
    .local v1, "thread":Laie;
    invoke-interface {v1, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 128
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "thread":Laie;
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lady$1;->c:Lady;

    iget-object v3, p0, Lady$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lady$1;->b:Lxv;

    invoke-static {v2, v3, p1, p2, v4}, Lady;->a(Lady;Ljava/lang/String;Lkli;Lnet/openid/appauth/AuthorizationException;Lxv;)V

    goto :goto_0
.end method
