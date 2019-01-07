.class public final Ldmi;
.super Ljava/lang/Object;
.source "ChatSceneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldmi$a;
    }
.end annotation


# instance fields
.field a:Ldso;

.field b:Landroid/content/Context;

.field c:Z

.field d:Z

.field e:Ldmi$a;

.field f:Lcmt$a;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldsq;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/app/Activity;

.field private i:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ldmi$1;

    invoke-direct {v0, p0}, Ldmi$1;-><init>(Ldmi;)V

    iput-object v0, p0, Ldmi;->f:Lcmt$a;

    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Ldmi;->b:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Ldmi;->h:Landroid/app/Activity;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldmi;->g:Ljava/util/Map;

    .line 1063
    iget-object v0, p0, Ldmi;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref_key_local_celebrate_info"

    invoke-static {v0, v1, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    :try_start_0
    const-class v1, Ldso;

    invoke-static {v0, v1}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldso;

    iput-object v0, p0, Ldmi;->a:Ldso;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ldmi;->b()V

    .line 1074
    invoke-virtual {p0}, Ldmi;->a()V

    .line 54
    invoke-virtual {p0}, Ldmi;->c()V

    .line 2059
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    iget-object v1, p0, Ldmi;->f:Lcmt$a;

    invoke-virtual {v0, v1}, Lcmt;->a(Lcmt$a;)V

    .line 56
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1069
    const-string/jumbo v1, "im"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "parse chatSceneCache prefs json error"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {v1, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ldsq;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Ldmi;->i:Ljava/util/regex/Matcher;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Ldmi;->i:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 165
    iget-object v2, p0, Ldmi;->i:Ljava/util/regex/Matcher;

    iget-object v3, p0, Ldmi;->g:Ljava/util/Map;

    .line 2176
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2177
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2178
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    .local v0, "mapKey":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    iget-object v1, p0, Ldmi;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsq;

    .line 171
    .end local v0    # "mapKey":Ljava/lang/String;
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    .line 2182
    goto :goto_0
.end method

.method a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v2, p0, Ldmi;->a:Ldso;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldmi;->a:Ldso;

    iget-object v2, v2, Ldso;->a:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldmi;->a:Ldso;

    iget-object v2, v2, Ldso;->a:Ljava/util/List;

    .line 79
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    iget-object v2, p0, Ldmi;->a:Ldso;

    iget-object v2, v2, Ldso;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsq;

    .line 81
    .local v0, "object":Ldsq;
    if-eqz v0, :cond_1

    .line 82
    iget-object v2, v0, Ldsq;->b:Ljava/util/List;

    .line 2114
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2116
    invoke-static {v2}, Ldmm;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, v0, Ldsq;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Ldsq;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, v0, Ldsq;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lduf;

    .line 86
    .local v1, "quickLikeObject":Lduf;
    if-eqz v1, :cond_2

    .line 87
    iget-object v4, v1, Lduf;->b:Ljava/lang/String;

    invoke-static {v4}, Ldmm;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v0    # "object":Ldsq;
    .end local v1    # "quickLikeObject":Lduf;
    :cond_3
    return-void
.end method

.method b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 99
    iget-object v7, p0, Ldmi;->g:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 100
    iget-object v7, p0, Ldmi;->a:Ldso;

    if-eqz v7, :cond_2

    iget-object v7, p0, Ldmi;->a:Ldso;

    iget-object v7, v7, Ldso;->a:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Ldmi;->a:Ldso;

    iget-object v7, v7, Ldso;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 101
    iget-object v7, p0, Ldmi;->a:Ldso;

    iget-object v7, v7, Ldso;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsq;

    .line 102
    .local v0, "celebrateObject":Ldsq;
    if-eqz v0, :cond_0

    iget-object v8, v0, Ldsq;->a:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, v0, Ldsq;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 103
    iget-object v8, v0, Ldsq;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "keyword":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 105
    iget-object v9, p0, Ldmi;->g:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v0    # "celebrateObject":Ldsq;
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Ldmi;->g:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Ldmi;->g:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Ldml;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "wrappedString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "wrappedString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 123
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 124
    const/4 v4, 0x0

    .line 126
    .local v4, "pattern":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 131
    :goto_2
    if-eqz v4, :cond_6

    .line 132
    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    iput-object v7, p0, Ldmi;->i:Ljava/util/regex/Matcher;

    .line 139
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    return-void

    .line 127
    .restart local v4    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const-string/jumbo v7, "im"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "chatscenemodel make regex error:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ",sb content:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v11, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 137
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iput-object v11, p0, Ldmi;->i:Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    iget-boolean v7, p0, Ldmi;->c:Z

    if-eqz v7, :cond_1

    .line 226
    const/4 v7, 0x1

    iput-boolean v7, p0, Ldmi;->d:Z

    .line 2268
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Ldmi;->d:Z

    .line 231
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_im"

    const-string/jumbo v9, "im_chat_interaction"

    invoke-virtual {v7, v8, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "timeStamp":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 233
    .local v4, "serverVersion":J
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 235
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 2187
    :cond_2
    :goto_1
    iget-object v7, p0, Ldmi;->a:Ldso;

    if-eqz v7, :cond_5

    .line 2188
    iget-object v7, p0, Ldmi;->a:Ldso;

    iget-wide v2, v7, Ldso;->b:J

    .line 244
    .local v2, "localVersion":J
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    cmp-long v7, v4, v2

    if-lez v7, :cond_0

    .line 245
    const/4 v7, 0x1

    iput-boolean v7, p0, Ldmi;->c:Z

    .line 246
    new-instance v0, Ldmi$2;

    invoke-direct {v0, p0}, Ldmi$2;-><init>(Ldmi;)V

    .line 269
    .local v0, "apiEventListener":Lcma;, "Lcma<Ldso;>;"
    iget-object v7, p0, Ldmi;->h:Landroid/app/Activity;

    if-eqz v7, :cond_3

    .line 270
    const-class v7, Lcma;

    iget-object v8, p0, Ldmi;->h:Landroid/app/Activity;

    invoke-static {v0, v7, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ldso;>;"
    check-cast v0, Lcma;

    .line 272
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ldso;>;"
    :cond_3
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v8

    .line 2263
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-gez v7, :cond_6

    .line 2264
    if-eqz v0, :cond_4

    .line 2265
    const-string/jumbo v7, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lctk$i;->unknown_error:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :cond_4
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getCelebrateListModel error: errorCode"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ldso;>;"
    .end local v2    # "localVersion":J
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 238
    const-string/jumbo v7, "im"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "chatSceneCache load from server_version not right, version:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    .line 239
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 238
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2190
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 2270
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ldso;>;"
    .restart local v2    # "localVersion":J
    :cond_6
    const-class v7, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v7}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 2271
    new-instance v9, Ldyc$2;

    invoke-direct {v9, v8, v0}, Ldyc$2;-><init>(Ldyc;Lcma;)V

    invoke-interface {v7, v2, v3, v9}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getCelebrateListModel(JLiyv;)V

    goto/16 :goto_0
.end method
