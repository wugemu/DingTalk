.class public Lcom/alipay/mobile/security/faceauth/api/AntDetectFactory;
.super Ljava/lang/Object;
.source "AntDetectFactory.java"


# static fields
.field public static TYPE_FACE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/security/faceauth/api/AntDetectFactory;->TYPE_FACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "clsObj":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 59
    .local v4, "svcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/alipay/mobile/security/bio/module/MicroModule;

    aput-object v6, v3, v5

    .line 60
    .local v3, "paramType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 61
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    const/4 v5, 0x1

    aput-object p2, v2, v5

    .line 62
    .local v2, "ctx":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    .end local v0    # "clsObj":Ljava/lang/Object;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "ctx":[Ljava/lang/Object;
    .end local v3    # "paramType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "svcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "clsObj":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;ILcom/alipay/mobile/security/bio/module/MicroModule;)Lcom/alipay/mobile/security/faceauth/api/AntDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "context Can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can\'t find Authenticator"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :pswitch_0
    const-string/jumbo v1, "com.alipay.mobile.security.faceauth.bean.FaceAuthenticator"

    invoke-static {p0, v1, p2}, Lcom/alipay/mobile/security/faceauth/api/AntDetectFactory;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/api/AntDetector;

    .line 44
    .local v0, "authenticator":Lcom/alipay/mobile/security/faceauth/api/AntDetector;
    return-object v0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
