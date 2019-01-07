.class public final Lflf;
.super Ljava/lang/Object;
.source "CustomEntryConfigLoader.java"


# static fields
.field private static c:Lflf;


# instance fields
.field private volatile a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lflf;

    invoke-direct {v0}, Lflf;-><init>()V

    sput-object v0, Lflf;->c:Lflf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lflf;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lflf;->c:Lflf;

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 11
    .param p1, "orgId"    # J

    .prologue
    const/4 v8, 0x0

    .line 46
    iput-boolean v8, p0, Lflf;->b:Z

    .line 47
    invoke-static {p1, p2}, Lflg;->a(J)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "mediaId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 52
    const/4 v8, -0x1

    .line 91
    :goto_0
    return v8

    .line 55
    :cond_0
    invoke-static {v7}, Lflg;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 56
    const/4 v8, -0x5

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lflg;->a()Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "configDir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 61
    :cond_2
    const/16 v8, -0x69

    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string/jumbo v9, "config.json"

    invoke-direct {v1, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v1, "configJson":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 66
    const/16 v8, -0x6a

    goto :goto_0

    .line 69
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    .line 70
    .local v6, "json":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 71
    const/16 v8, -0x6b

    goto :goto_0

    .line 74
    :cond_5
    const/4 v2, 0x0

    .line 76
    .local v2, "configJsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "configJsonObject":Lorg/json/JSONObject;
    .local v3, "configJsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 81
    .end local v3    # "configJsonObject":Lorg/json/JSONObject;
    .restart local v2    # "configJsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v2, :cond_6

    .line 82
    const/16 v8, -0x6c

    goto :goto_0

    .line 77
    :catch_0
    move-exception v5

    .line 78
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_6
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    invoke-direct {v4, v2}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;-><init>(Lorg/json/JSONObject;)V

    .line 87
    .local v4, "configObject":Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;
    iput-object v4, p0, Lflf;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    .line 88
    const-string/jumbo v9, "load Config success"

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lfxo;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const/4 v9, 0x1

    iput-boolean v9, p0, Lflf;->b:Z

    goto :goto_0
.end method

.method public final b()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 96
    iget-boolean v0, p0, Lflf;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflf;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;-><init>(Lorg/json/JSONObject;)V

    .line 1105
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    .line 1106
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    .line 100
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lflf;->a:Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    goto :goto_0
.end method
