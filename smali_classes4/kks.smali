.class public final Lkks;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Lkkv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public d:Lkku;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lkli;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Lnet/openid/appauth/RegistrationResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public g:Lnet/openid/appauth/AuthorizationException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkks;->h:Ljava/lang/Object;

    .line 88
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    iget-object v0, v0, Lnet/openid/appauth/RegistrationResponse;->d:Ljava/lang/String;

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lkkv;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lkks;->d:Lkku;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lkks;->d:Lkku;

    iget-object v0, v0, Lkku;->a:Lkkt;

    iget-object v0, v0, Lkkt;->a:Lkkv;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkks;->c:Lkkv;

    goto :goto_0
.end method

.method public final b()Lnet/openid/appauth/ClientAuthentication;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 764
    invoke-direct {p0}, Lkks;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 767
    sget-object v0, Lkld;->a:Lkld;

    .line 780
    :goto_0
    return-object v0

    .line 768
    :cond_0
    iget-object v0, p0, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    iget-object v0, v0, Lnet/openid/appauth/RegistrationResponse;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 771
    new-instance v0, Lkkw;

    invoke-direct {p0}, Lkks;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkkw;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p0, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    iget-object v1, v0, Lnet/openid/appauth/RegistrationResponse;->h:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 782
    new-instance v0, Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;

    iget-object v1, p0, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    iget-object v1, v1, Lnet/openid/appauth/RegistrationResponse;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/openid/appauth/ClientAuthentication$UnsupportedAuthenticationMethod;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :sswitch_0
    const-string/jumbo v2, "client_secret_basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "client_secret_post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 776
    :pswitch_0
    new-instance v0, Lkkw;

    invoke-direct {p0}, Lkks;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkkw;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :pswitch_1
    new-instance v0, Lkkx;

    invoke-direct {p0}, Lkks;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkkx;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :pswitch_2
    sget-object v0, Lkld;->a:Lkld;

    goto :goto_0

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        -0x794555a5 -> :sswitch_1
        0x33af38 -> :sswitch_2
        0x4fcef9d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
