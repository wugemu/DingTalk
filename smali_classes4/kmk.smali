.class public final Lkmk;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field public static final A:Lkmk;

.field public static final B:Lkmk;

.field public static final C:Lkmk;

.field public static final D:Lkmk;

.field public static final E:Lkmk;

.field public static final F:Lkmk;

.field public static final G:Lkmk;

.field public static final H:Lkmk;

.field public static final I:Lkmk;

.field public static final J:Lkmk;

.field public static final K:Lkmk;

.field public static final L:Lkmk;

.field public static final M:Lkmk;

.field public static final N:Lkmk;

.field public static final O:Lkmk;

.field public static final P:Lkmk;

.field public static final Q:Lkmk;

.field public static final R:Lkmk;

.field public static final S:Lkmk;

.field public static final T:Lkmk;

.field public static final U:Lkmk;

.field public static final V:Lkmk;

.field public static final W:Lkmk;

.field public static final X:Lkmk;

.field public static final Y:Lkmk;

.field public static final Z:Lkmk;

.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final aA:Lkmk;

.field public static final aB:Lkmk;

.field public static final aC:Lkmk;

.field public static final aD:Lkmk;

.field public static final aE:Lkmk;

.field public static final aF:Lkmk;

.field public static final aG:Lkmk;

.field public static final aH:Lkmk;

.field public static final aI:Lkmk;

.field public static final aJ:Lkmk;

.field public static final aK:Lkmk;

.field public static final aL:Lkmk;

.field public static final aM:Lkmk;

.field public static final aN:Lkmk;

.field public static final aO:Lkmk;

.field public static final aP:Lkmk;

.field public static final aQ:Lkmk;

.field public static final aR:Lkmk;

.field public static final aS:Lkmk;

.field public static final aT:Lkmk;

.field public static final aU:Lkmk;

.field public static final aV:Lkmk;

.field public static final aW:Lkmk;

.field public static final aX:Lkmk;

.field public static final aY:Lkmk;

.field public static final aZ:Lkmk;

.field public static final aa:Lkmk;

.field public static final ab:Lkmk;

.field public static final ac:Lkmk;

.field public static final ad:Lkmk;

.field public static final ae:Lkmk;

.field public static final af:Lkmk;

.field public static final ag:Lkmk;

.field public static final ah:Lkmk;

.field public static final ai:Lkmk;

.field public static final aj:Lkmk;

.field public static final ak:Lkmk;

.field public static final al:Lkmk;

.field public static final am:Lkmk;

.field public static final an:Lkmk;

.field public static final ao:Lkmk;

.field public static final ap:Lkmk;

.field public static final aq:Lkmk;

.field public static final ar:Lkmk;

.field public static final as:Lkmk;

.field public static final at:Lkmk;

.field public static final au:Lkmk;

.field public static final av:Lkmk;

.field public static final aw:Lkmk;

.field public static final ax:Lkmk;

.field public static final ay:Lkmk;

.field public static final az:Lkmk;

.field public static final b:Lkmk;

.field public static final ba:Lkmk;

.field public static final bb:Lkmk;

.field public static final bc:Lkmk;

.field public static final bd:Lkmk;

.field public static final be:Lkmk;

.field public static final bf:Lkmk;

.field public static final bg:Lkmk;

.field public static final bh:Lkmk;

.field public static final bi:Lkmk;

.field public static final bj:Lkmk;

.field private static final bl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lkmk;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lkmk;

.field public static final d:Lkmk;

.field public static final e:Lkmk;

.field public static final f:Lkmk;

.field public static final g:Lkmk;

.field public static final h:Lkmk;

.field public static final i:Lkmk;

.field public static final j:Lkmk;

.field public static final k:Lkmk;

.field public static final l:Lkmk;

.field public static final m:Lkmk;

.field public static final n:Lkmk;

.field public static final o:Lkmk;

.field public static final p:Lkmk;

.field public static final q:Lkmk;

.field public static final r:Lkmk;

.field public static final s:Lkmk;

.field public static final t:Lkmk;

.field public static final u:Lkmk;

.field public static final v:Lkmk;

.field public static final w:Lkmk;

.field public static final x:Lkmk;

.field public static final y:Lkmk;

.field public static final z:Lkmk;


# instance fields
.field final bk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lkmk$1;

    invoke-direct {v0}, Lkmk$1;-><init>()V

    sput-object v0, Lkmk;->a:Ljava/util/Comparator;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lkmk;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lkmk;->bl:Ljava/util/Map;

    .line 72
    const-string/jumbo v0, "SSL_RSA_WITH_NULL_MD5"

    .line 1434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 72
    sput-object v0, Lkmk;->b:Lkmk;

    .line 73
    const-string/jumbo v0, "SSL_RSA_WITH_NULL_SHA"

    .line 2434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 73
    sput-object v0, Lkmk;->c:Lkmk;

    .line 74
    const-string/jumbo v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    .line 3434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 74
    sput-object v0, Lkmk;->d:Lkmk;

    .line 75
    const-string/jumbo v0, "SSL_RSA_WITH_RC4_128_MD5"

    .line 4434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 75
    sput-object v0, Lkmk;->e:Lkmk;

    .line 76
    const-string/jumbo v0, "SSL_RSA_WITH_RC4_128_SHA"

    .line 5434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 76
    sput-object v0, Lkmk;->f:Lkmk;

    .line 79
    const-string/jumbo v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 6434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 79
    sput-object v0, Lkmk;->g:Lkmk;

    .line 80
    const-string/jumbo v0, "SSL_RSA_WITH_DES_CBC_SHA"

    .line 7434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 80
    sput-object v0, Lkmk;->h:Lkmk;

    .line 81
    const-string/jumbo v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 8434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 81
    sput-object v0, Lkmk;->i:Lkmk;

    .line 88
    const-string/jumbo v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    .line 9434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 88
    sput-object v0, Lkmk;->j:Lkmk;

    .line 89
    const-string/jumbo v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    .line 10434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 89
    sput-object v0, Lkmk;->k:Lkmk;

    .line 90
    const-string/jumbo v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    .line 11434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 90
    sput-object v0, Lkmk;->l:Lkmk;

    .line 91
    const-string/jumbo v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 12434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 91
    sput-object v0, Lkmk;->m:Lkmk;

    .line 92
    const-string/jumbo v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    .line 13434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 92
    sput-object v0, Lkmk;->n:Lkmk;

    .line 93
    const-string/jumbo v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 14434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 93
    sput-object v0, Lkmk;->o:Lkmk;

    .line 94
    const-string/jumbo v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    .line 15434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 94
    sput-object v0, Lkmk;->p:Lkmk;

    .line 95
    const-string/jumbo v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    .line 16434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 95
    sput-object v0, Lkmk;->q:Lkmk;

    .line 96
    const-string/jumbo v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    .line 17434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 96
    sput-object v0, Lkmk;->r:Lkmk;

    .line 97
    const-string/jumbo v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    .line 18434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 97
    sput-object v0, Lkmk;->s:Lkmk;

    .line 98
    const-string/jumbo v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 19434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 98
    sput-object v0, Lkmk;->t:Lkmk;

    .line 99
    const-string/jumbo v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    .line 20434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 99
    sput-object v0, Lkmk;->u:Lkmk;

    .line 100
    const-string/jumbo v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    .line 21434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 100
    sput-object v0, Lkmk;->v:Lkmk;

    .line 101
    const-string/jumbo v0, "TLS_KRB5_WITH_RC4_128_SHA"

    .line 22434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 101
    sput-object v0, Lkmk;->w:Lkmk;

    .line 103
    const-string/jumbo v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    .line 23434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 103
    sput-object v0, Lkmk;->x:Lkmk;

    .line 104
    const-string/jumbo v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    .line 24434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 104
    sput-object v0, Lkmk;->y:Lkmk;

    .line 105
    const-string/jumbo v0, "TLS_KRB5_WITH_RC4_128_MD5"

    .line 25434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 105
    sput-object v0, Lkmk;->z:Lkmk;

    .line 107
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    .line 26434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 107
    sput-object v0, Lkmk;->A:Lkmk;

    .line 109
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    .line 27434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 109
    sput-object v0, Lkmk;->B:Lkmk;

    .line 110
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    .line 28434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 110
    sput-object v0, Lkmk;->C:Lkmk;

    .line 112
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    .line 29434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 112
    sput-object v0, Lkmk;->D:Lkmk;

    .line 116
    const-string/jumbo v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 30434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 116
    sput-object v0, Lkmk;->E:Lkmk;

    .line 119
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    .line 31434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 119
    sput-object v0, Lkmk;->F:Lkmk;

    .line 120
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    .line 32434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 120
    sput-object v0, Lkmk;->G:Lkmk;

    .line 121
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    .line 33434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 121
    sput-object v0, Lkmk;->H:Lkmk;

    .line 122
    const-string/jumbo v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 34434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 122
    sput-object v0, Lkmk;->I:Lkmk;

    .line 125
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    .line 35434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 125
    sput-object v0, Lkmk;->J:Lkmk;

    .line 126
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    .line 36434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 126
    sput-object v0, Lkmk;->K:Lkmk;

    .line 127
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    .line 37434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 127
    sput-object v0, Lkmk;->L:Lkmk;

    .line 128
    const-string/jumbo v0, "TLS_RSA_WITH_NULL_SHA256"

    .line 38434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 128
    sput-object v0, Lkmk;->M:Lkmk;

    .line 129
    const-string/jumbo v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    .line 39434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 129
    sput-object v0, Lkmk;->N:Lkmk;

    .line 130
    const-string/jumbo v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    .line 40434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 130
    sput-object v0, Lkmk;->O:Lkmk;

    .line 133
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    .line 41434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 133
    sput-object v0, Lkmk;->P:Lkmk;

    .line 134
    const-string/jumbo v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    .line 42434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 134
    sput-object v0, Lkmk;->Q:Lkmk;

    .line 137
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    .line 43434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 137
    sput-object v0, Lkmk;->R:Lkmk;

    .line 138
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    .line 44434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 138
    sput-object v0, Lkmk;->S:Lkmk;

    .line 140
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 45434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 140
    sput-object v0, Lkmk;->T:Lkmk;

    .line 143
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    .line 46434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 143
    sput-object v0, Lkmk;->U:Lkmk;

    .line 144
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    .line 47434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 144
    sput-object v0, Lkmk;->V:Lkmk;

    .line 145
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    .line 48434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 145
    sput-object v0, Lkmk;->W:Lkmk;

    .line 146
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    .line 49434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 146
    sput-object v0, Lkmk;->X:Lkmk;

    .line 147
    const-string/jumbo v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    .line 50434
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 147
    sput-object v0, Lkmk;->Y:Lkmk;

    .line 150
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    .line 50435
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 150
    sput-object v0, Lkmk;->Z:Lkmk;

    .line 151
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    .line 50436
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 151
    sput-object v0, Lkmk;->aa:Lkmk;

    .line 153
    const-string/jumbo v0, "TLS_PSK_WITH_RC4_128_SHA"

    .line 50437
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 153
    sput-object v0, Lkmk;->ab:Lkmk;

    .line 154
    const-string/jumbo v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    .line 50438
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 154
    sput-object v0, Lkmk;->ac:Lkmk;

    .line 155
    const-string/jumbo v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    .line 50439
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 155
    sput-object v0, Lkmk;->ad:Lkmk;

    .line 156
    const-string/jumbo v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    .line 50440
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 156
    sput-object v0, Lkmk;->ae:Lkmk;

    .line 165
    const-string/jumbo v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    .line 50441
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 165
    sput-object v0, Lkmk;->af:Lkmk;

    .line 171
    const-string/jumbo v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    .line 50442
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 171
    sput-object v0, Lkmk;->ag:Lkmk;

    .line 172
    const-string/jumbo v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    .line 50443
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 172
    sput-object v0, Lkmk;->ah:Lkmk;

    .line 173
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 50444
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 173
    sput-object v0, Lkmk;->ai:Lkmk;

    .line 174
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 50445
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 174
    sput-object v0, Lkmk;->aj:Lkmk;

    .line 177
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    .line 50446
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 177
    sput-object v0, Lkmk;->ak:Lkmk;

    .line 178
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    .line 50447
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 178
    sput-object v0, Lkmk;->al:Lkmk;

    .line 181
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    .line 50448
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 181
    sput-object v0, Lkmk;->am:Lkmk;

    .line 182
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    .line 50449
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 182
    sput-object v0, Lkmk;->an:Lkmk;

    .line 213
    const-string/jumbo v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    .line 50450
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 213
    sput-object v0, Lkmk;->ao:Lkmk;

    .line 214
    const-string/jumbo v0, "TLS_FALLBACK_SCSV"

    .line 50451
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 214
    sput-object v0, Lkmk;->ap:Lkmk;

    .line 215
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    .line 50452
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 215
    sput-object v0, Lkmk;->aq:Lkmk;

    .line 216
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    .line 50453
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 216
    sput-object v0, Lkmk;->ar:Lkmk;

    .line 217
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 50454
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 217
    sput-object v0, Lkmk;->as:Lkmk;

    .line 218
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    .line 50455
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 218
    sput-object v0, Lkmk;->at:Lkmk;

    .line 219
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    .line 50456
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 219
    sput-object v0, Lkmk;->au:Lkmk;

    .line 220
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    .line 50457
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 220
    sput-object v0, Lkmk;->av:Lkmk;

    .line 221
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    .line 50458
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 221
    sput-object v0, Lkmk;->aw:Lkmk;

    .line 222
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 50459
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 222
    sput-object v0, Lkmk;->ax:Lkmk;

    .line 223
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    .line 50460
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 223
    sput-object v0, Lkmk;->ay:Lkmk;

    .line 224
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    .line 50461
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 224
    sput-object v0, Lkmk;->az:Lkmk;

    .line 225
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    .line 50462
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 225
    sput-object v0, Lkmk;->aA:Lkmk;

    .line 226
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    .line 50463
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 226
    sput-object v0, Lkmk;->aB:Lkmk;

    .line 227
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 50464
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 227
    sput-object v0, Lkmk;->aC:Lkmk;

    .line 228
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    .line 50465
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 228
    sput-object v0, Lkmk;->aD:Lkmk;

    .line 229
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    .line 50466
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 229
    sput-object v0, Lkmk;->aE:Lkmk;

    .line 230
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    .line 50467
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 230
    sput-object v0, Lkmk;->aF:Lkmk;

    .line 231
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    .line 50468
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 231
    sput-object v0, Lkmk;->aG:Lkmk;

    .line 232
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 50469
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 232
    sput-object v0, Lkmk;->aH:Lkmk;

    .line 233
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 50470
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 233
    sput-object v0, Lkmk;->aI:Lkmk;

    .line 234
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    .line 50471
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 234
    sput-object v0, Lkmk;->aJ:Lkmk;

    .line 235
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    .line 50472
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 235
    sput-object v0, Lkmk;->aK:Lkmk;

    .line 236
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    .line 50473
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 236
    sput-object v0, Lkmk;->aL:Lkmk;

    .line 237
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 50474
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 237
    sput-object v0, Lkmk;->aM:Lkmk;

    .line 238
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    .line 50475
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 238
    sput-object v0, Lkmk;->aN:Lkmk;

    .line 239
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    .line 50476
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 239
    sput-object v0, Lkmk;->aO:Lkmk;

    .line 249
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 50477
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 249
    sput-object v0, Lkmk;->aP:Lkmk;

    .line 250
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 50478
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 250
    sput-object v0, Lkmk;->aQ:Lkmk;

    .line 251
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 50479
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 251
    sput-object v0, Lkmk;->aR:Lkmk;

    .line 252
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 50480
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 252
    sput-object v0, Lkmk;->aS:Lkmk;

    .line 253
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 50481
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 253
    sput-object v0, Lkmk;->aT:Lkmk;

    .line 254
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    .line 50482
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 254
    sput-object v0, Lkmk;->aU:Lkmk;

    .line 255
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    .line 50483
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 255
    sput-object v0, Lkmk;->aV:Lkmk;

    .line 256
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    .line 50484
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 256
    sput-object v0, Lkmk;->aW:Lkmk;

    .line 257
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 50485
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 257
    sput-object v0, Lkmk;->aX:Lkmk;

    .line 258
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 50486
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 258
    sput-object v0, Lkmk;->aY:Lkmk;

    .line 259
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 50487
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 259
    sput-object v0, Lkmk;->aZ:Lkmk;

    .line 260
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 50488
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 260
    sput-object v0, Lkmk;->ba:Lkmk;

    .line 261
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 50489
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 261
    sput-object v0, Lkmk;->bb:Lkmk;

    .line 262
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 50490
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 262
    sput-object v0, Lkmk;->bc:Lkmk;

    .line 263
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    .line 50491
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 263
    sput-object v0, Lkmk;->bd:Lkmk;

    .line 264
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    .line 50492
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 264
    sput-object v0, Lkmk;->be:Lkmk;

    .line 267
    const-string/jumbo v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    .line 50493
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 267
    sput-object v0, Lkmk;->bf:Lkmk;

    .line 268
    const-string/jumbo v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    .line 50494
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 268
    sput-object v0, Lkmk;->bg:Lkmk;

    .line 390
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 50495
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 390
    sput-object v0, Lkmk;->bh:Lkmk;

    .line 391
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 50496
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 391
    sput-object v0, Lkmk;->bi:Lkmk;

    .line 394
    const-string/jumbo v0, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    .line 50497
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 394
    sput-object v0, Lkmk;->bj:Lkmk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "javaName"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    if-nez p1, :cond_0

    .line 423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 425
    :cond_0
    iput-object p1, p0, Lkmk;->bk:Ljava/lang/String;

    .line 426
    return-void
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "cipherSuites"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkmk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lkmk;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 416
    .local v0, "cipherSuite":Ljava/lang/String;
    invoke-static {v0}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "cipherSuite":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lkmk;
    .locals 3
    .param p0, "javaName"    # Ljava/lang/String;

    .prologue
    .line 405
    const-class v2, Lkmk;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lkmk;->bl:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkmk;

    .line 406
    .local v0, "result":Lkmk;
    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lkmk;

    .end local v0    # "result":Lkmk;
    invoke-direct {v0, p0}, Lkmk;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v0    # "result":Lkmk;
    sget-object v1, Lkmk;->bl:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit v2

    return-object v0

    .line 405
    .end local v0    # "result":Lkmk;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lkmk;->bk:Ljava/lang/String;

    return-object v0
.end method
