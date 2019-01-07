.class public final Ljex;
.super Ljew;
.source "H5PluginVIListenerOfVid.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;


# direct methods
.method public constructor <init>(Ljfa;)V
    .locals 0
    .param p1, "listener"    # Ljfa;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljew;-><init>(Ljfa;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 0
    .param p1, "verifyId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "bizName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Ljex;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    .line 15
    return-void
.end method
