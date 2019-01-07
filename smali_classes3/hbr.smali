.class public final Lhbr;
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x5a

    iput v0, p0, Lhbr;->d:I

    .line 34
    iput-object p1, p0, Lhbr;->a:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera;Z)V
    .locals 11
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 67
    .local v5, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v5, :cond_1

    .line 68
    const-string/jumbo v7, "CameraConfiguration"

    const-string/jumbo v8, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Initial camera parameters: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    if-eqz p2, :cond_2

    .line 75
    const-string/jumbo v7, "CameraConfiguration"

    const-string/jumbo v8, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    iget-object v7, p0, Lhbr;->a:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1202
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/FrontLightMode;

    move-result-object v7

    sget-object v8, Lcom/alibaba/laiwang/photokit/picker/edit/camera/FrontLightMode;->ON:Lcom/alibaba/laiwang/photokit/picker/edit/camera/FrontLightMode;

    if-ne v7, v8, :cond_b

    const/4 v7, 0x1

    .line 1207
    :goto_1
    invoke-static {v5, v7}, Lhbs;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 1208
    iget-object v8, p0, Lhbr;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1209
    if-nez p2, :cond_3

    const-string/jumbo v9, "preferences_disable_exposure"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1210
    invoke-static {v5, v7}, Lhbs;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 82
    :cond_3
    const-string/jumbo v7, "preferences_auto_focus"

    const/4 v8, 0x1

    .line 84
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "preferences_disable_continuous_focus"

    const/4 v9, 0x1

    .line 85
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 82
    invoke-static {v5, v7, v8, p2}, Lhbs;->a(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 88
    if-nez p2, :cond_6

    .line 89
    const-string/jumbo v7, "preferences_invert_scan"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 90
    invoke-static {v5}, Lhbs;->e(Landroid/hardware/Camera$Parameters;)V

    .line 93
    :cond_4
    const-string/jumbo v7, "preferences_disable_barcode_scene_mode"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_5

    .line 94
    invoke-static {v5}, Lhbs;->d(Landroid/hardware/Camera$Parameters;)V

    .line 97
    :cond_5
    const-string/jumbo v7, "preferences_disable_metering"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_6

    .line 98
    invoke-static {v5}, Lhbs;->c(Landroid/hardware/Camera$Parameters;)V

    .line 99
    invoke-static {v5}, Lhbs;->a(Landroid/hardware/Camera$Parameters;)V

    .line 100
    invoke-static {v5}, Lhbs;->b(Landroid/hardware/Camera$Parameters;)V

    .line 107
    :cond_6
    :try_start_0
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "M9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v8, "Meizu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 108
    iget v7, p0, Lhbr;->d:I

    add-int/lit8 v7, v7, 0x5a

    iput v7, p0, Lhbr;->d:I

    .line 110
    :cond_7
    iget v7, p0, Lhbr;->d:I

    invoke-virtual {p1, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2153
    :goto_2
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v7

    .line 2154
    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2155
    const/16 v4, 0x100

    .line 2165
    .local v4, "mPictureFmt":I
    :goto_3
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v7

    .line 2166
    const/16 v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2167
    const/16 v2, 0x11

    .line 121
    .local v2, "bestPreviewFmt":I
    :goto_4
    if-ltz v2, :cond_8

    .line 122
    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 124
    :cond_8
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "HTC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "801e"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "One"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 125
    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 130
    :cond_9
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SQY: before set Camera parameters , now ScreenSize is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lhbr;->b:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", previewSize to set  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lhbr;->c:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v5, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 134
    iget-object v7, p0, Lhbr;->e:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lhbr;->e:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 136
    iget-object v7, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Final camera parameters: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 142
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 143
    .local v0, "afterParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 144
    .local v1, "afterSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    iget-object v7, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    if-eq v7, v8, :cond_0

    .line 145
    :cond_a
    const-string/jumbo v7, "CameraConfiguration"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Camera said it supported preview size "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", but after setting it, preview size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v7, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 148
    iget-object v7, p0, Lhbr;->c:Landroid/graphics/Point;

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1202
    .end local v0    # "afterParameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "afterSize":Landroid/hardware/Camera$Size;
    .end local v2    # "bestPreviewFmt":I
    .end local v4    # "mPictureFmt":I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    const/16 v7, 0x5a

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 113
    const-string/jumbo v7, "CameraConfiguration"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "method error"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    const/16 v7, 0x5a

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 116
    const-string/jumbo v7, "CameraConfiguration"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "method error"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2156
    .end local v3    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2157
    const/4 v4, 0x4

    goto/16 :goto_3

    .line 2158
    :cond_d
    const/16 v8, 0x11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2159
    const/16 v4, 0x11

    goto/16 :goto_3

    .line 2161
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2168
    .restart local v4    # "mPictureFmt":I
    :cond_f
    const v8, 0x32315659

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2169
    const v2, 0x32315659

    goto/16 :goto_4

    .line 2171
    :cond_10
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 126
    .restart local v2    # "bestPreviewFmt":I
    :cond_11
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "GT-I9300"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 127
    const/16 v7, 0x14

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto/16 :goto_5
.end method
