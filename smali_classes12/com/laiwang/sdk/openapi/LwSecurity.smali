.class public Lcom/laiwang/sdk/openapi/LwSecurity;
.super Ljava/lang/Object;
.source "LwSecurity.java"


# static fields
.field public static a:Z

.field private static c:Lcom/laiwang/sdk/openapi/LwSecurity;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/sdk/openapi/LwSecurity;->a:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/laiwang/sdk/openapi/LwSecurity;->c:Lcom/laiwang/sdk/openapi/LwSecurity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LwSecurity;->b:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LwSecurity;->b:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 178
    .line 1159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1160
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 1161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1162
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1168
    const/4 v0, 0x0

    .line 179
    .local v0, "strSignture":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "308201e53082014ea00302010202044e51feda300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303832323037303134365a170d3431303831343037303134365a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100d863f4f3100ca2bc9d15503284e09b64cad4008144bc48f0bc7e5d0e097f07041e5a2e29520dfbd4e0746401438cb20819de56dc9cf26cdc6c5d1a9da4b32ffa80bc960e7d01c7b067167c5df676d64d916d09d37f9ccad935275dd2e480c360cd95a045263a298b2718a03217ea822c5cef78035cd2b114baac552a104e48670203010001300d06092a864886f70d0101050500038181006d929e4f794c5849e13ae90c8803307778257a6d27be8a32bccee13b370888afefcffeeae52eb2eea985112f46301d3e386bb8dfe8560f1bce2c64e5744be5abbc6b73320c2f2a774a189574d2fafe7ec942455bcdcac51e4805e916321f06356e03b44e8e449c87fd33152ff9d294f3ae85da83fd880a5c4671da7c75d0da0d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "308201e730820150a00302010202044eca1289300d06092a864886f70d010105050030383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f301e170d3131313132313038353734355a170d3434313131323038353734355a30383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f30819f300d06092a864886f70d010101050003818d0030818902818100cb09f672e5ab59a06281794326367a90d306c123e4328536a215d9f0c7c021cf1b1b2a3a2a232ad0b8492e77181cef510bd3c008e0baea3094df301a2f11d90ae89cf6be8a811c66093622f5cf00952fdf53e5bb1d653b1664c839a3d47c3512f882d7c728e9f5f94f281ac5cdb9bd3fe3ffe33021f553c010e3313acf7008d70203010001300d06092a864886f70d010105050003818100ba4fde6c721b3cdf4aa27d0990cb3c764c78d2af888648f0b9593c5c82795b5df057cca2524ea6d38c2105894cc02af04ed2712950d4e3c30bb5f716aba72c012f6576669df95fa9fd0fd8e2559322d48f6c2c3796e1905aaa46f09acbc7755628061246f365301e22e85ca50e27682829d0ff89ba4700c2452d9a373bdab7eb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    return v1

    .line 1163
    .end local v0    # "strSignture":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1164
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1165
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    .restart local v0    # "strSignture":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public native checkCertificate(Ljava/lang/String;)Z
.end method
