.class public Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
.super Ljava/lang/Object;
.source "VerifyIdentityResult.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "1003"

.field public static final CANCEL_SUB_BY_ENGINE:Ljava/lang/String; = "101"

.field public static final CANCEL_SUB_BY_USER_ON_BUTTON:Ljava/lang/String; = "102"

.field public static final CANCEL_SUB_GET_PWD:Ljava/lang/String; = "103"

.field public static final EXPIRED:Ljava/lang/String; = "1004"

.field public static final FACE_SDK_ERR:Ljava/lang/String; = "1006"

.field public static final FAIL:Ljava/lang/String; = "1001"

.field public static final MODULE_EXCEPTION:Ljava/lang/String; = "2002"

.field public static final OTHERS:Ljava/lang/String; = "1002"

.field public static final RPC_EXCEPTION:Ljava/lang/String; = "2003"

.field public static final SUB_CODE_KEY:Ljava/lang/String; = "subCode"

.field public static final SUCCESS_SUB_ON_SILENT_CERT:Ljava/lang/String; = "104"

.field public static final SUCESS:Ljava/lang/String; = "1000"

.field public static final TASK_CANT_GO_ON:Ljava/lang/String; = "2006"

.field public static final TASK_DUPLICATE:Ljava/lang/String; = "2004"

.field public static final TASK_OVERLIMIT:Ljava/lang/String; = "2005"

.field public static final TASK_TIMEOUT:Ljava/lang/String; = "2001"

.field public static final TOKEN_EMPTY:Ljava/lang/String; = "2000"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->a:Ljava/lang/String;

    .line 127
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->a:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->b:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->a:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->b:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->d:Ljava/util/HashMap;

    .line 138
    return-void
.end method


# virtual methods
.method public getBizResponseData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBizResponseData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->c:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->a:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setExtInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->d:Ljava/util/HashMap;

    .line 166
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->b:Ljava/lang/String;

    .line 150
    return-void
.end method
