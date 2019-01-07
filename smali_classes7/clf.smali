.class public final Lclf;
.super Ljava/lang/Object;
.source "PresenterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p0, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 24
    :goto_0
    if-nez p0, :cond_0

    .line 25
    const-string/jumbo v4, "mvp"

    const-string/jumbo v5, "PresenterUtils"

    const-string/jumbo v6, "class null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_1
    return-object v2

    .line 1068
    :cond_0
    if-nez p0, :cond_3

    .line 1069
    const-string/jumbo v4, "mvp"

    const-string/jumbo v6, "PresenterUtils"

    const-string/jumbo v7, " isParameterizedType class null"

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v4, v5

    .line 28
    :goto_2
    if-eqz v4, :cond_e

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 32
    .local v3, "types":[Ljava/lang/reflect/Type;
    if-eqz v3, :cond_d

    array-length v4, v3

    if-lez v4, :cond_d

    .line 34
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 1152
    if-nez v4, :cond_4

    .line 1153
    const-string/jumbo v4, ""

    move-object v5, v4

    .line 1124
    :goto_3
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    move-object v0, v2

    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_4
    if-nez v0, :cond_b

    .line 36
    const-string/jumbo v4, "mvp"

    const-string/jumbo v5, "PresenterUtils"

    const-string/jumbo v6, "get presenter class null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 49
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v3    # "types":[Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "mvp"

    const-string/jumbo v5, "PresenterUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1073
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1074
    if-eqz v4, :cond_1

    const-class v6, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    .line 1155
    .restart local v3    # "types":[Ljava/lang/reflect/Type;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1156
    const-string/jumbo v5, "class "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1157
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_5
    move-object v5, v4

    .line 1161
    goto :goto_3

    .line 1158
    :cond_6
    const-string/jumbo v5, "interface "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1159
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 1128
    :cond_7
    sget-object v4, Lcpn;->a:Ljava/util/HashMap;

    if-nez v4, :cond_8

    .line 1129
    new-instance v4, Ljava/util/HashMap;

    const/16 v6, 0x10

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcpn;->a:Ljava/util/HashMap;

    .line 1133
    :cond_8
    sget-object v4, Lcpn;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1134
    sget-object v4, Lcpn;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 1136
    if-nez v4, :cond_9

    .line 1137
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1138
    sget-object v6, Lcpn;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object v0, v4

    .line 1141
    goto/16 :goto_4

    .line 1145
    :cond_a
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1146
    sget-object v4, Lcpn;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 40
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_b
    const-class v4, Lclg;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, "t":Ljava/lang/Object;, "TT;"
    goto/16 :goto_1

    .line 44
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_c
    const-string/jumbo v4, "mvp"

    const-string/jumbo v5, "PresenterUtils"

    const-string/jumbo v6, "presenter error \uff0cnot extends BasePresenter"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 47
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_d
    const-string/jumbo v4, "mvp"

    const-string/jumbo v5, "PresenterUtils"

    const-string/jumbo v6, "activity or fragment has not presenter"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 55
    .end local v3    # "types":[Ljava/lang/reflect/Type;
    :cond_e
    if-eqz p0, :cond_f

    const-class v4, Lclh;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 56
    :cond_f
    const-string/jumbo v4, "mvp"

    const-string/jumbo v5, "PresenterUtils"

    const-string/jumbo v6, "is not parameterized type"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 59
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_0
.end method
