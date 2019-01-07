.class public final Lnet/openid/appauth/AuthorizationException$c;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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

.field private static final i:Ljava/util/Map;
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    const/16 v0, 0x7d0

    const-string/jumbo v1, "invalid_request"

    .line 320
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->a:Lnet/openid/appauth/AuthorizationException;

    .line 325
    const/16 v0, 0x7d1

    const-string/jumbo v1, "invalid_client"

    .line 326
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->b:Lnet/openid/appauth/AuthorizationException;

    .line 331
    const/16 v0, 0x7d2

    const-string/jumbo v1, "invalid_grant"

    .line 332
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->c:Lnet/openid/appauth/AuthorizationException;

    .line 337
    const/16 v0, 0x7d3

    const-string/jumbo v1, "unauthorized_client"

    .line 338
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->d:Lnet/openid/appauth/AuthorizationException;

    .line 343
    const/16 v0, 0x7d4

    const-string/jumbo v1, "unsupported_grant_type"

    .line 344
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->e:Lnet/openid/appauth/AuthorizationException;

    .line 349
    const/16 v0, 0x7d5

    const-string/jumbo v1, "invalid_scope"

    .line 350
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->f:Lnet/openid/appauth/AuthorizationException;

    .line 356
    const/16 v0, 0x7d6

    .line 357
    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->g:Lnet/openid/appauth/AuthorizationException;

    .line 365
    const/16 v0, 0x7d7

    .line 366
    invoke-static {v0, v2}, Lnet/openid/appauth/AuthorizationException;->access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->h:Lnet/openid/appauth/AuthorizationException;

    .line 368
    const/16 v0, 0x8

    new-array v0, v0, [Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->a:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->b:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->c:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->d:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->e:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->f:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->g:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/openid/appauth/AuthorizationException$c;->h:Lnet/openid/appauth/AuthorizationException;

    aput-object v2, v0, v1

    .line 369
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$c;->i:Ljava/util/Map;

    .line 368
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 384
    sget-object v1, Lnet/openid/appauth/AuthorizationException$c;->i:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 385
    .local v0, "ex":Lnet/openid/appauth/AuthorizationException;
    if-eqz v0, :cond_0

    .line 388
    .end local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :goto_0
    return-object v0

    .restart local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    :cond_0
    sget-object v0, Lnet/openid/appauth/AuthorizationException$c;->h:Lnet/openid/appauth/AuthorizationException;

    goto :goto_0
.end method
