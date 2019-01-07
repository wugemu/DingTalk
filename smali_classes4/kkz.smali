.class public final Lkkz;
.super Ljava/lang/Object;
.source "CodeVerifierUtil.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "^[0-9a-zA-Z\\-\\.\\_\\~]{43,128}$"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkkz;->a:Ljava/util/regex/Pattern;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This type is not intended to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1121
    const-string/jumbo v1, "entropySource cannot be null"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string/jumbo v1, "entropyBytes is less than the minimum permitted"

    invoke-static {v2, v1}, Lkle;->a(ZLjava/lang/Object;)V

    .line 1124
    const-string/jumbo v1, "entropyBytes is greater than the maximum permitted"

    invoke-static {v2, v1}, Lkle;->a(ZLjava/lang/Object;)V

    .line 1126
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 1127
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1128
    const/16 v0, 0xb

    invoke-static {v1, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "codeVerifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    const/16 v0, 0x2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "codeVerifier length is shorter than allowed by the PKCE specification"

    invoke-static {v0, v3}, Lkle;->a(ZLjava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x80

    if-gt v0, v3, :cond_1

    :goto_1
    const-string/jumbo v0, "codeVerifier length is longer than allowed by the PKCE specification"

    invoke-static {v1, v0}, Lkle;->a(ZLjava/lang/Object;)V

    .line 103
    sget-object v0, Lkkz;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string/jumbo v1, "codeVerifier string contains illegal characters"

    invoke-static {v0, v1}, Lkle;->a(ZLjava/lang/Object;)V

    .line 105
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 161
    const-string/jumbo v0, "S256"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "plain"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "codeVerifier"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 139
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 140
    .local v2, "sha256Digester":Ljava/security/MessageDigest;
    const-string/jumbo v3, "ISO_8859_1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 142
    .local v0, "digestBytes":[B
    const/16 v3, 0xb

    invoke-static {v0, v3}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 145
    .end local v0    # "digestBytes":[B
    .end local v2    # "sha256Digester":Ljava/security/MessageDigest;
    .end local p0    # "codeVerifier":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 143
    .restart local p0    # "codeVerifier":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, "SHA-256 is not supported on this device! Using plain challenge"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lklq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "ISO-8859-1 encoding not supported on this device!"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lklq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "ISO-8859-1 encoding not supported"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
