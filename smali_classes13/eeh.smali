.class public final Leeh;
.super Ljava/lang/Object;
.source "ControlDataSourceImpl.java"

# interfaces
.implements Leeg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leeh$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static d:Leeg;


# instance fields
.field private b:Leeh$a;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Leeg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leeh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leeh;->c:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic a(Leeh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leeh;

    .prologue
    .line 17
    iget-object v0, p0, Leeh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b()Leeg;
    .locals 2

    .prologue
    .line 30
    const-class v1, Leeh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leeh;->d:Leeg;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Leeh;

    invoke-direct {v0}, Leeh;-><init>()V

    sput-object v0, Leeh;->d:Leeg;

    .line 33
    :cond_0
    sget-object v0, Leeh;->d:Leeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;)Leeh$a;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    new-instance v2, Leeh$a;

    invoke-direct {v2, p0}, Leeh$a;-><init>(Leeh;)V

    .line 68
    .local v2, "replaceObject":Leeh$a;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "oa_app_replace_ver"

    iget-object v4, p0, Leeh;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Leeh$a;->b:Ljava/lang/String;

    .line 70
    const-string/jumbo v3, "oa_app_replace"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Leeh$a;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "FUN_CONTROL_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Leeh;->b(Ljava/lang/String;)Leeh$a;

    move-result-object v0

    iput-object v0, p0, Leeh;->b:Leeh$a;

    .line 56
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Leeh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 38
    iget-object v1, p0, Leeh;->b:Leeh$a;

    if-nez v1, :cond_0

    .line 39
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Leeh;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v0}, Leeh;->b(Ljava/lang/String;)Leeh$a;

    move-result-object v1

    iput-object v1, p0, Leeh;->b:Leeh$a;

    .line 43
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Leeh;->b:Leeh$a;

    if-eqz v1, :cond_9

    .line 45
    iget-object v1, p0, Leeh;->b:Leeh$a;

    iget-boolean v1, v1, Leeh$a;->a:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Leeh;->c:Ljava/lang/String;

    iget-object v2, p0, Leeh;->b:Leeh$a;

    iget-object v2, v2, Leeh$a;->b:Ljava/lang/String;

    .line 1094
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 45
    :goto_0
    if-ltz v1, :cond_8

    move v1, v3

    .line 47
    :goto_1
    return v1

    .line 1097
    :cond_1
    const-string/jumbo v5, "\\."

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1098
    const-string/jumbo v1, "\\."

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1100
    array-length v1, v5

    array-length v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v1, v4

    move v2, v4

    .line 1102
    :goto_2
    if-ge v2, v7, :cond_2

    aget-object v1, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v1, v8

    if-nez v1, :cond_2

    .line 1103
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1105
    :cond_2
    if-nez v1, :cond_6

    move v1, v2

    .line 1106
    :goto_3
    array-length v7, v5

    if-ge v1, v7, :cond_4

    .line 1107
    aget-object v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    move v1, v3

    .line 1108
    goto :goto_0

    .line 1106
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1111
    :cond_4
    :goto_4
    array-length v1, v6

    if-ge v2, v1, :cond_5

    .line 1112
    aget-object v1, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_7

    .line 1111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v1, v4

    .line 1116
    goto :goto_0

    .line 1118
    :cond_6
    if-lez v1, :cond_7

    move v1, v3

    goto :goto_0

    :cond_7
    const/4 v1, -0x1

    goto :goto_0

    :cond_8
    move v1, v4

    .line 45
    goto :goto_1

    :cond_9
    move v1, v3

    .line 47
    goto :goto_1
.end method
