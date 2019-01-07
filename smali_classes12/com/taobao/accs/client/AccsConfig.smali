.class public final Lcom/taobao/accs/client/AccsConfig;
.super Ljava/lang/Object;
.source "AccsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;,
        Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;
    }
.end annotation


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;

.field public static c:[[Ljava/lang/String;

.field public static d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

.field public static e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "acs.m.taobao.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "acs.wapa.taobao.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "acs.waptest.taobao.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/accs/client/AccsConfig;->a:[Ljava/lang/String;

    .line 26
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "accscdn.m.taobao.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "accscdn.m.taobao.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "accscdn.waptest.taobao.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/accs/client/AccsConfig;->b:[Ljava/lang/String;

    .line 30
    new-array v0, v2, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "110.75.206.79"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "10.125.50.231"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/accs/client/AccsConfig;->c:[[Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_TAOBAO:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sput-object v0, Lcom/taobao/accs/client/AccsConfig;->d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    .line 46
    sget-object v0, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sput-object v0, Lcom/taobao/accs/client/AccsConfig;->e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-static {v1}, Lib;->a(Lia$a;)V

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lib;->a(Z)V

    .line 168
    invoke-static {v1}, Lib;->a(Liy;)V

    .line 169
    return-void
.end method
