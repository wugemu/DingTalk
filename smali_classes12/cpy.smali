.class public final Lcpy;
.super Ljava/lang/Object;
.source "UserTrackTools.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "21811227"

    sput-object v0, Lcpy;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcpy;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcpy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "@rimet_android_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcpy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const-string/jumbo v0, "UserTrackTools"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcpy$1;

    invoke-direct {v1, p0}, Lcpy$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public static final c()Ljava/lang/String;
    .locals 9

    .prologue
    .line 83
    sget-object v7, Lcpy;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "abi":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_4

    .line 88
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 89
    .local v1, "abis":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    .line 90
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v0, v7, v8

    .line 97
    .end local v1    # "abis":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 100
    :try_start_0
    const-string/jumbo v7, "x86"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/system/lib/libhoudini.so"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 103
    const-string/jumbo v7, "10005121"

    sput-object v7, Lcpy;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    sget-object v7, Lcpy;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 114
    const/4 v5, 0x0

    .line 118
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string/jumbo v8, "dingtalkttid"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 121
    .local v6, "len":I
    new-array v2, v6, [B

    .line 122
    .local v2, "buffer":[B
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 123
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v7, Lcpy;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v2    # "buffer":[B
    .end local v6    # "len":I
    :cond_2
    if-eqz v5, :cond_3

    .line 133
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :cond_3
    :goto_2
    sget-object v7, Lcpy;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 141
    const-string/jumbo v7, "10002068"

    .line 148
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_3
    return-object v7

    .line 94
    :cond_4
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 127
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    if-eqz v5, :cond_3

    .line 133
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 134
    :catch_3
    move-exception v3

    .line 135
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    if-eqz v5, :cond_3

    .line 133
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 134
    :catch_5
    move-exception v3

    .line 135
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 133
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 136
    :cond_5
    :goto_4
    throw v7

    .line 134
    :catch_6
    move-exception v3

    .line 135
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    sget-object v7, Lcpy;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcpy;->b:Ljava/lang/String;

    .line 148
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_7
    sget-object v7, Lcpy;->b:Ljava/lang/String;

    goto :goto_3
.end method

.method public static final d()V
    .locals 12

    .prologue
    const-wide v10, 0x40c3880000000000L    # 10000.0

    const-wide v8, 0x40d3880000000000L    # 20000.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 152
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 155
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 156
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 159
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "process_start"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 162
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 163
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 165
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 166
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "login"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 170
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 172
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 173
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "session_load"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 176
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 177
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 179
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 180
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "init_session_load"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 183
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 184
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 186
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 187
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "ding_load"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 190
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 191
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 193
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 194
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "contact_load"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 197
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 198
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 201
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "init_contact_load"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 204
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 205
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 207
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 208
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "chat_load"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 211
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 212
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 214
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 215
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "unread_message"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 218
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 219
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 221
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 222
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "check_participate"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 225
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 226
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 228
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 229
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "local_contact"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 231
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 232
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 234
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 235
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "group_conversation"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 237
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 238
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 240
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 241
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "global_search"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 243
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 244
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 246
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 247
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "sendImage"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 249
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 250
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "totalTime"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 252
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 253
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "sendText"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 255
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 256
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "first_voice_translate_time"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 259
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "last_voice_translate_time"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 262
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-string/jumbo v3, "message_voice_duration_time"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 265
    const-string/jumbo v3, "AudioTranslation"

    const-string/jumbo v4, "voice_translate_time"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 267
    return-void
.end method
