.class final Lcom/alicom/phonenumberauthsdk/gatewayauth/a/c;
.super Ljava/lang/Object;
.source "CMCCVaildManager.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TraceLogger;


# instance fields
.field final synthetic a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;


# direct methods
.method constructor <init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/c;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-static {p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->b(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 138
    invoke-static {p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->d(Ljava/lang/String;)V

    .line 139
    if-eqz p3, :cond_0

    .line 140
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :cond_0
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    invoke-static {p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->e(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 133
    invoke-static {p2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->c(Ljava/lang/String;)V

    .line 134
    return-void
.end method
