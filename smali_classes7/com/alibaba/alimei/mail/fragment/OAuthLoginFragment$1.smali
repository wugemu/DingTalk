.class final Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$1;
.super Ljava/lang/Object;
.source "OAuthLoginFragment.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkli;Lnet/openid/appauth/AuthorizationException;)V
    .locals 1
    .param p1, "tokenResponse"    # Lkli;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Lkli;Lnet/openid/appauth/AuthorizationException;)V

    goto :goto_0
.end method
