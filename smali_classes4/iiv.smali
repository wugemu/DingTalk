.class public final Liiv;
.super Ljava/lang/Object;
.source "WalletBury.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
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

.method public static a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "methodMethod"    # Ljava/lang/String;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 19
    new-instance v0, Liiv$1;

    invoke-direct {v0, p0, p1, p2}, Liiv$1;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v0, v1}, Liiv$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    return-void
.end method
