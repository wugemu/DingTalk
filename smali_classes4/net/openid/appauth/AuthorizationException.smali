.class public final Lnet/openid/appauth/AuthorizationException;
.super Ljava/lang/Exception;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationException$c;,
        Lnet/openid/appauth/AuthorizationException$a;,
        Lnet/openid/appauth/AuthorizationException$b;
    }
.end annotation


# static fields
.field public static final EXTRA_EXCEPTION:Ljava/lang/String; = "net.openid.appauth.AuthorizationException"

.field private static final HASH_MULTIPLIER:I = 0x1f

.field static final KEY_CODE:Ljava/lang/String; = "code"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ERROR:Ljava/lang/String; = "error"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "errorDescription"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ERROR_URI:Ljava/lang/String; = "errorUri"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_TYPE:Ljava/lang/String; = "type"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PARAM_ERROR:Ljava/lang/String; = "error"

.field public static final PARAM_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final PARAM_ERROR_URI:Ljava/lang/String; = "error_uri"

.field public static final TYPE_GENERAL_ERROR:I = 0x0

.field public static final TYPE_OAUTH_AUTHORIZATION_ERROR:I = 0x1

.field public static final TYPE_OAUTH_REGISTRATION_ERROR:I = 0x4

.field public static final TYPE_OAUTH_TOKEN_ERROR:I = 0x2

.field public static final TYPE_RESOURCE_SERVER_AUTHORIZATION_ERROR:I = 0x3


# instance fields
.field public final code:I

.field public final error:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final errorDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final errorUri:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "errorDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "errorUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "rootCause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 632
    invoke-direct {p0, p4, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    iput p1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 634
    iput p2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    .line 635
    iput-object p3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    .line 636
    iput-object p4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 637
    iput-object p5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    .line 638
    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->generalEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->authEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # [Lnet/openid/appauth/AuthorizationException;

    .prologue
    .line 47
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationException;->exceptionMapByString([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->tokenEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->registrationEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method private static authEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 459
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x1

    move v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static varargs exceptionMapByString([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;
    .locals 5
    .param p0, "exceptions"    # [Lnet/openid/appauth/AuthorizationException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/openid/appauth/AuthorizationException;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationException;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 575
    new-instance v1, Lfk;

    if-eqz p0, :cond_1

    array-length v2, p0

    :goto_0
    invoke-direct {v1, v2}, Lfk;-><init>(I)V

    .line 578
    .local v1, "map":Lfk;, "Lfk<Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;>;"
    if-eqz p0, :cond_2

    .line 579
    array-length v2, p0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v0, p0, v3

    .line 580
    .local v0, "ex":Lnet/openid/appauth/AuthorizationException;
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 581
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ex":Lnet/openid/appauth/AuthorizationException;
    .end local v1    # "map":Lfk;, "Lfk<Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;>;"
    :cond_1
    move v2, v3

    .line 575
    goto :goto_0

    .line 586
    .restart local v1    # "map":Lfk;, "Lfk<Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;>;"
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;
    .locals 3
    .param p0, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 560
    invoke-static {p0}, Lkle;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo v1, "net.openid.appauth.AuthorizationException"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    const/4 v1, 0x0

    .line 567
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "net.openid.appauth.AuthorizationException"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Intent contains malformed exception data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 533
    const-string/jumbo v0, "jsonStr cannot be null or empty"

    invoke-static {p0, v0}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 534
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 543
    const-string/jumbo v0, "json cannot be null"

    invoke-static {p0, v0}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const-string/jumbo v1, "type"

    .line 545
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "code"

    .line 546
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "error"

    .line 547
    invoke-static {p0, v3}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "errorDescription"

    .line 548
    invoke-static {p0, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "errorUri"

    .line 549
    invoke-static {p0, v5}, Lklc;->e(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromOAuthRedirect(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    .locals 10
    .param p0, "redirectUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 514
    const-string/jumbo v0, "error"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "error":Ljava/lang/String;
    const-string/jumbo v0, "error_description"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 516
    .local v8, "errorDescription":Ljava/lang/String;
    const-string/jumbo v0, "error_uri"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "errorUri":Ljava/lang/String;
    invoke-static {v3}, Lnet/openid/appauth/AuthorizationException$a;->a(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v7

    .line 518
    .local v7, "base":Lnet/openid/appauth/AuthorizationException;
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    iget v1, v7, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, v7, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eqz v8, :cond_0

    move-object v4, v8

    :goto_0
    if-eqz v9, :cond_1

    .line 523
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0

    .line 518
    :cond_0
    iget-object v4, v7, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_1
    iget-object v5, v7, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "errorOverride"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorDescriptionOverride"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "errorUriOverride"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 500
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eqz p1, :cond_0

    move-object v3, p1

    :goto_0
    if-eqz p2, :cond_1

    move-object v4, p2

    :goto_1
    if-eqz p3, :cond_2

    move-object v5, p3

    :goto_2
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    goto :goto_2
.end method

.method public static fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rootCause"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 481
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static generalEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "errorDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 454
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    move v2, p0

    move-object v4, p1

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static registrationEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 469
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x4

    move v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static tokenEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 7
    .param p0, "code"    # I
    .param p1, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 464
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x2

    move v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 681
    if-ne p1, p0, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 685
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lnet/openid/appauth/AuthorizationException;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 686
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 689
    check-cast v0, Lnet/openid/appauth/AuthorizationException;

    .line 690
    .local v0, "other":Lnet/openid/appauth/AuthorizationException;
    iget v3, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v4, v0, Lnet/openid/appauth/AuthorizationException;->type:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iget v4, v0, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 696
    iget v0, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 670
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 671
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "net.openid.appauth.AuthorizationException"

    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    return-object v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 646
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 647
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "type"

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 648
    const-string/jumbo v1, "code"

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 649
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string/jumbo v1, "errorDescription"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string/jumbo v1, "errorUri"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 652
    return-object v0
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AuthorizationException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
