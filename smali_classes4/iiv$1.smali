.class final Liiv$1;
.super Landroid/os/AsyncTask;
.source "WalletBury.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liiv;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/Class;

.field final synthetic c:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 19
    iput-object p1, p0, Liiv$1;->a:Ljava/lang/String;

    iput-object p2, p0, Liiv$1;->b:[Ljava/lang/Class;

    iput-object p3, p0, Liiv$1;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 22
    const-string/jumbo v2, "com.alipay.mobile.bqcscanservice.behavior.BehaviorBury"

    .line 24
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "buryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Liiv$1;->a:Ljava/lang/String;

    iget-object v5, p0, Liiv$1;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    .local v1, "buryMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    iget-object v5, p0, Liiv$1;->c:[Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 36
    .end local v0    # "buryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "buryMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 27
    :catch_0
    move-exception v3

    .line 28
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "WalletBury"

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 30
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "WalletBury"

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 32
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "WalletBury"

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v3

    .line 34
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "WalletBury"

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
