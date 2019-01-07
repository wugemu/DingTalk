.class public final Lnet/openid/appauth/AuthorizationException$a;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lnet/openid/appauth/AuthorizationException;

.field public static final b:Lnet/openid/appauth/AuthorizationException;

.field public static final c:Lnet/openid/appauth/AuthorizationException;

.field public static final d:Lnet/openid/appauth/AuthorizationException;

.field public static final e:Lnet/openid/appauth/AuthorizationException;

.field public static final f:Lnet/openid/appauth/AuthorizationException;

.field public static final g:Lnet/openid/appauth/AuthorizationException;

.field public static final h:Lnet/openid/appauth/AuthorizationException;

.field public static final i:Lnet/openid/appauth/AuthorizationException;

.field public static final j:Lnet/openid/appauth/AuthorizationException;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x9

    .line 217
    const/16 v0, 0x3e8

    const-string/jumbo v1, "invalid_request"

    .line 218
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->a:Lnet/openid/appauth/AuthorizationException;

    .line 223
    const/16 v0, 0x3e9

    const-string/jumbo v1, "unauthorized_client"

    .line 224
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->b:Lnet/openid/appauth/AuthorizationException;

    .line 229
    const/16 v0, 0x3ea

    const-string/jumbo v1, "access_denied"

    .line 230
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->c:Lnet/openid/appauth/AuthorizationException;

    .line 235
    const/16 v0, 0x3eb

    const-string/jumbo v1, "unsupported_response_type"

    .line 236
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->d:Lnet/openid/appauth/AuthorizationException;

    .line 241
    const/16 v0, 0x3ec

    const-string/jumbo v1, "invalid_scope"

    .line 242
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->e:Lnet/openid/appauth/AuthorizationException;

    .line 248
    const/16 v0, 0x3ed

    const-string/jumbo v1, "server_error"

    .line 249
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->f:Lnet/openid/appauth/AuthorizationException;

    .line 255
    const/16 v0, 0x3ee

    const-string/jumbo v1, "temporarily_unavailable"

    .line 256
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->g:Lnet/openid/appauth/AuthorizationException;

    .line 262
    const/16 v0, 0x3ef

    .line 263
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->h:Lnet/openid/appauth/AuthorizationException;

    .line 271
    const/16 v0, 0x3f0

    .line 272
    invoke-static {v0, v3}, Lnet/openid/appauth/AuthorizationException;->access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->i:Lnet/openid/appauth/AuthorizationException;

    .line 278
    const-string/jumbo v0, "Response state param did not match request state"

    .line 279
    invoke-static {v2, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->j:Lnet/openid/appauth/AuthorizationException;

    .line 281
    new-array v0, v2, [Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->a:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->b:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->c:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->d:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->e:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->f:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->g:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->h:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/openid/appauth/AuthorizationException$a;->i:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    .line 282
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$a;->k:Ljava/util/Map;

    .line 281
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    sget-object v1, Lnet/openid/appauth/AuthorizationException$a;->k:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 300
    .local v0, "ex":Lnet/openid/appauth/AuthorizationException;
    if-eqz v0, :cond_0

    .line 303
    .end local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :goto_0
    return-object v0

    .restart local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :cond_0
    sget-object v0, Lnet/openid/appauth/AuthorizationException$a;->i:Lnet/openid/appauth/AuthorizationException;

    goto :goto_0
.end method
