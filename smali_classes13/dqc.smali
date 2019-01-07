.class public final Ldqc;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionUtils.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, ""

    .line 66
    .local v0, "path":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    const-string/jumbo v1, "defaultEmoji"

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2055
    const-string/jumbo v2, "defaultEmoji"

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "emotionKeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Leax;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    const/4 v2, 0x0

    .line 225
    :cond_0
    :goto_0
    return-object v2

    .line 208
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 209
    .local v1, "length":I
    const/4 v2, 0x0

    .line 210
    .local v2, "result":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 211
    new-instance v3, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    .line 212
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 214
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_2

    .line 215
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "["

    const-string/jumbo v6, "\\["

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "]"

    const-string/jumbo v6, "\\]"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 216
    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 213
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "["

    const-string/jumbo v6, "\\["

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "]"

    const-string/jumbo v6, "\\]"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 222
    :cond_3
    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 223
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldqb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "defaultEmotionUIModels":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    invoke-static {}, Ldqc;->b()Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    move-result-object v1

    .line 116
    .local v1, "defaultEmotionObject":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    if-eqz v1, :cond_2

    .line 117
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    invoke-static {v4}, Leax;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;

    .line 119
    .local v0, "defaultEmotion":Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;
    if-eqz v0, :cond_0

    .line 120
    new-instance v3, Ldqb;

    invoke-direct {v3}, Ldqb;-><init>()V

    .line 121
    .local v3, "uiModel":Ldqb;
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->nameMap:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->nameMap:Ljava/util/Map;

    const-string/jumbo v6, "en_US"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->nameMap:Ljava/util/Map;

    const-string/jumbo v6, "en_US"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ldqc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ldqb;->c:Ljava/lang/String;

    .line 124
    :cond_1
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->name:Ljava/lang/String;

    invoke-static {v4}, Ldqc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ldqb;->b:Ljava/lang/String;

    .line 125
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->emotionId:Ljava/lang/String;

    iput-object v4, v3, Ldqb;->a:Ljava/lang/String;

    .line 126
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;->showType:Ljava/lang/Integer;

    iput-object v4, v3, Ldqb;->d:Ljava/lang/Integer;

    .line 127
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v0    # "defaultEmotion":Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;
    .end local v3    # "uiModel":Ldqb;
    :cond_2
    return-object v2
.end method

.method private static b()Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    .locals 10

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "defalutOb":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    invoke-static {}, Ldpx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldpx;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 142
    .local v1, "cachedFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 143
    .local v4, "emotionLocalObject":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;
    if-eqz v1, :cond_0

    .line 144
    invoke-static {v1}, Ldpx;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "fileContent":Ljava/lang/String;
    :try_start_0
    const-class v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-static {v5, v6}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    .line 155
    .end local v5    # "fileContent":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 147
    .restart local v5    # "fileContent":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "emoDynamic"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "DefaultEmotionUtils"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "loadFromLocalImpl parseJson error, errMsg:"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 149
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 148
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3009
    const-string/jumbo v8, "im"

    invoke-static {v8, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
