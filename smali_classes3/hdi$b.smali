.class public final Lhdi$b;
.super Ljava/lang/Object;
.source "NavMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static volatile b:J


# instance fields
.field a:J

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    sput-wide v0, Lhdi$b;->b:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhdi$b;->a:J

    .line 145
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lhdi$b;
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "content"    # Lorg/json/JSONObject;

    .prologue
    .line 148
    new-instance v0, Lhdi$b;

    invoke-direct {v0}, Lhdi$b;-><init>()V

    .line 149
    .local v0, "msg":Lhdi$b;
    iput-object p0, v0, Lhdi$b;->c:Ljava/lang/String;

    .line 150
    if-eqz p1, :cond_0

    .end local p1    # "content":Lorg/json/JSONObject;
    :goto_0
    iput-object p1, v0, Lhdi$b;->d:Lorg/json/JSONObject;

    .line 152
    return-object v0

    .line 150
    .restart local p1    # "content":Lorg/json/JSONObject;
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "content":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static declared-synchronized b()J
    .locals 6

    .prologue
    .line 174
    const-class v1, Lhdi$b;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lhdi$b;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 175
    sput-wide v2, Lhdi$b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lhdi$b;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 157
    new-instance v0, Lhdi$b;

    invoke-direct {v0}, Lhdi$b;-><init>()V

    .line 158
    .local v0, "newMessage":Lhdi$b;
    iget-wide v2, p0, Lhdi$b;->a:J

    iput-wide v2, v0, Lhdi$b;->a:J

    .line 159
    iget-object v1, p0, Lhdi$b;->c:Ljava/lang/String;

    iput-object v1, v0, Lhdi$b;->c:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lhdi$b;->d:Lorg/json/JSONObject;

    iput-object v1, v0, Lhdi$b;->d:Lorg/json/JSONObject;

    .line 161
    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "_mid"

    iget-wide v4, p0, Lhdi$b;->a:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    const-string/jumbo v2, "from"

    iget-object v3, p0, Lhdi$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v2, "content"

    iget-object v3, p0, Lhdi$b;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lhdi$b;->a()Lhdi$b;

    move-result-object v0

    return-object v0
.end method
