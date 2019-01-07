.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->e:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Ljava/lang/String;)V
    .locals 4
    .param p2, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->e:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "quotaJson":Lorg/json/JSONObject;
    const-string/jumbo v1, "remain"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo v1, "remain"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    .line 176
    :cond_0
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    .line 179
    :cond_1
    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    .line 182
    :cond_2
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "quotaJson":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v1, "quotaJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "remain"

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v2, "show"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v2, "close"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v2, "msg"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
