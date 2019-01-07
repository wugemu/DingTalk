.class public Lcom/alipay/mobile/antsecurityguard/ASG;
.super Ljava/lang/Object;
.source "ASG.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/antsecurityguard/ASG;->a:Z

    .line 18
    :try_start_0
    const-string/jumbo v2, "ASG_1.1.0"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/antsecurityguard/ASG;->a:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 23
    .local v1, "w":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "link error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 25
    .end local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    .end local v1    # "w":Ljava/io/Writer;
    :catch_1
    move-exception v0

    .line 26
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native init(Ljava/lang/Object;)I
.end method

.method public native methodDA(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method public native methodDE(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public native methodDL(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public native methodDM(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public native methodHD(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method
