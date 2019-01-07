.class public Lnet/openid/appauth/AuthorizationService;
.super Ljava/lang/Object;
.source "AuthorizationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationService$b;,
        Lnet/openid/appauth/AuthorizationService$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Lkkq;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lnet/openid/appauth/browser/CustomTabManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lkll;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    sget-object v0, Lkkq;->a:Lkkq;

    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lkkq;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkkq;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientConfiguration"    # Lkkq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    .line 1055
    iget-object v0, p2, Lkkq;->b:Lklm;

    .line 96
    invoke-static {p1, v0}, Lkln;->a(Landroid/content/Context;Lklm;)Lkll;

    move-result-object v0

    new-instance v1, Lnet/openid/appauth/browser/CustomTabManager;

    invoke-direct {v1, p1}, Lnet/openid/appauth/browser/CustomTabManager;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lkkq;Lkll;Lnet/openid/appauth/browser/CustomTabManager;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lkkq;Lkll;Lnet/openid/appauth/browser/CustomTabManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientConfiguration"    # Lkkq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "browser"    # Lkll;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "customTabManager"    # Lnet/openid/appauth/browser/CustomTabManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->e:Z

    .line 110
    invoke-static {p1}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationService;->a:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lnet/openid/appauth/AuthorizationService;->b:Lkkq;

    .line 112
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationService;->c:Lnet/openid/appauth/browser/CustomTabManager;

    .line 113
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationService;->d:Lkll;

    .line 115
    if-eqz p3, :cond_0

    iget-object v0, p3, Lkll;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->c:Lnet/openid/appauth/browser/CustomTabManager;

    iget-object v1, p3, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/openid/appauth/browser/CustomTabManager;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lklh;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$b;)V
    .locals 4
    .param p1, "request"    # Lklh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientAuthentication"    # Lnet/openid/appauth/ClientAuthentication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lnet/openid/appauth/AuthorizationService$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 311
    .line 312
    const-string/jumbo v0, "Initiating code exchange request to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lklh;->a:Lkkv;

    iget-object v2, v2, Lkkv;->b:Landroid/net/Uri;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v0, Lnet/openid/appauth/AuthorizationService$a;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationService;->b:Lkkq;

    .line 2064
    iget-object v1, v1, Lkkq;->c:Lklo;

    .line 317
    invoke-direct {v0, p1, p2, v1, p3}, Lnet/openid/appauth/AuthorizationService$a;-><init>(Lklh;Lnet/openid/appauth/ClientAuthentication;Lklo;Lnet/openid/appauth/AuthorizationService$b;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 319
    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationService$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    return-void
.end method
