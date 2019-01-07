.class public Lcom/taobao/securityjni/bcast/AppStateManager;
.super Ljava/lang/Object;
.source "AppStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DNS_ACTION:Ljava/lang/String; = "setaobao.bbox.DNS"

.field public static final EXTRA_DNS_IP:Ljava/lang/String; = "IPAddress"

.field public static final EXTRA_DNS_LOCAL:Ljava/lang/String; = "DNSinfolocal"

.field public static final EXTRA_DNS_NET:Ljava/lang/String; = "DNSinfonet"

.field public static final EXTRA_RT:Ljava/lang/String; = "RTinfo"

.field public static final EXTRA_SPITEP:Ljava/lang/String; = "SPITEPinfo"

.field private static final IPV4_SIZE:I = 0x4

.field public static Init:I = 0x0

.field public static final RT_ACTION:Ljava/lang/String; = "setaobao.bbox.RT"

.field public static final RT_VALUE_100_PERMISSION:I = 0xa

.field public static final RT_VALUE_INVALID:I = -0x1

.field public static final RT_VALUE_LIKELY_1:I = 0x1

.field public static final RT_VALUE_LIKELY_2:I = 0x2

.field public static final RT_VALUE_LIKELY_3:I = 0x3

.field public static final RT_VALUE_LIKELY_4:I = 0x4

.field public static final RT_VALUE_LIKELY_5:I = 0x5

.field public static final RT_VALUE_LIKELY_6:I = 0x6

.field public static final RT_VALUE_LIKELY_7:I = 0x7

.field public static final RT_VALUE_LIKELY_8:I = 0x8

.field public static final RT_VALUE_LIKELY_9:I = 0x9

.field public static final RT_VALUE_UNDETECTABLE:I = 0x0

.field public static final SPITEP_ACTION:Ljava/lang/String; = "setaobao.bbox.SPITEP"

.field public static final SPITEP_VALUE_NS_0:I = 0x0

.field public static final SPITEP_VALUE_NS_1:I = 0x1

.field public static final SPITEP_VALUE_NS_2:I = 0x2

.field public static final SPITEP_VALUE_NS_3:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/taobao/securityjni/bcast/AppStateManager;->Init:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parserDomainIP(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    .line 114
    const-string/jumbo v10, "IPAddress"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 115
    .local v3, "ip":[B
    if-nez v3, :cond_1

    .line 116
    const/4 v0, 0x0

    .line 147
    :cond_0
    return-object v0

    .line 118
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "dip":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;>;"
    const/4 v4, 0x0

    .line 124
    .local v4, "ipAddr":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v3

    if-ge v2, v10, :cond_0

    .line 125
    aget-byte v10, v3, v2

    and-int/lit16 v9, v10, 0xff

    .line 126
    .local v9, "namelen":I
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v3, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 127
    .local v8, "name":Ljava/lang/String;
    add-int v10, v2, v9

    add-int/lit8 v2, v10, 0x1

    .line 129
    aget-byte v10, v3, v2

    and-int/lit16 v5, v10, 0xff

    .line 130
    .local v5, "iplen":I
    add-int v10, v5, v2

    array-length v11, v3

    add-int/lit8 v11, v11, -0x1

    if-gt v10, v11, :cond_0

    .line 133
    div-int/lit8 v6, v5, 0x4

    .line 134
    .local v6, "itemNum":I
    if-lez v6, :cond_2

    .line 135
    filled-new-array {v6, v13}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ipAddr":[[B
    check-cast v4, [[B

    .line 136
    .restart local v4    # "ipAddr":[[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 137
    add-int/lit8 v10, v2, 0x1

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v10, v11

    aget-object v11, v4, v7

    const/4 v12, 0x0

    invoke-static {v3, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 140
    .end local v7    # "j":I
    :cond_2
    add-int v10, v2, v5

    add-int/lit8 v2, v10, 0x1

    .line 141
    new-instance v1, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;

    invoke-direct {v1}, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;-><init>()V

    .line 142
    .local v1, "domainName":Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;
    iput-object v8, v1, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;->name:Ljava/lang/String;

    .line 143
    iput-object v4, v1, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;->ip:[[B

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
