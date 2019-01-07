.class public Lfxf;
.super Ljava/lang/Object;
.source "PhoneCodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfxf$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfra;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lfxf;->a:Ljava/util/List;

    .line 49
    sput-object v0, Lfxf;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lfxf$a;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countryCallingCode"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v3, Lfxf$a;

    invoke-direct {v3}, Lfxf$a;-><init>()V

    .line 178
    .local v3, "ret":Lfxf$a;
    iput-object p2, v3, Lfxf$a;->a:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    iput-object p1, v3, Lfxf$a;->c:Ljava/lang/String;

    .line 183
    invoke-static {p0, p1}, Lfxf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lfxf$a;->b:Ljava/lang/String;

    .line 219
    :cond_0
    :goto_0
    return-object v3

    .line 187
    :cond_1
    const/4 v0, 0x0

    .line 188
    .local v0, "countryIso":Ljava/lang/String;
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 189
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_2

    .line 190
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 200
    :try_start_0
    invoke-static {p0}, Lfxf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 202
    .local v5, "tmpModels":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfra;

    .line 205
    .local v2, "model":Lfra;
    if-eqz v2, :cond_4

    .line 7048
    iget-object v7, v2, Lfra;->d:Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8032
    iget-object v6, v2, Lfra;->b:Ljava/lang/String;

    .line 206
    iput-object v6, v3, Lfxf$a;->c:Ljava/lang/String;

    .line 9024
    iget-object v6, v2, Lfra;->a:Ljava/lang/String;

    .line 207
    iput-object v6, v3, Lfxf$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v2    # "model":Lfra;
    .end local v5    # "tmpModels":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lfxf;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingCode"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v3, 0x0

    .line 225
    .local v3, "ret":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    move-object v0, p1

    .line 228
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_0
    :try_start_0
    invoke-static {p0}, Lfxf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 235
    .local v4, "tmpModels":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    if-eqz v4, :cond_2

    .line 236
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfra;

    .line 238
    .local v2, "model":Lfra;
    if-eqz v2, :cond_1

    .line 9032
    iget-object v6, v2, Lfra;->b:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10024
    iget-object v3, v2, Lfra;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "model":Lfra;
    .end local v4    # "tmpModels":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    :cond_2
    :goto_0
    return-object v3

    .line 245
    .restart local v0    # "code":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfra;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-class v3, Lfxf;

    monitor-enter v3

    .line 77
    :try_start_0
    sget-object v2, Lfxf;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lfxf;->a:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3

    .line 114
    :goto_0
    return-object v2

    .line 80
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$k;->region_code:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lfxf;->a(Ljava/util/List;Ljava/io/InputStreamReader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 92
    :cond_1
    :goto_1
    sget-object v2, Lfxf;->b:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    .line 93
    new-instance v2, Lfxf$1;

    invoke-direct {v2}, Lfxf$1;-><init>()V

    sput-object v2, Lfxf;->b:Ljava/lang/Runnable;

    .line 106
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    sget-object v3, Lfxf;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    sget-object v3, Lfxf;->b:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    const-class v3, Lfxf;

    monitor-enter v3

    .line 110
    :try_start_2
    sput-object v1, Lfxf;->a:Ljava/util/List;

    .line 111
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lfxf;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 80
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 88
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 88
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2

    .line 111
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lfxf;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/io/InputStreamReader;)V
    .locals 11
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfra;",
            ">;",
            "Ljava/io/InputStreamReader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lfra;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 121
    const-string/jumbo v4, "//"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "parts":[Ljava/lang/String;
    new-instance v3, Lfra;

    invoke-direct {v3}, Lfra;-><init>()V

    .line 127
    .local v3, "phoneCode":Lfra;
    array-length v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 128
    aget-object v4, v2, v6

    .line 1052
    iput-object v4, v3, Lfra;->d:Ljava/lang/String;

    .line 129
    aget-object v4, v2, v7

    .line 2036
    iput-object v4, v3, Lfra;->b:Ljava/lang/String;

    .line 130
    aget-object v4, v2, v8

    .line 2068
    iput-object v4, v3, Lfra;->f:Ljava/lang/String;

    .line 131
    aget-object v4, v2, v9

    .line 3028
    iput-object v4, v3, Lfra;->a:Ljava/lang/String;

    .line 132
    aget-object v4, v2, v10

    .line 3060
    iput-object v4, v3, Lfra;->e:Ljava/lang/String;

    .line 6080
    :cond_1
    :goto_1
    new-array v5, v10, [Ljava/lang/String;

    iget-object v4, v3, Lfra;->d:Ljava/lang/String;

    aput-object v4, v5, v6

    iget-object v4, v3, Lfra;->b:Ljava/lang/String;

    aput-object v4, v5, v7

    iget-object v4, v3, Lfra;->a:Ljava/lang/String;

    aput-object v4, v5, v8

    iget-object v4, v3, Lfra;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, ""

    :goto_2
    aput-object v4, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lfra;->g:Ljava/lang/String;

    .line 142
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_2
    array-length v4, v2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 134
    aget-object v4, v2, v6

    .line 4052
    iput-object v4, v3, Lfra;->d:Ljava/lang/String;

    .line 135
    aget-object v4, v2, v7

    .line 5036
    iput-object v4, v3, Lfra;->b:Ljava/lang/String;

    .line 136
    aget-object v4, v2, v8

    .line 5068
    iput-object v4, v3, Lfra;->f:Ljava/lang/String;

    .line 137
    aget-object v4, v2, v9

    .line 6028
    iput-object v4, v3, Lfra;->a:Ljava/lang/String;

    .line 138
    aget-object v4, v2, v10

    .line 6044
    iput-object v4, v3, Lfra;->c:Ljava/lang/String;

    .line 139
    const/4 v4, 0x5

    aget-object v4, v2, v4

    .line 6060
    iput-object v4, v3, Lfra;->e:Ljava/lang/String;

    goto :goto_1

    .line 6080
    :cond_3
    iget-object v4, v3, Lfra;->c:Ljava/lang/String;

    goto :goto_2

    .line 144
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "phoneCode":Lfra;
    :cond_4
    return-void
.end method

.method public static b(Landroid/content/Context;)Lfxf$a;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v1, Lfxf$a;

    invoke-direct {v1}, Lfxf$a;-><init>()V

    .line 150
    .local v1, "localCountryMobile":Lfxf$a;
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 155
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/content/Context;)Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;

    move-result-object v2

    .line 156
    .local v2, "mobileInfo":Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;->countryCallingCode:Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lfxf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lfxf$a;

    move-result-object v3

    .line 158
    .local v3, "tmp":Lfxf$a;
    invoke-virtual {v1, v3}, Lfxf$a;->a(Lfxf$a;)Lfxf$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "mobileInfo":Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    .end local v3    # "tmp":Lfxf$a;
    :goto_1
    iget-object v4, v1, Lfxf$a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-static {}, Lfrb;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lfxf$a;->c:Ljava/lang/String;

    .line 169
    iget-object v4, v1, Lfxf$a;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lfxf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lfxf$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 160
    .restart local v2    # "mobileInfo":Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lfxf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lfxf$a;

    move-result-object v3

    .line 161
    .restart local v3    # "tmp":Lfxf$a;
    invoke-virtual {v1, v3}, Lfxf$a;->a(Lfxf$a;)Lfxf$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    .end local v2    # "mobileInfo":Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    .end local v3    # "tmp":Lfxf$a;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
