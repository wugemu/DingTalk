.class public final Lfnn;
.super Ljava/lang/Object;
.source "ExternalContactUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    if-nez p0, :cond_1

    move v1, v2

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$c;->label_color_array:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 74
    .local v0, "colorArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 75
    aget v3, v0, v1

    if-eq v3, p1, :cond_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 85
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 86
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 89
    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "obj_key_external_contact_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;DD)V
    .locals 5
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "{}"

    :goto_1
    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :goto_2
    :try_start_1
    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 150
    .local v2, "location":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "location":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 157
    .restart local v2    # "location":Lorg/json/JSONObject;
    :cond_1
    :goto_3
    :try_start_2
    const-string/jumbo v3, "longitude"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v3, "latitude"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "location":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 145
    :catch_1
    move-exception v3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 154
    :catch_2
    move-exception v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .restart local v2    # "location":Lorg/json/JSONObject;
    goto :goto_3
.end method

.method public static a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Z
    .locals 8
    .param p1, "dest"    # Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    const/4 v1, 0x0

    .line 94
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 99
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    if-eqz v0, :cond_2

    .line 102
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 103
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)[D
    .locals 11
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 111
    if-nez p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v5

    .line 114
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 118
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "location"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    .local v3, "location":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 121
    const-string/jumbo v6, "longitude"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "longitude":Ljava/lang/String;
    const-string/jumbo v6, "latitude"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "latitude":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    const/4 v6, 0x2

    new-array v6, v6, [D

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v6

    goto :goto_0

    .line 127
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "latitude":Ljava/lang/String;
    .end local v3    # "location":Lorg/json/JSONObject;
    .end local v4    # "longitude":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "getPoiInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getPoiInfo JSONException "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "getPoiInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getPoiInfo NumberFormatException "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .prologue
    .line 167
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 185
    .local v2, "location":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 189
    :try_start_2
    const-string/jumbo v3, "longitude"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v3, "latitude"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->extension:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "location":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 177
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    goto :goto_0
.end method
