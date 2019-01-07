.class public final Ljmu;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/graphics/Point;

.field public c:Landroid/graphics/Point;

.field public d:I

.field public e:Landroid/graphics/Point;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x5a

    iput v0, p0, Ljmu;->d:I

    .line 53
    iput-object p1, p0, Ljmu;->a:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera;Z)V
    .locals 13
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 89
    .local v7, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v7, :cond_1

    .line 90
    const-string/jumbo v9, "CameraConfiguration"

    const-string/jumbo v10, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Initial camera parameters: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    if-eqz p2, :cond_2

    .line 97
    const-string/jumbo v9, "CameraConfiguration"

    const-string/jumbo v10, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    iget-object v9, p0, Ljmu;->a:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1240
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/taobao/ma/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/taobao/ma/camera/FrontLightMode;

    move-result-object v9

    sget-object v10, Lcom/taobao/ma/camera/FrontLightMode;->ON:Lcom/taobao/ma/camera/FrontLightMode;

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    .line 1245
    :goto_1
    invoke-static {v7, v9}, Ljmw;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 1246
    iget-object v10, p0, Ljmu;->a:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1247
    if-nez p2, :cond_3

    const-string/jumbo v11, "preferences_disable_exposure"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1248
    invoke-static {v7, v9}, Ljmw;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 104
    :cond_3
    const-string/jumbo v9, "preferences_auto_focus"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v10, "preferences_disable_continuous_focus"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v7, v9, v10, p2}, Ljmw;->a(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 110
    if-nez p2, :cond_6

    .line 111
    const-string/jumbo v9, "preferences_invert_scan"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 112
    invoke-static {v7}, Ljmw;->e(Landroid/hardware/Camera$Parameters;)V

    .line 115
    :cond_4
    const-string/jumbo v9, "preferences_disable_barcode_scene_mode"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_5

    .line 116
    invoke-static {v7}, Ljmw;->d(Landroid/hardware/Camera$Parameters;)V

    .line 119
    :cond_5
    const-string/jumbo v9, "preferences_disable_metering"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_6

    .line 120
    invoke-static {v7}, Ljmw;->c(Landroid/hardware/Camera$Parameters;)V

    .line 121
    invoke-static {v7}, Ljmw;->a(Landroid/hardware/Camera$Parameters;)V

    .line 122
    invoke-static {v7}, Ljmw;->b(Landroid/hardware/Camera$Parameters;)V

    .line 129
    :cond_6
    :try_start_0
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 130
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "M9"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v10, "Meizu"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 131
    iget v9, p0, Ljmu;->d:I

    add-int/lit8 v9, v9, 0x5a

    iput v9, p0, Ljmu;->d:I

    .line 148
    :cond_7
    :goto_2
    iget v9, p0, Ljmu;->d:I

    invoke-virtual {p1, v9}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2191
    :goto_3
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v9

    .line 2192
    const/16 v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2193
    const/16 v6, 0x100

    .line 2203
    .local v6, "mPictureFmt":I
    :goto_4
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v9

    .line 2204
    const/16 v10, 0x11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2205
    const/16 v2, 0x11

    .line 159
    .local v2, "bestPreviewFmt":I
    :goto_5
    if-ltz v2, :cond_8

    .line 160
    invoke-virtual {v7, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 162
    :cond_8
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "HTC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "801e"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "One"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 163
    const/16 v9, 0x1e

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 168
    :cond_9
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "SQY: before set Camera parameters , now ScreenSize is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Ljmu;->b:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", previewSize to set  is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljmu;->c:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7, v6}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 172
    iget-object v9, p0, Ljmu;->e:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Ljmu;->e:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 174
    iget-object v9, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Final camera parameters: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 180
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 181
    .local v0, "afterParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 182
    .local v1, "afterSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    iget-object v9, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    if-eq v9, v10, :cond_0

    .line 183
    :cond_a
    const-string/jumbo v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Camera said it supported preview size "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", but after setting it, preview size is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v9, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v10, v1, Landroid/hardware/Camera$Size;->width:I

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 186
    iget-object v9, p0, Ljmu;->c:Landroid/graphics/Point;

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1240
    .end local v0    # "afterParameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "afterSize":Landroid/hardware/Camera$Size;
    .end local v2    # "bestPreviewFmt":I
    .end local v6    # "mPictureFmt":I
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 133
    :cond_c
    :try_start_1
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "devName":Ljava/lang/String;
    const-string/jumbo v9, "nexus5x"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 135
    iget v9, p0, Ljmu;->d:I

    add-int/lit16 v9, v9, 0xb4

    iput v9, p0, Ljmu;->d:I

    .line 138
    :cond_d
    iget-object v9, p0, Ljmu;->f:Ljava/util/Map;

    if-eqz v9, :cond_e

    iget-object v9, p0, Ljmu;->f:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 139
    iget-object v9, p0, Ljmu;->f:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 140
    .local v5, "it":Ljava/lang/Integer;
    if-eqz v5, :cond_e

    .line 141
    iget v9, p0, Ljmu;->d:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljmu;->d:I

    .line 144
    .end local v5    # "it":Ljava/lang/Integer;
    :cond_e
    iget v9, p0, Ljmu;->d:I

    rem-int/lit16 v9, v9, 0x168

    iput v9, p0, Ljmu;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 149
    .end local v3    # "devName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 150
    .local v4, "e":Ljava/lang/Exception;
    const/16 v9, 0x5a

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 151
    const-string/jumbo v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "method error"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 152
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/NoSuchMethodError;
    const/16 v9, 0x5a

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 154
    const-string/jumbo v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "method error"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2194
    .end local v4    # "e":Ljava/lang/NoSuchMethodError;
    :cond_f
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2195
    const/4 v6, 0x4

    goto/16 :goto_4

    .line 2196
    :cond_10
    const/16 v10, 0x11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2197
    const/16 v6, 0x11

    goto/16 :goto_4

    .line 2199
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 2206
    .restart local v6    # "mPictureFmt":I
    :cond_12
    const v10, 0x32315659

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 2207
    const v2, 0x32315659

    goto/16 :goto_5

    .line 2209
    :cond_13
    const/4 v2, -0x1

    goto/16 :goto_5

    .line 164
    .restart local v2    # "bestPreviewFmt":I
    :cond_14
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "GT-I9300"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 165
    const/16 v9, 0x14

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto/16 :goto_6
.end method
