.class public final Lemn;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/graphics/Point;

.field public c:Landroid/graphics/Point;

.field public d:I

.field public e:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0x5a

    iput v0, p0, Lemn;->d:I

    .line 52
    iput-object p1, p0, Lemn;->a:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "newSetting"    # Z
    .param p3, "safeMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    invoke-static {p1, p2}, Lemo;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 245
    iget-object v1, p0, Lemn;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez p3, :cond_0

    const-string/jumbo v1, "preferences_disable_exposure"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-static {p1, p2}, Lemo;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public final a(Landroid/hardware/Camera;Z)V
    .locals 11
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 88
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v6, :cond_1

    .line 89
    const-string/jumbo v8, "CameraConfiguration"

    const-string/jumbo v9, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Initial camera parameters: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-eqz p2, :cond_2

    .line 96
    const-string/jumbo v8, "CameraConfiguration"

    const-string/jumbo v9, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    iget-object v8, p0, Lemn;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1239
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/alibaba/android/scan/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/alibaba/android/scan/camera/FrontLightMode;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/scan/camera/FrontLightMode;->ON:Lcom/alibaba/android/scan/camera/FrontLightMode;

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    .line 1240
    :goto_1
    invoke-virtual {p0, v6, v8, p2}, Lemn;->a(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 103
    const-string/jumbo v8, "preferences_auto_focus"

    const/4 v9, 0x1

    .line 105
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v9, "preferences_disable_continuous_focus"

    const/4 v10, 0x1

    .line 106
    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 103
    invoke-static {v6, v8, v9, p2}, Lemo;->a(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 109
    if-nez p2, :cond_5

    .line 110
    const-string/jumbo v8, "preferences_invert_scan"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    invoke-static {v6}, Lemo;->e(Landroid/hardware/Camera$Parameters;)V

    .line 114
    :cond_3
    const-string/jumbo v8, "preferences_disable_barcode_scene_mode"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_4

    .line 115
    invoke-static {v6}, Lemo;->d(Landroid/hardware/Camera$Parameters;)V

    .line 118
    :cond_4
    const-string/jumbo v8, "preferences_disable_metering"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_5

    .line 119
    invoke-static {v6}, Lemo;->c(Landroid/hardware/Camera$Parameters;)V

    .line 120
    invoke-static {v6}, Lemo;->a(Landroid/hardware/Camera$Parameters;)V

    .line 121
    invoke-static {v6}, Lemo;->b(Landroid/hardware/Camera$Parameters;)V

    .line 128
    :cond_5
    :try_start_0
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 129
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v9, "M9"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v9, "Meizu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 130
    iget v8, p0, Lemn;->d:I

    add-int/lit8 v8, v8, 0x5a

    iput v8, p0, Lemn;->d:I

    .line 147
    :cond_6
    :goto_2
    iget v8, p0, Lemn;->d:I

    invoke-virtual {p1, v8}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2190
    :goto_3
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v8

    .line 2191
    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2192
    const/16 v5, 0x100

    .line 2202
    .local v5, "mPictureFmt":I
    :goto_4
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v8

    .line 2203
    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2204
    const/16 v2, 0x11

    .line 158
    .local v2, "bestPreviewFmt":I
    :goto_5
    if-ltz v2, :cond_7

    .line 159
    invoke-virtual {v6, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 161
    :cond_7
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v9, "HTC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v9, "801e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v9, "One"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 162
    const/16 v8, 0x1e

    invoke-virtual {v6, v8}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 167
    :cond_8
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "SQY: before set Camera parameters , now ScreenSize is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lemn;->b:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", previewSize to set  is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lemn;->c:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 171
    iget-object v8, p0, Lemn;->e:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lemn;->e:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v8, v9}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 173
    iget-object v8, p0, Lemn;->c:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lemn;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Final camera parameters: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 179
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 180
    .local v0, "afterParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 181
    .local v1, "afterSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    iget-object v8, p0, Lemn;->c:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lemn;->c:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v1, Landroid/hardware/Camera$Size;->height:I

    if-eq v8, v9, :cond_0

    .line 182
    :cond_9
    const-string/jumbo v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Camera said it supported preview size "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lemn;->c:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x78

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lemn;->c:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", but after setting it, preview size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x78

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v8, p0, Lemn;->c:Landroid/graphics/Point;

    iget v9, v1, Landroid/hardware/Camera$Size;->width:I

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 185
    iget-object v8, p0, Lemn;->c:Landroid/graphics/Point;

    iget v9, v1, Landroid/hardware/Camera$Size;->height:I

    iput v9, v8, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1239
    .end local v0    # "afterParameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "afterSize":Landroid/hardware/Camera$Size;
    .end local v2    # "bestPreviewFmt":I
    .end local v5    # "mPictureFmt":I
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 132
    :cond_b
    :try_start_1
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " "

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "devName":Ljava/lang/String;
    const-string/jumbo v8, "nexus5x"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 134
    iget v8, p0, Lemn;->d:I

    add-int/lit16 v8, v8, 0xb4

    iput v8, p0, Lemn;->d:I

    .line 143
    :cond_c
    iget v8, p0, Lemn;->d:I

    rem-int/lit16 v8, v8, 0x168

    iput v8, p0, Lemn;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 148
    .end local v3    # "devName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/lang/Exception;
    const/16 v8, 0x5a

    invoke-virtual {v6, v8}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 150
    const-string/jumbo v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "method error"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 151
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/NoSuchMethodError;
    const/16 v8, 0x5a

    invoke-virtual {v6, v8}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 153
    const-string/jumbo v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "method error"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2193
    .end local v4    # "e":Ljava/lang/NoSuchMethodError;
    :cond_d
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2194
    const/4 v5, 0x4

    goto/16 :goto_4

    .line 2195
    :cond_e
    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2196
    const/16 v5, 0x11

    goto/16 :goto_4

    .line 2198
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 2205
    .restart local v5    # "mPictureFmt":I
    :cond_10
    const v9, 0x32315659

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2206
    const v2, 0x32315659

    goto/16 :goto_5

    .line 2208
    :cond_11
    const/4 v2, -0x1

    goto/16 :goto_5

    .line 163
    .restart local v2    # "bestPreviewFmt":I
    :cond_12
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v9, "GT-I9300"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 164
    const/16 v8, 0x14

    invoke-virtual {v6, v8}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto/16 :goto_6
.end method
