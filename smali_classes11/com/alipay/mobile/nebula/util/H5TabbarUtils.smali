.class public Lcom/alipay/mobile/nebula/util/H5TabbarUtils;
.super Ljava/lang/Object;
.source "H5TabbarUtils.java"


# static fields
.field public static final MATCH_TYPE_PARTHASH:Ljava/lang/String; = "partHash"

.field public static final MATCH_TYPE_PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "H5TabbarUtils"

.field private static tabDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 208
    return-void
.end method

.method public static addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "normal"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 211
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method public static clearTabDataByAppId(Ljava/lang/String;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "H5TabbarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearTabDataByAppId do nothing"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static clearTabDatas()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "H5TabbarUtils"

    const-string/jumbo v1, "clearTabDatas"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    :cond_0
    return-void
.end method

.method public static generateEmptyTopDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 188
    .local v0, "sd":Landroid/graphics/drawable/StateListDrawable;
    return-object v0
.end method

.method public static generateTextColor(II)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/high16 v3, -0x1000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    or-int v1, v3, p0

    .line 193
    .local v1, "normal":I
    or-int v2, v3, p1

    .line 194
    .local v2, "pressed":I
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v3, v9, [[I

    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    aput-object v4, v3, v7

    new-array v4, v6, [I

    aput-object v4, v3, v8

    new-array v4, v9, [I

    aput v2, v4, v6

    aput v2, v4, v7

    aput v1, v4, v8

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 202
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public static generateTopDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 218
    :cond_0
    if-nez p1, :cond_1

    .line 219
    move-object p1, p0

    .line 221
    :cond_1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 222
    .local v0, "sd":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 223
    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 224
    new-array v1, v3, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 12
    .param p0, "jsonUrl"    # Ljava/lang/String;
    .param p1, "activityStartParams"    # Landroid/os/Bundle;

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "finalUrl":Ljava/lang/String;
    const-string/jumbo v9, "url"

    invoke-static {p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "entryUrl":Ljava/lang/String;
    const/4 v7, 0x1

    .line 136
    .local v7, "useNew":Z
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 137
    .local v5, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v5, :cond_0

    .line 138
    const-string/jumbo v9, "h5_tabbarUrlRule"

    invoke-interface {v5, v9}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "no"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 140
    const/4 v7, 0x0

    .line 143
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v9, "H5TabbarUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getAbsoluteUrl useNew "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v7, :cond_2

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 146
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlWithURLLib(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 157
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->neverAddHashQuery()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v2

    .line 172
    .end local v2    # "finalUrl":Ljava/lang/String;
    .local v3, "finalUrl":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 149
    .end local v3    # "finalUrl":Ljava/lang/String;
    .restart local v2    # "finalUrl":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 150
    const/4 v9, 0x0

    invoke-static {v1, p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 161
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "entryUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 163
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "fragmentPart":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 165
    const-string/jumbo v9, "?"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 166
    .local v6, "indexOfQuery":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .end local v4    # "fragmentPart":Ljava/lang/String;
    .end local v6    # "indexOfQuery":I
    :cond_4
    const-string/jumbo v9, "H5TabbarUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "addHashQuery : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 172
    .end local v2    # "finalUrl":Ljava/lang/String;
    .restart local v3    # "finalUrl":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getTabDataByAppId(Ljava/lang/String;)[B
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v0, "H5TabbarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTabDataByAppId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUrlWithoutQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "urlWithoutQuery":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 96
    const/4 v8, 0x0

    .line 129
    :goto_0
    return-object v8

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 99
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 100
    const-string/jumbo v8, "path"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    const-string/jumbo v8, "H5TabbarUtils"

    const-string/jumbo v9, "getUrlWithoutQuery MATCH_TYPE_PATH"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v8, "://"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    .end local v0    # "authority":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v8, "partHash"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 111
    const-string/jumbo v8, "H5TabbarUtils"

    const-string/jumbo v9, "getUrlWithoutQuery MATCH_TYPE_PARTHASH"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "query":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    move-object v7, p0

    .line 119
    :goto_1
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "fragment":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 121
    const-string/jumbo v8, "?"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "indexOfQuery":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 123
    const/4 v8, 0x0

    .line 124
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .end local v1    # "fragment":Ljava/lang/String;
    .end local v2    # "indexOfQuery":I
    .end local v3    # "query":Ljava/lang/String;
    :cond_2
    move-object v8, v7

    .line 129
    goto :goto_0

    .line 116
    .restart local v3    # "query":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "?"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static ifUrlMatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 17
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "entryUrl"    # Ljava/lang/String;
    .param p2, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const/4 v11, -0x1

    .line 58
    .local v11, "selectedIndex":I
    sget-object v14, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v14, :cond_1

    sget-object v14, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    move-object v9, v14

    .line 59
    .local v9, "oriData":[B
    :goto_0
    if-eqz v9, :cond_2

    .line 60
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 61
    .local v13, "tmpData":Ljava/lang/String;
    const-string/jumbo v14, "H5TabbarUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ifUrlMatch tmpData "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 63
    .local v10, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "matchType"

    const-string/jumbo v15, "partHash"

    invoke-static {v10, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "matchType":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getUrlWithoutQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "entryUrlWithoutQuery":Ljava/lang/String;
    const-string/jumbo v14, "H5TabbarUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ifUrlMatch entryUrlWithoutQuery "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v14, "items"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 67
    .local v6, "items":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 68
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 69
    .local v7, "itemsLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 70
    const/4 v14, 0x5

    if-ge v4, v14, :cond_2

    .line 74
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 75
    .local v5, "item":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 76
    const-string/jumbo v14, "url"

    invoke-virtual {v5, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "shortUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "abUrl":Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getUrlWithoutQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "abUrlWithoutQuery":Ljava/lang/String;
    const-string/jumbo v14, "H5TabbarUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ifUrlMatch shortUrl "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", abUrl "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", abUrlWithoutQuery "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 83
    move v11, v4

    .line 69
    .end local v1    # "abUrl":Ljava/lang/String;
    .end local v2    # "abUrlWithoutQuery":Ljava/lang/String;
    .end local v12    # "shortUrl":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "entryUrlWithoutQuery":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "items":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "itemsLength":I
    .end local v8    # "matchType":Ljava/lang/String;
    .end local v9    # "oriData":[B
    .end local v10    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "tmpData":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 89
    .restart local v9    # "oriData":[B
    :cond_2
    const-string/jumbo v14, "H5TabbarUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ifUrlMatch final result "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v11
.end method

.method private static neverAddHashQuery()Z
    .locals 3

    .prologue
    .line 176
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 177
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v2, "h5_neverAddHashQuery"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x0

    .line 183
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setTabData(Ljava/lang/String;[B)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "H5TabbarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setTabData "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->tabDatas:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method
