.class public Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;
.super Ljava/lang/Object;
.source "EmotionFileStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const-class v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1141
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 2125
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2126
    invoke-static {v4}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 2127
    new-instance v6, Ljava/io/File;

    const-string/jumbo v5, "emotion"

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2129
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v4, v5

    .line 1143
    :cond_2
    if-nez v4, :cond_3

    .line 1144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1145
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 1148
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1149
    sput-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    .line 1153
    :cond_4
    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b:Ljava/lang/String;

    .line 162
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 163
    invoke-virtual {v4, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 165
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    :goto_0
    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p0, "pid"    # Ljava/lang/String;
    .param p1, "emotionId"    # J

    .prologue
    .line 277
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "rootFolderPath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 280
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 281
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 282
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 283
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 284
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 285
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x30

    invoke-static {v3, v4, v5}, Lcpt;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 286
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 288
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static a(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 7
    .param p0, "pid"    # Ljava/lang/String;
    .param p1, "emotionId"    # J
    .param p3, "type"    # I

    .prologue
    .line 263
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "rootFolderPath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 266
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 267
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 268
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 269
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x30

    invoke-static {v3, v4, v5}, Lcpt;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 4414
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->getValue()I

    move-result v2

    if-ne p3, v2, :cond_0

    .line 4415
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 270
    :goto_0
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 272
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4417
    :cond_0
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(J)V
    .locals 4
    .param p0, "packageId"    # J

    .prologue
    .line 423
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 2182
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2183
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2184
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 2185
    if-eqz v4, :cond_0

    .line 2186
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    .line 2188
    :cond_0
    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    .line 2192
    :cond_1
    sget-object v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->c:Ljava/lang/String;

    .line 203
    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 204
    invoke-virtual {v4, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 205
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 206
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    :goto_0
    return-object v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "emoDynamic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "getDynamicDefaultRootFolderPath exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3009
    const-string/jumbo v6, "im"

    invoke-static {v6, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 221
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 222
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 223
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 224
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    :goto_0
    return-object v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 245
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 246
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 247
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 248
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    :goto_0
    return-object v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "emoDynamic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "getDynamicDefaultEmotionPackageUnzipPath exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4009
    const-string/jumbo v6, "im"

    invoke-static {v6, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "rootFolderPath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 296
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 298
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 300
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 301
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 303
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "rootFolderPath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 311
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 312
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 313
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->INFO:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 314
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 316
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "rootFolderPath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 324
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 325
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->ICON:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 327
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 329
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string/jumbo v1, ""

    .line 344
    :goto_0
    return-object v1

    .line 343
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 344
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "url":Ljava/lang/String;
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 375
    :cond_0
    :goto_0
    return-object v1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 3
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 382
    :try_start_0
    sget-object v2, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    invoke-static {p0, v2}, Lcom/laiwang/protocol/media/MediaIdManager;->checkMediaType(Ljava/lang/String;Lcom/laiwang/protocol/media/MediaType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->getValue()I

    move-result v1

    .line 392
    .local v1, "type":I
    :goto_0
    return v1

    .line 385
    .end local v1    # "type":I
    :cond_0
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->SILENT:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->getValue()I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1    # "type":I
    goto :goto_0

    .line 387
    .end local v1    # "type":I
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->SILENT:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->getValue()I

    move-result v1

    .line 389
    .restart local v1    # "type":I
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method
