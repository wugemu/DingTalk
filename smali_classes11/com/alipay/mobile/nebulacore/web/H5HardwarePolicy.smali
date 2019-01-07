.class public Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;
.super Ljava/lang/Object;
.source "H5HardwarePolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5HardwarePolicy"

.field private static disableHWACByHWInfo:Z = false

.field private static hasParseDisableHWACByHardwareInfo:Z = false

.field private static final onDayTime:J = 0x5265c00L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->hasParseDisableHWACByHardwareInfo:Z

    .line 33
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHWACByHWInfo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableHWACByHardwareInfo()Z
    .locals 33

    .prologue
    .line 51
    sget-boolean v30, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->hasParseDisableHWACByHardwareInfo:Z

    if-eqz v30, :cond_0

    .line 52
    const-string/jumbo v30, "H5HardwarePolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableHWACByHWInfo by cache: "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v32, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHWACByHWInfo:Z

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-boolean v30, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHWACByHWInfo:Z

    .line 167
    .local v8, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_0
    return v30

    .line 56
    .end local v8    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    const/16 v30, 0x1

    sput-boolean v30, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->hasParseDisableHWACByHardwareInfo:Z

    .line 58
    :try_start_0
    const-class v30, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 59
    .restart local v8    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v8, :cond_6

    .line 60
    const-string/jumbo v30, "h5_disableHWACByHardwareInfo"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 61
    .local v7, "configArrayStr":Lcom/alibaba/fastjson/JSONArray;
    if-nez v7, :cond_1

    .line 62
    const/16 v30, 0x0

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v28

    .line 65
    .local v28, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v28

    if-ge v11, v0, :cond_6

    .line 66
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    .line 69
    .local v19, "ruleObject":Lcom/alibaba/fastjson/JSONObject;
    const/16 v26, 0x1

    .line 70
    .local v26, "sdkLevelMatch":Z
    const-string/jumbo v30, "sdkLevelRange"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v27

    .line 71
    .local v27, "sdkLevelObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v27, :cond_2

    .line 72
    const-string/jumbo v30, "max"

    const v31, 0x7fffffff

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 73
    .local v13, "max":I
    const-string/jumbo v30, "min"

    const/high16 v31, -0x80000000

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v14

    .line 74
    .local v14, "min":I
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v30

    if-lt v0, v14, :cond_3

    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v30

    if-gt v0, v13, :cond_3

    const/16 v26, 0x1

    .line 76
    .end local v13    # "max":I
    .end local v14    # "min":I
    :cond_2
    :goto_2
    if-nez v26, :cond_4

    .line 77
    const-string/jumbo v30, "H5HardwarePolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableHWACByHardwareInfo sdk "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " not match"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 74
    .restart local v13    # "max":I
    .restart local v14    # "min":I
    :cond_3
    const/16 v26, 0x0

    goto :goto_2

    .line 81
    .end local v13    # "max":I
    .end local v14    # "min":I
    :cond_4
    const/16 v16, 0x1

    .line 82
    .local v16, "modelMatch":Z
    const-string/jumbo v30, "models"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v18

    .line 83
    .local v18, "modelsArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v18, :cond_5

    .line 84
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    .line 85
    .local v17, "modelSize":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_5

    .line 86
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, "model":Ljava/lang/String;
    const-string/jumbo v30, "H5HardwarePolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableHWACByHardwareInfo model "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v32, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v30, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 90
    if-nez v16, :cond_5

    .line 85
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 95
    .end local v12    # "j":I
    .end local v15    # "model":Ljava/lang/String;
    .end local v17    # "modelSize":I
    :cond_5
    if-nez v16, :cond_7

    .line 96
    const-string/jumbo v30, "H5HardwarePolicy"

    const-string/jumbo v31, "disableHWACByHardwareInfo model not match"

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 164
    .end local v7    # "configArrayStr":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "i":I
    .end local v16    # "modelMatch":Z
    .end local v18    # "modelsArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v19    # "ruleObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v26    # "sdkLevelMatch":Z
    .end local v27    # "sdkLevelObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v28    # "size":I
    :catch_0
    move-exception v29

    .line 165
    .local v29, "t":Ljava/lang/Throwable;
    const-string/jumbo v30, "H5HardwarePolicy"

    const-string/jumbo v31, "parseDisableHWACByHardwareInfo error"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v29    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_5
    sget-boolean v30, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHWACByHWInfo:Z

    goto/16 :goto_0

    .line 101
    .restart local v7    # "configArrayStr":Lcom/alibaba/fastjson/JSONArray;
    .restart local v11    # "i":I
    .restart local v16    # "modelMatch":Z
    .restart local v18    # "modelsArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v19    # "ruleObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v26    # "sdkLevelMatch":Z
    .restart local v27    # "sdkLevelObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v28    # "size":I
    :cond_7
    const/4 v4, 0x1

    .line 102
    .local v4, "boardMatch":Z
    :try_start_1
    const-string/jumbo v30, "boards"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 103
    .local v5, "boardsArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v5, :cond_a

    .line 104
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 105
    .local v6, "boardsSize":I
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_6
    if-ge v12, v6, :cond_a

    .line 106
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "board":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "cpuHardWare":Ljava/lang/String;
    const-string/jumbo v30, "H5HardwarePolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableHWACByHardwareInfo cpuHardWare "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz v10, :cond_8

    .line 111
    const-string/jumbo v30, "\\s+"

    const-string/jumbo v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_9

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_9

    const/4 v4, 0x1

    .line 115
    :cond_8
    :goto_7
    if-nez v4, :cond_a

    .line 105
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 112
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 120
    .end local v3    # "board":Ljava/lang/String;
    .end local v6    # "boardsSize":I
    .end local v10    # "cpuHardWare":Ljava/lang/String;
    .end local v12    # "j":I
    :cond_a
    if-nez v4, :cond_b

    .line 121
    const-string/jumbo v30, "H5HardwarePolicy"

    const-string/jumbo v31, "disableHWACByHardwareInfo board not match"

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 125
    :cond_b
    const/16 v21, 0x1

    .line 126
    .local v21, "screenHeightMatch":Z
    const-string/jumbo v30, "screenHeightRange"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v22

    .line 127
    .local v22, "screenHeightRangeObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v22, :cond_c

    .line 128
    const-string/jumbo v30, "max"

    const v31, 0x7fffffff

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 129
    .restart local v13    # "max":I
    const-string/jumbo v30, "min"

    const/high16 v31, -0x80000000

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v14

    .line 130
    .restart local v14    # "min":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 131
    .local v9, "context":Landroid/content/Context;
    if-eqz v9, :cond_c

    .line 132
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v20

    .line 133
    .local v20, "screenHeight":I
    const-string/jumbo v30, "H5HardwarePolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableHWACByHardwareInfo screenHeight "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move/from16 v0, v20

    if-lt v0, v14, :cond_d

    move/from16 v0, v20

    if-gt v0, v13, :cond_d

    const/16 v21, 0x1

    .line 137
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v20    # "screenHeight":I
    :cond_c
    :goto_8
    if-nez v21, :cond_e

    .line 138
    const-string/jumbo v30, "H5HardwarePolicy"

    const-string/jumbo v31, "disableHWACByHardwareInfo screenHeight not match"

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 134
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "max":I
    .restart local v14    # "min":I
    .restart local v20    # "screenHeight":I
    :cond_d
    const/16 v21, 0x0

    goto :goto_8

    .line 142
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v20    # "screenHeight":I
    :cond_e
    const/16 v24, 0x1

    .line 143
    .local v24, "screenWidthMatch":Z
    const-string/jumbo v30, "screenWidthRange"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v25

    .line 144
    .local v25, "screenWidthRangeObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v25, :cond_f

    .line 145
    const-string/jumbo v30, "max"

    const v31, 0x7fffffff

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 146
    .restart local v13    # "max":I
    const-string/jumbo v30, "min"

    const/high16 v31, -0x80000000

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v14

    .line 147
    .restart local v14    # "min":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 148
    .restart local v9    # "context":Landroid/content/Context;
    if-eqz v9, :cond_f

    .line 149
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v23

    .line 150
    .local v23, "screenWidth":I
    const-string/jumbo v30, "H5HardwarePolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "disableHWACByHardwareInfo screenWidth "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move/from16 v0, v23

    if-lt v0, v14, :cond_10

    move/from16 v0, v23

    if-gt v0, v13, :cond_10

    const/16 v24, 0x1

    .line 154
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v23    # "screenWidth":I
    :cond_f
    :goto_9
    if-nez v24, :cond_11

    .line 155
    const-string/jumbo v30, "H5HardwarePolicy"

    const-string/jumbo v31, "disableHWACByHardwareInfo screenWidth not match"

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 151
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "max":I
    .restart local v14    # "min":I
    .restart local v23    # "screenWidth":I
    :cond_10
    const/16 v24, 0x0

    goto :goto_9

    .line 159
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v23    # "screenWidth":I
    :cond_11
    const-string/jumbo v30, "H5HardwarePolicy"

    const-string/jumbo v31, "disableHWACByHardwareInfo gocha!"

    invoke-static/range {v30 .. v31}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v30, 0x1

    sput-boolean v30, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHWACByHWInfo:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method public static disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 14
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 175
    const-string/jumbo v11, "forceHardAccelerate"

    invoke-static {p0, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "forceHardAccelerate":Ljava/lang/String;
    const-string/jumbo v11, "yes"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v13

    .line 183
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v11

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 184
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_2

    .line 185
    const-string/jumbo v11, "h5_interceptCrashAnalyzerBizType"

    invoke-interface {v1, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 187
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 188
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 195
    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v11, "h5_interceptCrashAnalyzer"

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "onlineConfig":Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 197
    .local v7, "onlineArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 199
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 200
    .local v6, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "ma"

    invoke-virtual {v6, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "ma":Ljava/lang/String;
    const-string/jumbo v11, "mo"

    invoke-virtual {v6, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "mo":Ljava/lang/String;
    const-string/jumbo v11, "sdk_int"

    invoke-virtual {v6, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 205
    .local v9, "sdk":I
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 206
    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 207
    if-eqz v9, :cond_0

    .line 208
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v9, v11, :cond_3

    .line 210
    const-string/jumbo v11, "H5HardwarePolicy"

    const-string/jumbo v12, "prevent CrashAnalyzer"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isAbove14Level()Z
    .locals 2

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
