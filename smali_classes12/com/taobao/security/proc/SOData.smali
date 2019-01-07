.class public Lcom/taobao/security/proc/SOData;
.super Ljava/lang/Object;
.source "SOData.java"


# static fields
.field private static final EABI_X86:Ljava/lang/String; = "x86"

.field private static final EABI_arm_v7a:Ljava/lang/String; = "armeabi_v7a"

.field private static final EABI_arm_v7a1:Ljava/lang/String; = "armeabi-v7a"

.field private static final EABI_arme:Ljava/lang/String; = "armeabi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSoData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "soName"    # Ljava/lang/String;
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "result":[B
    sget-object v1, Lcom/taobao/security/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const-string/jumbo v1, "x86"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const-string/jumbo v1, "armeabi_v7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "armeabi-v7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    :cond_2
    invoke-static {}, Lcom/taobao/security/proc/arm/one/ArmSoDataOne;->getData()[B

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_3
    const-string/jumbo v1, "armeabi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Lcom/taobao/security/proc/arm/one/ArmSoDataOne;->getData()[B

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_4
    const-string/jumbo v1, "taobaod"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 31
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const-string/jumbo v1, "x86"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_5
    const-string/jumbo v1, "armeabi_v7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "armeabi-v7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    :cond_6
    invoke-static {}, Lcom/taobao/security/proc/arm/two/ArmSoDataTwo;->getData()[B

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_7
    const-string/jumbo v1, "armeabi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lcom/taobao/security/proc/arm/two/ArmSoDataTwo;->getData()[B

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_8
    const-string/jumbo v1, "libcockroach.so"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "x86"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 44
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 45
    :cond_9
    const-string/jumbo v1, "armeabi_v7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "armeabi-v7a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 46
    :cond_a
    invoke-static {}, Lcom/taobao/security/proc/arm/three/ArmSoDataThree;->getData()[B

    move-result-object v0

    goto/16 :goto_0

    .line 47
    :cond_b
    const-string/jumbo v1, "armeabi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/taobao/security/proc/arm/three/ArmSoDataThree;->getData()[B

    move-result-object v0

    goto/16 :goto_0
.end method
