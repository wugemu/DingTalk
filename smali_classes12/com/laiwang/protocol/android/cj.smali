.class public Lcom/laiwang/protocol/android/cj;
.super Ljava/lang/Object;
.source "LWTlsUtil.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/cj;->a:Ljava/util/Map;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cdn1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cdn2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "cdn3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cdn4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "cdn5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "test"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/cj;->b:Ljava/util/List;

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/laiwang/protocol/android/cj;->c:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static a(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 97
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Illegal hexadecimal character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    sget-object v1, Lcom/laiwang/protocol/android/cj;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/laiwang/protocol/android/cj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Lcom/laiwang/protocol/android/cj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/laiwang/protocol/android/cj;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1
.end method

.method public static a([C)[B
    .locals 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p0, :cond_1

    const/4 v5, 0x0

    new-array v4, v5, [B

    .line 92
    :cond_0
    return-object v4

    .line 79
    :cond_1
    array-length v3, p0

    .line 80
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    .line 81
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Odd number of characters."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_2
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 85
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 86
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/laiwang/protocol/android/cj;->a(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 87
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 88
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/laiwang/protocol/android/cj;->a(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static a([B)[C
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 60
    if-nez p0, :cond_1

    const/4 v5, 0x0

    new-array v4, v5, [C

    .line 70
    :cond_0
    return-object v4

    .line 61
    :cond_1
    array-length v3, p0

    .line 62
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 63
    .local v4, "out":[C
    const/4 v0, 0x0

    .line 65
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 66
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lcom/laiwang/protocol/android/cj;->c:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 67
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lcom/laiwang/protocol/android/cj;->c:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 74
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/laiwang/protocol/android/cj;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/android/cj;->c(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/cj;->a([C)[B

    move-result-object v0

    .line 31
    .local v0, "bytes":[B
    sget-object v1, Lcom/laiwang/protocol/android/cj;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)[C
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "3082028b308201f4020900f1510febb100b4a3300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330363032303032365a170d3234303330333032303032365a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100c3c0cdd2f207fc90f9b7e7253a7269e732be105c6bf0dffb6fc484c084d05046472e3a2254ba08fb8dcc55b7527daea69eb8c39a0555ea56e8664d0e75a299045798fd69e4e6b224be4bf9ed302449e902a7dc498e80ba41e51e5a9983cf3aab43eb20cb19246d36c42466cd6da002551799315f859a4ab5ae8426012751a42d0203010001300d06092a864886f70d0101050500038181001dddce078878d7354a9693aa8c3447b05034aa363349410cfd51639740c1305b068f7ea7f4dfb4e7101ae4757a55090ad82362697f5c5cd4dbc468096539093fc231923e037340292d5d63563c77de9a6cfd5d91a8d1acfee66420c67ca090e9964439ec6d0fb002a9919117bac15acb66770e2cf707ae31d580945068c33f6f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string/jumbo v0, "cdn1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string/jumbo v0, "3082028b308201f402090090262e4004b16524300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330353033333230305a170d3234303330323033333230305a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100947d419e84c3067a5c647ad9b1a9ab46a0472968bf619116905a3bf9f6b60e27ec140152e77a00c239c39c2edf987e462f3a59e2b906f40fb9f974c00e03a98d72baa181bb390bb99cae8b80c735fbef80982514757ea49f51405bd3828e6889c7575790ebeed50a1fd333388c3ad199923043ff5e40ae95f59416b0711a32cf0203010001300d06092a864886f70d0101050500038181007b3eb08a5a0e9058fbe852181f23b3cac632d5415f1c626c04d739c5c14d0fb169f0a25d938bf6595df142a13b202eb674f8df5a7055991ade1132e5af56be8f9270ac6ba2bf85f4dcac36b8a92415c7a2773204cd5e31605551e600d6c659ef5d2f76358feee1e9d4df4f84ab78821ef4c94e4e74da896c4043343e76aeb8cf"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v0, "cdn2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const-string/jumbo v0, "3082028b308201f4020900b1f35ea5c48fd7d3300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330353033333230305a170d3234303330323033333230305a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100db2519117b93121c1f56957471da604c99ff2423579a980ae32931df01649bde995d48a1d7b33346840de1d385b46e56b60a11e7eaff9081535411e0117bb20a7302eb7ec8a6e11b42449e5339ac3e53b94268a5c04f5d94fca6cdc5aa6058ce4bb8f3056a7f94ce62963f1d6f1600442842dd9da57f9ed33a2835a4f8b540a10203010001300d06092a864886f70d010105050003818100b563a96add5d4c566decfff9c13bc04850511a6eb4b5aa92fa50410b0bfdb4204b776ef15df6c7da88df84add943c3c3036472c861cad00b5686bee6cf072043917dc4aea9daf9b47490a49aa031fbd5cf2ee14de0435b083e589fd2ea9e801fc2b0a2672966d44b0d0d86ffae69bdd626b7cc2e7e15a946a459c50c3b4dbf44"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    const-string/jumbo v0, "cdn3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    const-string/jumbo v0, "3082028b308201f4020900aff013a5a313603f300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330353033333230305a170d3234303330323033333230305a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100c8d6012910565f9732a2205e0bfd86658d1e8522146e1d7e2fce09457bae4274147fc035c488c5957a7fae5d0d151f20b5f7efc3ab6254cc20d5cea691462c0e898177a2c70151e396d5dcc0081e9c9a1ac1eb5db6ec634caf0f3bacf7cadf3b8c35e499a6134b8a04f92fdd508f89beffaf3dc89b475546661392ea5aa5e1890203010001300d06092a864886f70d0101050500038181001ab4d2d7e5b837fbd4cd6ff68b04659f6994b80329c02b67589c1796bbd69121ae05ac595247d54b89720db63f2a95142aa476d519058672b818d33d9b897a75c2a786101a37482e1df29ea49a6fbe222785ca6c0e3e0baf2471131204c0d05d12b828f3294693399733288947e603513cd1e3708af34dffc032941fe8d2e3d7"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo v0, "cdn4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    const-string/jumbo v0, "3082028b308201f402090097c4e153b6d3b5f9300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330353033333230305a170d3234303330323033333230305a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100a2b4c6d642da12723b85554f01fd3f559e26b72c6a3199f7600a22c9445b5170312d3679818af9fc5718315b8a81b94f6e295228361535c6f9cb5ef0b027ade101fc6e29d31088f761c017c1381ad25a3494ad2beaa7ca396ee653cc9c352d29b547759b439bb51ce9a71e77bfa2b43c96c44cb40ae2ba7c1c159ec2304928470203010001300d06092a864886f70d0101050500038181009079e0ea2a0f87cc8260a409852af8c52cc2f566ca52cfc40242a460ace6eae704701a06fca50e68ab2a60bcd80caff29683b1f9658dca1a4675ad81a4bcaff4e4a5a8a6e423a61b764e76d0e43a80eeda1e82f7392ea9785c5094a08fd00e54cefa153c24b7be830e3ad5f353fdc025c3b03d8f7a22022e9dfa326940651fe4"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_4
    const-string/jumbo v0, "cdn5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    const-string/jumbo v0, "3082028b308201f4020900eb98cbbc5841b7e4300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330353033333230305a170d3234303330323033333230305a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100e2b3e846bcabdd5596d10c46a743c56ba8b0e701fec5518cab576923fd1648c971302e20906387c5d2db27cfe38c9c760953a49c313768ba2f6c984d32ea0813892f732fb189dd85d0d0cffa223d8d08b3322bb1df806172d3f43a279c5a0811aa37be8b5e45fa33f755d9f4f5d59f793b391fdd885a278767847f8aa0ea85a90203010001300d06092a864886f70d01010505000381810054a4789a90ed3eaf55e1767325ce533c58b1dc77d71357a9801985c27f84375962897e75b3ef77e1b4bc569ec04a4e0037a75c6cfe9d608b6de511752e14e70dbb9115a760edb3e179513d649e7e4fa756b96f6e551543116915e44af677eeb44afcb03ace8b9d8a77366af445a5c254291a038a4c08cd7e2d7043dec2e803f7"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_5
    const-string/jumbo v0, "3082028b308201f40209009f243e2a961631bb300d06092a864886f70d0101050500308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d301e170d3134303330353033333230305a170d3234303330323033333230305a308189310b300906035504061302434e3111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f7531143012060355040a130b616c69626162612e636f6d3110300e060355040b13076c616977616e67310c300a060355040313036c7773311e301c06092a864886f70d010901160f6c7571694074616f62616f2e636f6d30819f300d06092a864886f70d010101050003818d0030818902818100cc250009e139754a07d72258284f575201648b6b372206f4db6d0ff614bd2a606584b95768aa3cc83097ae35113a6fe0d998108ee6bb47611bb2b37ee903e654cb94dd3c6c5dce1d1bb6f3bb2b0000beb737905f37deafc482914e6331aa6920b37d6f09754b6bfa7a623e8e80aabacd2437149b253bc778a56bf5d3ad36edbb0203010001300d06092a864886f70d01010505000381810022c616fbef14ba18b2185369f357524c2a7fb6a9ac7c9e94b6a260e3ba6d5b4be244fdb1ee5adf1507ce2c9b7b7e3ea7aa950cb21446e07ff0427b8a61d90da4943cba0a5db669c40263b8ae89bbc4349e66692f08140a68821448c97d977ad3b1c48868d6cdbf6ddd582781251fb8e63e3b6ba0212edb520624ac3be7249cf8"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method
