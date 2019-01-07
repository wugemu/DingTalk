.class public final Lnet/openid/appauth/AuthorizationException$b;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    const-string/jumbo v1, "Invalid discovery document"

    .line 159
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->a:Lnet/openid/appauth/AuthorizationException;

    .line 164
    const/4 v0, 0x1

    const-string/jumbo v1, "User cancelled flow"

    .line 165
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->b:Lnet/openid/appauth/AuthorizationException;

    .line 170
    const/4 v0, 0x2

    const-string/jumbo v1, "Flow cancelled programmatically"

    .line 171
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->c:Lnet/openid/appauth/AuthorizationException;

    .line 176
    const/4 v0, 0x3

    const-string/jumbo v1, "Network error"

    .line 177
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->d:Lnet/openid/appauth/AuthorizationException;

    .line 182
    const/4 v0, 0x4

    const-string/jumbo v1, "Server error"

    .line 183
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->e:Lnet/openid/appauth/AuthorizationException;

    .line 188
    const/4 v0, 0x5

    const-string/jumbo v1, "JSON deserialization error"

    .line 189
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->f:Lnet/openid/appauth/AuthorizationException;

    .line 195
    const/4 v0, 0x6

    const-string/jumbo v1, "Token response construction error"

    .line 196
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->g:Lnet/openid/appauth/AuthorizationException;

    .line 201
    const/4 v0, 0x7

    const-string/jumbo v1, "Invalid registration response"

    .line 202
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$b;->h:Lnet/openid/appauth/AuthorizationException;

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
