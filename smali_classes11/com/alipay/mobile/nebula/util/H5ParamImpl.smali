.class public Lcom/alipay/mobile/nebula/util/H5ParamImpl;
.super Ljava/lang/Object;
.source "H5ParamImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ParamImpl"


# instance fields
.field private defaultValue:Ljava/lang/Object;

.field private longName:Ljava/lang/String;

.field private shortName:Ljava/lang/String;

.field private type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Param$ParamType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ln"    # Ljava/lang/String;
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .param p4, "dv"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 24
    iput-object p4, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setType(Lcom/alipay/mobile/h5container/api/H5Param$ParamType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 45
    return-void
.end method

.method public unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "fillDefault"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    .line 53
    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object p1

    .line 58
    :cond_1
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    if-ne v6, v7, :cond_a

    .line 59
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 61
    .local v4, "value":Z
    const/4 v2, 0x0

    .line 62
    .local v2, "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 63
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_1
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 69
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "valueStr":Ljava/lang/String;
    const-string/jumbo v6, "YES"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 71
    const/4 v4, 0x1

    .line 83
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    .end local v4    # "value":Z
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5ParamImpl"

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v4    # "value":Z
    :cond_5
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 72
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "valueStr":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "NO"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 73
    const/4 v4, 0x0

    goto :goto_2

    .line 74
    :cond_7
    const-string/jumbo v6, "false"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 75
    const/4 v4, 0x0

    goto :goto_2

    .line 76
    :cond_8
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 77
    const/4 v4, 0x1

    goto :goto_2

    .line 79
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_9
    instance-of v6, v2, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 80
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    .line 84
    .end local v4    # "value":Z
    :cond_a
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    if-ne v6, v7, :cond_e

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "df":Ljava/lang/String;
    move-object v4, v0

    .line 87
    .local v4, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 88
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-static {p1, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 95
    :cond_c
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 89
    :cond_d
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 90
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-static {p1, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 96
    .end local v0    # "df":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_e
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 97
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 99
    .local v4, "value":I
    const/4 v2, 0x0

    .line 100
    .restart local v2    # "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 101
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_f
    :goto_5
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 107
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 109
    .restart local v3    # "valueStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 119
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_10
    :goto_6
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 102
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_11
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 103
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    .line 112
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "valueStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 113
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5ParamImpl"

    const-string/jumbo v7, "Exception"

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_12
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_10

    .line 116
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_6

    .line 120
    .end local v4    # "value":I
    :cond_13
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->DOUBLE:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->type:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 121
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->defaultValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v4, v6

    .line 123
    .local v4, "value":D
    const/4 v2, 0x0

    .line 124
    .restart local v2    # "obj":Ljava/lang/Object;
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 125
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 130
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_14
    :goto_7
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 131
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3    # "valueStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    .line 141
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_15
    :goto_8
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_3

    .line 126
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_16
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 127
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->longName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    .line 134
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "valueStr":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5ParamImpl"

    const-string/jumbo v7, "Exception"

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "valueStr":Ljava/lang/String;
    :cond_17
    instance-of v6, v2, Ljava/lang/Double;

    if-eqz v6, :cond_15

    .line 138
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_8
.end method
