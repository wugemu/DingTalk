.class public Lcom/alipay/euler/andfix/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Compat"

.field private static sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    .line 42
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->checkBlackList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->checkSupportSDKVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->checkRuntimeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isX86CPU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->setup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const-string/jumbo v0, "Compat"

    const-string/jumbo v1, "AndFix.setup() => false"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    .line 52
    :cond_1
    const-string/jumbo v0, "Compat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AndFix.Compat: sAndFixVM="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBlackList()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method private static checkRuntimeSupport()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isYunOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isAOC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v0, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    goto :goto_0
.end method

.method private static checkSupportSDKVersion()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/16 v2, 0x8

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .local v1, "sdkInt":I
    if-lt v1, v2, :cond_1

    .line 127
    if-lt v1, v2, :cond_0

    if-ge v1, v3, :cond_0

    .line 128
    const-string/jumbo v2, "java.vm.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v2, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    .line 147
    const/4 v0, 0x1

    .line 155
    .local v0, "isSupport":Z
    :goto_0
    return v0

    .line 149
    .end local v0    # "isSupport":Z
    :cond_0
    if-lt v1, v3, :cond_1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_1

    .line 150
    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    sput-object v2, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    .line 151
    const/4 v0, 0x1

    .restart local v0    # "isSupport":Z
    goto :goto_0

    .line 153
    .end local v0    # "isSupport":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSupport":Z
    goto :goto_0
.end method

.method public static getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    return-object v0
.end method

.method public static isAOC()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    :try_start_0
    const-string/jumbo v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 186
    .local v2, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "persist.sys.dalvik.vm.lib"

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "runtimeLib":Ljava/lang/String;
    const-string/jumbo v5, "Compat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "runtimeLib is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v1, :cond_1

    .line 191
    const-string/jumbo v5, "libart.so"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v1    # "runtimeLib":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 196
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    .restart local v1    # "runtimeLib":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "persist.sys.dalvik.vm.lib.2"

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "runtimeLib":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 197
    .restart local v1    # "runtimeLib":Ljava/lang/String;
    const-string/jumbo v5, "Compat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "runtimeLib2 is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz v1, :cond_2

    .line 199
    const-string/jumbo v5, "libart.so"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v1    # "runtimeLib":Ljava/lang/String;
    :cond_2
    :goto_1
    move v3, v4

    .line 207
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static isSupport()Z
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/alipay/euler/andfix/Compat;->sAndFixVM:Lcom/alipay/euler/andfix/AndFixVM;

    iget v0, v0, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    iget v1, v1, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isX86CPU()Z
    .locals 9

    .prologue
    .line 56
    const/4 v5, 0x0

    .line 58
    .local v5, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 59
    .local v3, "ir":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 61
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "getprop ro.product.cpu.abi"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 62
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .local v4, "ir":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "abi":Ljava/lang/String;
    const-string/jumbo v6, "x86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    const-string/jumbo v6, "Compat"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "AndFix.Compat: cpu: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 80
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 85
    :goto_1
    if-eqz v5, :cond_0

    .line 87
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 89
    :cond_0
    :goto_2
    const/4 v6, 0x1

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 92
    .end local v0    # "abi":Ljava/lang/String;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :goto_3
    return v6

    .line 73
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 80
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 85
    :goto_5
    if-eqz v5, :cond_8

    .line 87
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 92
    .end local v0    # "abi":Ljava/lang/String;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_2
    :goto_6
    const/4 v6, 0x0

    goto :goto_3

    .line 89
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 71
    .end local v0    # "abi":Ljava/lang/String;
    :catch_1
    move-exception v6

    :goto_7
    if-eqz v1, :cond_3

    .line 73
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 78
    :cond_3
    :goto_8
    if-eqz v3, :cond_4

    .line 80
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 85
    :cond_4
    :goto_9
    if-eqz v5, :cond_2

    .line 87
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    .line 89
    :catch_2
    move-exception v6

    goto :goto_6

    .line 71
    :catchall_0
    move-exception v6

    :goto_a
    if-eqz v1, :cond_5

    .line 73
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 78
    :cond_5
    :goto_b
    if-eqz v3, :cond_6

    .line 80
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 85
    :cond_6
    :goto_c
    if-eqz v5, :cond_7

    .line 87
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 89
    :cond_7
    :goto_d
    throw v6

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    goto :goto_2

    :catch_6
    move-exception v6

    goto :goto_4

    :catch_7
    move-exception v6

    goto :goto_5

    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v6

    goto :goto_8

    :catch_9
    move-exception v6

    goto :goto_9

    :catch_a
    move-exception v7

    goto :goto_b

    :catch_b
    move-exception v7

    goto :goto_c

    :catch_c
    move-exception v7

    goto :goto_d

    .line 71
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_a

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_a

    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v6

    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :cond_8
    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6
.end method

.method public static isYunOS()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 166
    .local v3, "vmName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 168
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.yunos.version"

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 169
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "java.vm.name"

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "lemur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v4, v5

    .line 177
    :goto_1
    return v4

    :cond_2
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method
