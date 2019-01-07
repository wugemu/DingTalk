.class public Lanet/channel/entity/ConnType;
.super Ljava/lang/Object;
.source "ConnType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/entity/ConnType$TypeLevel;
    }
.end annotation


# static fields
.field public static ACCS_0RTT:Lanet/channel/entity/ConnType; = null

.field public static ACCS_1RTT:Lanet/channel/entity/ConnType; = null

.field public static final ACS:Ljava/lang/String; = "acs"

.field public static final CDN:Ljava/lang/String; = "cdn"

.field public static H2_ACCS_0RTT:Lanet/channel/entity/ConnType; = null

.field public static H2_ACCS_1RTT:Lanet/channel/entity/ConnType; = null

.field public static HTTP:Lanet/channel/entity/ConnType; = null

.field public static final HTTP2:Ljava/lang/String; = "http2"

.field public static HTTPS:Lanet/channel/entity/ConnType; = null

.field public static final RTT_0:Ljava/lang/String; = "0rtt"

.field public static final RTT_1:Ljava/lang/String; = "1rtt"

.field public static SPDY:Lanet/channel/entity/ConnType; = null

.field public static final SPDY_STR:Ljava/lang/String; = "spdy"

.field private static connTypeMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/entity/ConnType;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3c8a4f355c3d1e94L


# instance fields
.field private name:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private spdyProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "http"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    .line 37
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "https"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    .line 39
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "spdy_0rtt_acs"

    const/16 v2, 0x1082

    const-string/jumbo v3, "acs"

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->ACCS_0RTT:Lanet/channel/entity/ConnType;

    .line 43
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "spdy_1rtt_acs"

    const/16 v2, 0x2082

    const-string/jumbo v3, "acs"

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->ACCS_1RTT:Lanet/channel/entity/ConnType;

    .line 48
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "http2_0rtt_acs"

    const/16 v2, 0x1088

    const-string/jumbo v3, "acs"

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->H2_ACCS_0RTT:Lanet/channel/entity/ConnType;

    .line 53
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "http2_1rtt_acs"

    const/16 v2, 0x2088

    const-string/jumbo v3, "acs"

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->H2_ACCS_1RTT:Lanet/channel/entity/ConnType;

    .line 58
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string/jumbo v1, "spdy"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->SPDY:Lanet/channel/entity/ConnType;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sput-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "spdy_0rtt_acs"

    sget-object v2, Lanet/channel/entity/ConnType;->ACCS_0RTT:Lanet/channel/entity/ConnType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "spdy_1rtt_acs"

    sget-object v2, Lanet/channel/entity/ConnType;->ACCS_1RTT:Lanet/channel/entity/ConnType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "http2_0rtt_acs"

    sget-object v2, Lanet/channel/entity/ConnType;->H2_ACCS_0RTT:Lanet/channel/entity/ConnType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "http2_1rtt_acs"

    sget-object v2, Lanet/channel/entity/ConnType;->H2_ACCS_1RTT:Lanet/channel/entity/ConnType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "spdy"

    sget-object v2, Lanet/channel/entity/ConnType;->SPDY:Lanet/channel/entity/ConnType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spdyProtocol"    # I
    .param p3, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 79
    iput p2, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 80
    iput-object p3, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private static buildKey(Lke$a;)Ljava/lang/String;
    .locals 3
    .param p0, "aisles"    # Lke$a;

    .prologue
    .line 193
    iget-object v1, p0, Lke$a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lke$a;->b:Ljava/lang/String;

    .line 210
    :goto_0
    return-object v1

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lke$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lke$a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lke$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :goto_1
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lke$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-boolean v1, p0, Lke$a;->i:Z

    if-eqz v1, :cond_1

    .line 207
    const-string/jumbo v1, "_l7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_2
    const-string/jumbo v1, "_0rtt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I
    .locals 2
    .param p0, "type1"    # Lanet/channel/entity/ConnType;
    .param p1, "type2"    # Lanet/channel/entity/ConnType;

    .prologue
    .line 254
    invoke-direct {p0}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result v0

    invoke-direct {p1}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getPriority()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    .line 246
    :cond_0
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static valueOf(Lke$a;)Lanet/channel/entity/ConnType;
    .locals 5
    .param p0, "aisles"    # Lke$a;

    .prologue
    .line 146
    iget-object v2, p0, Lke$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http"

    iget-object v3, p0, Lke$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    sget-object v2, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    .line 188
    :goto_0
    return-object v2

    .line 148
    :cond_1
    const-string/jumbo v2, "https"

    iget-object v3, p0, Lke$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    sget-object v2, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p0}, Lanet/channel/entity/ConnType;->buildKey(Lke$a;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    monitor-enter v3

    .line 154
    :try_start_0
    sget-object v2, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    sget-object v2, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/entity/ConnType;

    monitor-exit v3

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 158
    :cond_3
    :try_start_1
    new-instance v0, Lanet/channel/entity/ConnType;

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "connType":Lanet/channel/entity/ConnType;
    iget-object v2, p0, Lke$a;->j:Ljava/lang/String;

    iput-object v2, v0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    .line 161
    const-string/jumbo v2, "http2"

    iget-object v4, p0, Lke$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 168
    :cond_4
    :goto_1
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    if-nez v2, :cond_6

    .line 169
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 163
    :cond_5
    const-string/jumbo v2, "spdy"

    iget-object v4, p0, Lke$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_1

    .line 172
    :cond_6
    iget-object v2, p0, Lke$a;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 174
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 176
    const-string/jumbo v2, "1rtt"

    iget-object v4, p0, Lke$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 182
    :goto_2
    iget-boolean v2, p0, Lke$a;->i:Z

    if-eqz v2, :cond_7

    .line 183
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 187
    :cond_7
    sget-object v2, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v3

    move-object v2, v0

    goto/16 :goto_0

    .line 179
    :cond_8
    iget v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lanet/channel/entity/ConnType;->spdyProtocol:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    if-eqz p1, :cond_0

    instance-of v2, p1, Lanet/channel/entity/ConnType;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 232
    .end local p1    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v0

    .line 226
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    if-eq p0, p1, :cond_1

    .line 229
    iget-object v2, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    check-cast p1, Lanet/channel/entity/ConnType;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v3, p1, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 232
    goto :goto_0
.end method

.method public getTnetConType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    return v0
.end method

.method public getTnetPublicKey()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    sget-boolean v0, Lanet/channel/SessionCenter;->SECURITYGUARD_OFF:Z

    .line 107
    .local v0, "secoff":Z
    invoke-static {}, Lic;->d()Lanet/channel/entity/ENV;

    move-result-object v3

    sget-object v4, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne v3, v4, :cond_3

    .line 108
    const-string/jumbo v3, "cdn"

    iget-object v4, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    if-eqz v0, :cond_0

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    move v1, v2

    .line 116
    goto :goto_0

    :cond_2
    move v1, v2

    .line 118
    goto :goto_0

    .line 122
    :cond_3
    const-string/jumbo v2, "cdn"

    iget-object v3, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_4
    sget v1, Lic;->c:I

    if-lez v1, :cond_5

    .line 132
    sget v1, Lic;->c:I

    goto :goto_0

    .line 135
    :cond_5
    if-eqz v0, :cond_6

    .line 136
    const/4 v1, 0x4

    goto :goto_0

    .line 138
    :cond_6
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    .line 239
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    goto :goto_0
.end method

.method public isCdn()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 97
    const-string/jumbo v0, "cdn"

    iget-object v1, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHttpType()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSL()Z
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-object v0
.end method
