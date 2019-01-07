.class public final Lkkt;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkkt$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lkkv;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final l:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final n:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final o:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 305
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "client_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "code_challenge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "code_challenge_method"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "display"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "login_hint"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "redirect_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "response_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "scope"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "state"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkkp;->a([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkkt;->p:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "configuration"    # Lkkv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "clientSecret"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "responseType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "display"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "loginHint"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "prompt"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "codeVerifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "codeVerifierChallenge"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "codeVerifierChallengeMethod"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p14, "responseMode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkkv;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p15, "additionalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lkkt;->a:Lkkv;

    .line 918
    iput-object p2, p0, Lkkt;->b:Ljava/lang/String;

    .line 919
    iput-object p3, p0, Lkkt;->c:Ljava/lang/String;

    .line 920
    iput-object p4, p0, Lkkt;->g:Ljava/lang/String;

    .line 921
    iput-object p5, p0, Lkkt;->h:Landroid/net/Uri;

    .line 922
    iput-object p15, p0, Lkkt;->o:Ljava/util/Map;

    .line 925
    iput-object p6, p0, Lkkt;->d:Ljava/lang/String;

    .line 926
    iput-object p7, p0, Lkkt;->e:Ljava/lang/String;

    .line 927
    iput-object p8, p0, Lkkt;->f:Ljava/lang/String;

    .line 928
    iput-object p9, p0, Lkkt;->i:Ljava/lang/String;

    .line 929
    iput-object p10, p0, Lkkt;->j:Ljava/lang/String;

    .line 930
    iput-object p11, p0, Lkkt;->k:Ljava/lang/String;

    .line 931
    iput-object p12, p0, Lkkt;->l:Ljava/lang/String;

    .line 932
    iput-object p13, p0, Lkkt;->m:Ljava/lang/String;

    .line 933
    iput-object p14, p0, Lkkt;->n:Ljava/lang/String;

    .line 934
    return-void
.end method

.method synthetic constructor <init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;B)V
    .locals 0
    .param p1, "x0"    # Lkkv;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/net/Uri;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Ljava/lang/String;
    .param p13, "x12"    # Ljava/lang/String;
    .param p14, "x13"    # Ljava/lang/String;
    .param p15, "x14"    # Ljava/util/Map;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p15}, Lkkt;-><init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lkkt;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1061
    const-string/jumbo v0, "json string cannot be null"

    invoke-static {p0, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkkt;->a(Lorg/json/JSONObject;)Lkkt;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lkkt;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1028
    const-string/jumbo v1, "json cannot be null"

    invoke-static {p0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    new-instance v1, Lkkt$a;

    const-string/jumbo v4, "configuration"

    .line 1030
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lkkv;->a(Lorg/json/JSONObject;)Lkkv;

    move-result-object v4

    const-string/jumbo v5, "clientId"

    .line 1031
    invoke-static {p0, v5}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "responseType"

    .line 1032
    invoke-static {p0, v6}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "redirectUri"

    .line 1033
    invoke-static {p0, v7}, Lklc;->d(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lkkt$a;-><init>(Lkkv;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "clientSecret"

    .line 1034
    invoke-static {p0, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1607
    iput-object v4, v1, Lkkt$a;->a:Ljava/lang/String;

    .line 1034
    const-string/jumbo v4, "display"

    .line 1035
    invoke-static {p0, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1619
    const-string/jumbo v5, "display must be null or not empty"

    invoke-static {v4, v5}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lkkt$a;->b:Ljava/lang/String;

    .line 1035
    const-string/jumbo v4, "login_hint"

    .line 1036
    invoke-static {p0, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkkt$a;->a(Ljava/lang/String;)Lkkt$a;

    move-result-object v1

    const-string/jumbo v4, "prompt"

    .line 1037
    invoke-static {p0, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1645
    const-string/jumbo v5, "prompt must be null or non-empty"

    invoke-static {v4, v5}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lkkt$a;->c:Ljava/lang/String;

    .line 1037
    const-string/jumbo v4, "state"

    .line 1038
    invoke-static {p0, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkkt$a;->b(Ljava/lang/String;)Lkkt$a;

    move-result-object v0

    const-string/jumbo v1, "codeVerifier"

    .line 1040
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "codeVerifierChallenge"

    .line 1041
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "codeVerifierChallengeMethod"

    .line 1042
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1819
    if-eqz v4, :cond_1

    .line 1820
    invoke-static {v4}, Lkkz;->a(Ljava/lang/String;)V

    .line 1821
    const-string/jumbo v1, "code verifier challenge cannot be null or empty if verifier is set"

    invoke-static {v5, v1}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1823
    const-string/jumbo v1, "code verifier challenge method cannot be null or empty if verifier is set"

    invoke-static {v6, v1}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1833
    :goto_0
    iput-object v4, v0, Lkkt$a;->e:Ljava/lang/String;

    .line 1834
    iput-object v5, v0, Lkkt$a;->f:Ljava/lang/String;

    .line 1835
    iput-object v6, v0, Lkkt$a;->g:Ljava/lang/String;

    .line 1039
    const-string/jumbo v1, "responseMode"

    .line 1043
    invoke-static {p0, v1}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1851
    const-string/jumbo v2, "responseMode must not be empty"

    invoke-static {v1, v2}, Lkle;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1852
    iput-object v1, v0, Lkkt$a;->h:Ljava/lang/String;

    .line 1043
    const-string/jumbo v1, "additionalParameters"

    .line 1044
    invoke-static {p0, v1}, Lklc;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2052
    sget-object v2, Lkkt;->p:Ljava/util/Set;

    .line 1865
    invoke-static {v1, v2}, Lkkp;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lkkt$a;->i:Ljava/util/Map;

    .line 1046
    .local v0, "builder":Lkkt$a;
    const-string/jumbo v1, "scope"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    const-string/jumbo v1, "scope"

    invoke-static {p0, v1}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkkr;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkkt$a;->a(Ljava/lang/Iterable;)Lkkt$a;

    .line 1049
    :cond_0
    invoke-virtual {v0}, Lkkt$a;->a()Lkkt;

    move-result-object v1

    return-object v1

    .line 1827
    .end local v0    # "builder":Lkkt$a;
    :cond_1
    if-nez v5, :cond_2

    move v1, v2

    :goto_1
    const-string/jumbo v7, "code verifier challenge must be null if verifier is null"

    invoke-static {v1, v7}, Lkle;->a(ZLjava/lang/Object;)V

    .line 1829
    if-nez v6, :cond_3

    :goto_2
    const-string/jumbo v1, "code verifier challenge method must be null if verifier is null"

    invoke-static {v2, v1}, Lkle;->a(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1827
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1829
    goto :goto_2
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2066
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2067
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 2068
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2069
    const/16 v0, 0xb

    invoke-static {v1, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 960
    iget-object v2, p0, Lkkt;->a:Lkkv;

    iget-object v2, v2, Lkkv;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "redirect_uri"

    iget-object v4, p0, Lkkt;->h:Landroid/net/Uri;

    .line 961
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "client_id"

    iget-object v4, p0, Lkkt;->b:Ljava/lang/String;

    .line 962
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "response_type"

    iget-object v4, p0, Lkkt;->g:Ljava/lang/String;

    .line 963
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 965
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v2, "display"

    iget-object v3, p0, Lkkt;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lklr;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 966
    const-string/jumbo v2, "login_hint"

    iget-object v3, p0, Lkkt;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lklr;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    const-string/jumbo v2, "prompt"

    iget-object v3, p0, Lkkt;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lklr;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 968
    const-string/jumbo v2, "state"

    iget-object v3, p0, Lkkt;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lklr;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 969
    const-string/jumbo v2, "scope"

    iget-object v3, p0, Lkkt;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lklr;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 970
    const-string/jumbo v2, "response_mode"

    iget-object v3, p0, Lkkt;->n:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lklr;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 972
    iget-object v2, p0, Lkkt;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 973
    const-string/jumbo v2, "code_challenge"

    iget-object v3, p0, Lkkt;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "code_challenge_method"

    iget-object v4, p0, Lkkt;->m:Ljava/lang/String;

    .line 974
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 977
    :cond_0
    iget-object v2, p0, Lkkt;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 978
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 981
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 990
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 991
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "configuration"

    iget-object v2, p0, Lkkt;->a:Lkkv;

    invoke-virtual {v2}, Lkkv;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 992
    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lkkt;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string/jumbo v2, "clientSecret"

    iget-object v1, p0, Lkkt;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-static {v0, v2, v1}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string/jumbo v1, "responseType"

    iget-object v2, p0, Lkkt;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string/jumbo v1, "redirectUri"

    iget-object v2, p0, Lkkt;->h:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string/jumbo v1, "display"

    iget-object v2, p0, Lkkt;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string/jumbo v1, "login_hint"

    iget-object v2, p0, Lkkt;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v1, "scope"

    iget-object v2, p0, Lkkt;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string/jumbo v1, "prompt"

    iget-object v2, p0, Lkkt;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v1, "state"

    iget-object v2, p0, Lkkt;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v1, "codeVerifier"

    iget-object v2, p0, Lkkt;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string/jumbo v1, "codeVerifierChallenge"

    iget-object v2, p0, Lkkt;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string/jumbo v1, "codeVerifierChallengeMethod"

    iget-object v2, p0, Lkkt;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v1, "responseMode"

    iget-object v2, p0, Lkkt;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v1, "additionalParameters"

    iget-object v2, p0, Lkkt;->o:Ljava/util/Map;

    .line 1007
    invoke-static {v2}, Lklc;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1006
    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1008
    return-object v0

    .line 993
    :cond_0
    iget-object v1, p0, Lkkt;->c:Ljava/lang/String;

    goto :goto_0
.end method
