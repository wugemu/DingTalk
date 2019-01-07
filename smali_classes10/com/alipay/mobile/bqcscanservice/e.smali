.class public final Lcom/alipay/mobile/bqcscanservice/e;
.super Ljava/lang/Object;
.source "MPaasLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/bqcscanservice/e$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/alipay/mobile/bqcscanservice/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/e$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/e$a;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/e$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/e$a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/e$a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
