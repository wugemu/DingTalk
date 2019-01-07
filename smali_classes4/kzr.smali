.class public final Lkzr;
.super Lkwz;


# static fields
.field private static d:Ljava/util/Hashtable;

.field private static e:Ljava/util/Hashtable;

.field private static f:Ljava/util/Hashtable;

.field private static g:Ljava/util/Hashtable;

.field private static h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkzr;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkzr;->e:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkzr;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkzr;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "MD2WITHRSAENCRYPTION"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "MD2WITHRSA"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "MD5WITHRSAENCRYPTION"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "MD5WITHRSA"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "RSAWITHMD5"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA1WITHRSAENCRYPTION"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA1WITHRSA"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA224WITHRSAENCRYPTION"

    sget-object v2, Lkxd;->p_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA224WITHRSA"

    sget-object v2, Lkxd;->p_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA256WITHRSAENCRYPTION"

    sget-object v2, Lkxd;->m_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA256WITHRSA"

    sget-object v2, Lkxd;->m_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA384WITHRSAENCRYPTION"

    sget-object v2, Lkxd;->n_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA384WITHRSA"

    sget-object v2, Lkxd;->n_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA512WITHRSAENCRYPTION"

    sget-object v2, Lkxd;->o_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA512WITHRSA"

    sget-object v2, Lkxd;->o_:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA1WITHRSAANDMGF1"

    sget-object v2, Lkxd;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA224WITHRSAANDMGF1"

    sget-object v2, Lkxd;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA256WITHRSAANDMGF1"

    sget-object v2, Lkxd;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA384WITHRSAANDMGF1"

    sget-object v2, Lkxd;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA512WITHRSAANDMGF1"

    sget-object v2, Lkxd;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "RSAWITHSHA1"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "RIPEMD160WITHRSAENCRYPTION"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "RIPEMD160WITHRSA"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA1WITHDSA"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "DSAWITHSHA1"

    new-instance v2, Lkvn;

    const-string/jumbo v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v3}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA224WITHDSA"

    sget-object v2, Lkwv;->A:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA256WITHDSA"

    sget-object v2, Lkwv;->B:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA1WITHECDSA"

    sget-object v2, Lkyo;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA224WITHECDSA"

    sget-object v2, Lkyo;->m:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA256WITHECDSA"

    sget-object v2, Lkyo;->n:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA384WITHECDSA"

    sget-object v2, Lkyo;->o:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHA512WITHECDSA"

    sget-object v2, Lkyo;->p:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "ECDSAWITHSHA1"

    sget-object v2, Lkyo;->j:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "GOST3411WITHGOST3410"

    sget-object v2, Lkwm;->e:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "GOST3410WITHGOST3411"

    sget-object v2, Lkwm;->e:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "GOST3411WITHECGOST3410"

    sget-object v2, Lkwm;->f:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "GOST3411WITHECGOST3410-2001"

    sget-object v2, Lkwm;->f:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->d:Ljava/util/Hashtable;

    const-string/jumbo v1, "GOST3411WITHGOST3410-2001"

    sget-object v2, Lkwm;->f:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    new-instance v1, Lkvn;

    const-string/jumbo v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lkvn;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "SHA1WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkxd;->p_:Lkvn;

    const-string/jumbo v2, "SHA224WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkxd;->m_:Lkvn;

    const-string/jumbo v2, "SHA256WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkxd;->n_:Lkvn;

    const-string/jumbo v2, "SHA384WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkxd;->o_:Lkvn;

    const-string/jumbo v2, "SHA512WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->e:Lkvn;

    const-string/jumbo v2, "GOST3411WITHGOST3410"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->f:Lkvn;

    const-string/jumbo v2, "GOST3411WITHECGOST3410"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    new-instance v1, Lkvn;

    const-string/jumbo v2, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v2}, Lkvn;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "MD5WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    new-instance v1, Lkvn;

    const-string/jumbo v2, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v2}, Lkvn;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "MD2WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    new-instance v1, Lkvn;

    const-string/jumbo v2, "1.2.840.10040.4.3"

    invoke-direct {v1, v2}, Lkvn;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "SHA1WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkyo;->j:Lkvn;

    const-string/jumbo v2, "SHA1WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkyo;->m:Lkvn;

    const-string/jumbo v2, "SHA224WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkyo;->n:Lkvn;

    const-string/jumbo v2, "SHA256WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkyo;->o:Lkvn;

    const-string/jumbo v2, "SHA384WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkyo;->p:Lkvn;

    const-string/jumbo v2, "SHA512WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkwy;->k:Lkvn;

    const-string/jumbo v2, "SHA1WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkwy;->j:Lkvn;

    const-string/jumbo v2, "SHA1WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkwv;->A:Lkvn;

    const-string/jumbo v2, "SHA224WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->g:Ljava/util/Hashtable;

    sget-object v1, Lkwv;->B:Lkvn;

    const-string/jumbo v2, "SHA256WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->f:Ljava/util/Hashtable;

    sget-object v1, Lkxd;->f_:Lkvn;

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->f:Ljava/util/Hashtable;

    sget-object v1, Lkyo;->S:Lkvn;

    const-string/jumbo v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkyo;->j:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkyo;->m:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkyo;->n:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkyo;->o:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkyo;->p:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkyo;->T:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkwv;->A:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkwv;->B:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkwm;->e:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkzr;->h:Ljava/util/Set;

    sget-object v1, Lkwm;->f:Lkvn;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lkxn;

    sget-object v1, Lkwy;->i:Lkvn;

    new-instance v2, Lkvk;

    invoke-direct {v2}, Lkvk;-><init>()V

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sget-object v1, Lkzr;->e:Ljava/util/Hashtable;

    const-string/jumbo v2, "SHA1WITHRSAANDMGF1"

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lkzr;->a(Lkxn;I)Lkxg;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lkxn;

    sget-object v1, Lkwv;->d:Lkvn;

    new-instance v2, Lkvk;

    invoke-direct {v2}, Lkvk;-><init>()V

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sget-object v1, Lkzr;->e:Ljava/util/Hashtable;

    const-string/jumbo v2, "SHA224WITHRSAANDMGF1"

    const/16 v3, 0x1c

    invoke-static {v0, v3}, Lkzr;->a(Lkxn;I)Lkxg;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lkxn;

    sget-object v1, Lkwv;->a:Lkvn;

    new-instance v2, Lkvk;

    invoke-direct {v2}, Lkvk;-><init>()V

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sget-object v1, Lkzr;->e:Ljava/util/Hashtable;

    const-string/jumbo v2, "SHA256WITHRSAANDMGF1"

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lkzr;->a(Lkxn;I)Lkxg;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lkxn;

    sget-object v1, Lkwv;->b:Lkvn;

    new-instance v2, Lkvk;

    invoke-direct {v2}, Lkvk;-><init>()V

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sget-object v1, Lkzr;->e:Ljava/util/Hashtable;

    const-string/jumbo v2, "SHA384WITHRSAANDMGF1"

    const/16 v3, 0x30

    invoke-static {v0, v3}, Lkzr;->a(Lkxn;I)Lkxg;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lkxn;

    sget-object v1, Lkwv;->c:Lkvn;

    new-instance v2, Lkvk;

    invoke-direct {v2}, Lkvk;-><init>()V

    invoke-direct {v0, v1, v2}, Lkxn;-><init>(Lkvn;Lkva;)V

    sget-object v1, Lkzr;->e:Ljava/util/Hashtable;

    const-string/jumbo v2, "SHA512WITHRSAANDMGF1"

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lkzr;->a(Lkxn;I)Lkxg;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Lkxn;I)Lkxg;
    .locals 5

    new-instance v0, Lkxg;

    new-instance v1, Lkxn;

    sget-object v2, Lkxd;->k_:Lkvn;

    invoke-direct {v1, v2, p0}, Lkxn;-><init>(Lkvn;Lkva;)V

    new-instance v2, Lkvj;

    invoke-direct {v2, p1}, Lkvj;-><init>(I)V

    new-instance v3, Lkvj;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lkvj;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, v3}, Lkxg;-><init>(Lkxn;Lkxn;Lkvj;Lkvj;)V

    return-object v0
.end method


# virtual methods
.method public final a()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    const-string/jumbo v0, "DER"

    invoke-virtual {p0, v0}, Lkzr;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
