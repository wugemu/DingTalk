.class public final Lkll;
.super Ljava/lang/Object;
.source "BrowserDescriptor.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Z)V
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "useCustomTab"    # Z

    .prologue
    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 68
    invoke-static {v1}, Lkll;->a([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 66
    invoke-direct {p0, v0, v1, v2, p2}, Lkll;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "useCustomTab"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "signatureHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lkll;->a:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lkll;->b:Ljava/util/Set;

    .line 96
    iput-object p3, p0, Lkll;->c:Ljava/lang/String;

    .line 97
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkll;->d:Ljava/lang/Boolean;

    .line 98
    return-void
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 4
    .param p0, "signature"    # Landroid/content/pm/Signature;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    :try_start_0
    const-string/jumbo v2, "SHA-512"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 151
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 152
    .local v1, "hashBytes":[B
    const/16 v2, 0xa

    invoke-static {v1, v2}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 154
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hashBytes":[B
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Platform does not supportSHA-512 hashing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/Set;
    .locals 5
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v1, "signatureHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 167
    .local v0, "signature":Landroid/content/pm/Signature;
    invoke-static {v0}, Lkll;->a(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "signature":Landroid/content/pm/Signature;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lkll;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 120
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 123
    check-cast v0, Lkll;

    .line 124
    .local v0, "other":Lkll;
    iget-object v3, p0, Lkll;->a:Ljava/lang/String;

    iget-object v4, v0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lkll;->c:Ljava/lang/String;

    iget-object v4, v0, Lkll;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lkll;->d:Ljava/lang/Boolean;

    iget-object v4, v0, Lkll;->d:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lkll;->b:Ljava/util/Set;

    iget-object v4, v0, Lkll;->b:Ljava/util/Set;

    .line 127
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v5, 0x16a95

    .line 132
    iget-object v2, p0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 134
    .local v0, "hash":I
    mul-int v2, v5, v0

    iget-object v3, p0, Lkll;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 135
    mul-int v3, v5, v0

    iget-object v2, p0, Lkll;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int v0, v3, v2

    .line 137
    iget-object v2, p0, Lkll;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "signatureHash":Ljava/lang/String;
    mul-int v3, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 139
    goto :goto_1

    .line 135
    .end local v1    # "signatureHash":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :cond_1
    return v0
.end method
