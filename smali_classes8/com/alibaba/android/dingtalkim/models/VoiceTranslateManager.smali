.class public Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
.super Ljava/lang/Object;
.source "VoiceTranslateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;,
        Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;,
        Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;

.field private b:J

.field private c:J

.field private d:J

.field private e:Lcom/alibaba/doraemon/statistics/Statistics;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->g:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->h:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->i:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->j:I

    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->f:Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    .line 4280
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_0

    .line 4281
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 4282
    if-eqz v0, :cond_0

    .line 4283
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-ne v1, v2, :cond_0

    .line 4284
    sget v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    .line 4285
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    .line 4286
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;J)J

    .line 4287
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 4288
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 26
    :cond_0
    return-void
.end method

.method private d(Lcom/alibaba/wukong/im/Message;)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 255
    .local v0, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$a;-><init>(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/Message;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    .end local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    if-eqz p1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->g:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    .line 137
    .local v0, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    if-nez v0, :cond_2

    .line 2147
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    .end local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;-><init>()V

    .line 2148
    if-eqz p1, :cond_1

    .line 2149
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 2150
    if-eqz v1, :cond_1

    .line 2151
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "voice_translate_open"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2152
    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    .line 2154
    :cond_0
    const-string/jumbo v2, "voice_translate_content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    .line 139
    .restart local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->g:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 318
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 319
    .local v0, "run":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 321
    .end local v0    # "run":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 6
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "translateId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 170
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_2

    .line 171
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 172
    .local v0, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v3, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    if-ne v2, v3, :cond_2

    .line 173
    :cond_0
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 174
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 175
    .local v1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 176
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    .restart local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "voice_translate_open"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 180
    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    .line 181
    iput p2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->g:I

    .line 200
    .end local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 203
    .end local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_2
    return-void

    .line 183
    .restart local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_3
    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    .line 184
    iput p2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->g:I

    .line 185
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_9

    .line 186
    invoke-static {}, Ldrg;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2206
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 2207
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3124
    if-nez p1, :cond_5

    move-object v3, v4

    .line 2209
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2211
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;-><init>(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;Lcom/alibaba/wukong/im/Message;)V

    .line 4052
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    if-eqz v2, :cond_4

    .line 4058
    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Ldrg$1;

    invoke-direct {v5, v3, p1}, Ldrg$1;-><init>(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v2, v4, p1, v5}, Ldjr;->a(ZLcom/alibaba/wukong/im/Message;Lcma;)V

    .line 198
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->d(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 3127
    :cond_5
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v3

    .line 3128
    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "ext_decrypt_voice_url"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 2231
    :cond_7
    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->setUrl(Ljava/lang/String;)V

    .line 2232
    invoke-interface {p1, v4}, Lcom/alibaba/wukong/im/Message;->translateVoice(Lcom/alibaba/wukong/Callback;)V

    goto :goto_2

    .line 2236
    :cond_8
    invoke-interface {p1, v4}, Lcom/alibaba/wukong/im/Message;->translateVoice(Lcom/alibaba/wukong/Callback;)V

    goto :goto_2

    .line 192
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b:J

    .line 193
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->c:J

    .line 195
    invoke-interface {p1, v4}, Lcom/alibaba/wukong/im/Message;->translateVoice(Lcom/alibaba/wukong/Callback;)V

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 10
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_3

    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 72
    .local v0, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    if-eqz v0, :cond_3

    .line 73
    iget-wide v2, p2, Lcom/alibaba/wukong/im/VoiceTranslateData;->version:J

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 74
    iget v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v3, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-ne v2, v3, :cond_3

    .line 75
    iget-object v2, p2, Lcom/alibaba/wukong/im/VoiceTranslateData;->content:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    .line 76
    iget-wide v2, p2, Lcom/alibaba/wukong/im/VoiceTranslateData;->version:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;J)J

    .line 77
    iget-boolean v2, p2, Lcom/alibaba/wukong/im/VoiceTranslateData;->finished:Z

    if-eqz v2, :cond_5

    .line 79
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->c:J

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 80
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v2

    .line 1119
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v4

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b:J

    sub-long/2addr v6, v8

    .line 1121
    iget v5, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->j:I

    if-nez v5, :cond_4

    .line 1122
    const-string/jumbo v5, "first_voice_translate_time"

    long-to-double v8, v6

    invoke-virtual {v4, v5, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1127
    :goto_0
    const-string/jumbo v5, "last_voice_translate_time"

    long-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1128
    const-string/jumbo v5, "message_voice_duration_time"

    long-to-double v2, v2

    invoke-virtual {v4, v5, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1129
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "AudioTranslation"

    const-string/jumbo v5, "voice_translate_time"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 84
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->j:I

    .line 86
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->f:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->f:Landroid/content/Context;

    sget v3, Lctk$i;->voice_translate_empty_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    .line 91
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 92
    .local v1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 93
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    .restart local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v2, "voice_translate_open"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v2, "voice_translate_content"

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 98
    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    iput v2, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 107
    .end local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->c(Lcom/alibaba/wukong/im/Message;)V

    .line 112
    .end local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_3
    return-void

    .line 1124
    .restart local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_4
    const-string/jumbo v5, "first_voice_translate_time"

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->d:J

    long-to-double v8, v8

    invoke-virtual {v4, v5, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0

    .line 102
    :cond_5
    iget v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->j:I

    if-nez v2, :cond_6

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->d:J

    .line 1262
    :cond_6
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->d(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1
.end method

.method public b(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 243
    .local v0, "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 249
    .end local v0    # "ext":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;
    :cond_0
    return-void
.end method

.method public c(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 331
    :cond_0
    return-void
.end method
