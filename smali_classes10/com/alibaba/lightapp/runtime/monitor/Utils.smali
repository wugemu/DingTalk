.class public Lcom/alibaba/lightapp/runtime/monitor/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DESENSITIZED_CHAR_NUM:I

.field public static final DESENSITIZED_PATH_STRING:Ljava/lang/String; = "/***/"

.field public static final DESENSITIZED_STRING:Ljava/lang/String; = "***"

.field public static final DESENSITIZED_SUFFIX:[Ljava/lang/String;

.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 18
    sput v3, Lcom/alibaba/lightapp/runtime/monitor/Utils;->DESENSITIZED_CHAR_NUM:I

    .line 19
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "zip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "doc"

    aput-object v2, v0, v1

    const-string/jumbo v1, "txt"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "webp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "pdf"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "xlxs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "bmp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "pptx"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ppt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "docx"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "xls"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "jpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/Utils;->DESENSITIZED_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const-string/jumbo v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "indexSep":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 146
    .end local v0    # "indexSep":I
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static urlDesensitization(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo p0, ""

    .line 130
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 92
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    sget-object v8, Lcom/alibaba/lightapp/runtime/monitor/Utils;->DESENSITIZED_SUFFIX:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v0, v8, v7

    .line 93
    .local v0, "dexSuffix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "/[^/]+\\."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "/***."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 92
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "dexSuffix":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 100
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "scheme":Ljava/lang/String;
    if-nez v5, :cond_3

    const-string/jumbo v5, ""

    .line 102
    :cond_3
    const-string/jumbo v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "https"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "***"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "host":Ljava/lang/String;
    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    .line 105
    :cond_5
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 107
    .local v4, "replaceString":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 108
    const-string/jumbo v7, "/[^/]+"

    invoke-static {v7, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 109
    move-object v4, v3

    .line 115
    :cond_6
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 116
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 117
    invoke-virtual {v7, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, "://"

    .line 118
    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 119
    invoke-virtual {v7, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 120
    invoke-virtual {v7, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 121
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 111
    :cond_7
    const-string/jumbo v7, "/.+/"

    const-string/jumbo v8, "/***/"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 123
    :cond_8
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 124
    invoke-virtual {v7, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 125
    invoke-virtual {v7, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 126
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 128
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "replaceString":Ljava/lang/String;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static urlDesensitizationOld(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo p0, ""

    .line 85
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 56
    .local v6, "len":I
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 57
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "host":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 62
    .local v5, "indexSep":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int v2, v5, v9

    .line 64
    .local v2, "endIndex":I
    sget v9, Lcom/alibaba/lightapp/runtime/monitor/Utils;->DESENSITIZED_CHAR_NUM:I

    sub-int v9, v6, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_2

    .line 65
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    add-int/lit8 v11, v2, 0x1

    .line 66
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "***"

    .line 67
    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    add-int/lit8 v10, v2, 0x4

    .line 68
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 69
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 72
    .local v0, "desen":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sub-int v9, v6, v2

    add-int/lit8 v1, v9, -0x1

    .line 73
    .local v1, "desenLen":I
    if-lez v1, :cond_0

    .line 74
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 75
    const-string/jumbo v9, "*"

    invoke-virtual {v0, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->insert(ILjava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 78
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 83
    .end local v0    # "desen":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "desenLen":I
    .end local v2    # "endIndex":I
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "indexSep":I
    .end local v6    # "len":I
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 84
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static urlEndsWithDingtalk(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ".dingtalk.com"

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ".dingtalkapps.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
