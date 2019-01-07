.class public Lcom/alibaba/android/user/impl/NameInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/userbase/NameInterface;
.source "NameInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)Lckl;
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-static {}, Lfxa;->a()Lfxa;

    move-result-object v1

    .line 3126
    sget-object v0, Lfxa$4;->a:[I

    invoke-virtual {p6}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 3157
    const/4 v0, 0x0

    .line 3155
    :goto_0
    return-object v0

    .line 3128
    :pswitch_0
    invoke-static {p1, p2, p3, p4, p5}, Lfxa;->a(Ljava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3134
    invoke-virtual/range {v1 .. v7}, Lfxa;->a(ZLjava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move v2, v4

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3137
    invoke-virtual/range {v1 .. v7}, Lfxa;->a(ZLjava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3143
    invoke-virtual/range {v1 .. v7}, Lfxa;->b(ZLjava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    move v2, v4

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3146
    invoke-virtual/range {v1 .. v7}, Lfxa;->b(ZLjava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3152
    invoke-virtual/range {v1 .. v7}, Lfxa;->c(ZLjava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move v2, v4

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3155
    invoke-virtual/range {v1 .. v7}, Lfxa;->c(ZLjava/lang/String;JJ)Lckl;

    move-result-object v0

    goto :goto_0

    .line 3126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "orgUserName"    # Ljava/lang/String;
    .param p4, "orgNickName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    .line 65
    move-object v0, p1

    .local v0, "displayName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    move-object v0, p3

    .line 67
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    move-object v0, p4

    .line 77
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    move-object v0, p2

    .line 81
    :cond_1
    return-object v0

    .line 71
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lckl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lckl;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-static {}, Lfxa;->a()Lfxa;

    move-result-object v1

    .line 1075
    if-nez p6, :cond_0

    .line 1076
    new-instance v1, Lckl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lckl;-><init>(Ljava/lang/String;JJ)V

    .line 1077
    const-string/jumbo v2, ""

    .line 2043
    iput-object v2, v1, Lckl;->d:Ljava/lang/String;

    .line 1078
    const-string/jumbo v2, ""

    .line 2051
    iput-object v2, v1, Lckl;->e:Ljava/lang/String;

    .line 1079
    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lfxa;->a(Lcom/alibaba/wukong/Callback;Lckl;)V

    .line 1118
    :goto_0
    return-void

    .line 1082
    :cond_0
    sget-object v3, Lfxa$4;->a:[I

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1120
    const-string/jumbo v1, "error_name_null_code"

    const-string/jumbo v2, "error_name_null_msg"

    move-object/from16 v0, p7

    invoke-static {v0, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :pswitch_0
    new-instance v7, Lfxa$1;

    move-object/from16 v0, p7

    invoke-direct {v7, v1, v0}, Lfxa$1;-><init>(Lfxa;Lcom/alibaba/wukong/Callback;)V

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Lfxa;->a(Ljava/lang/String;JJLfxa$a;)V

    goto :goto_0

    :pswitch_1
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p7

    .line 1091
    invoke-virtual/range {v1 .. v8}, Lfxa;->a(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :pswitch_2
    move v2, v5

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p7

    .line 1095
    invoke-virtual/range {v1 .. v8}, Lfxa;->a(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :pswitch_3
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p7

    .line 1102
    invoke-virtual/range {v1 .. v8}, Lfxa;->b(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :pswitch_4
    move v2, v5

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p7

    .line 1106
    invoke-virtual/range {v1 .. v8}, Lfxa;->b(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :pswitch_5
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p7

    .line 1113
    invoke-virtual/range {v1 .. v8}, Lfxa;->c(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :pswitch_6
    move v2, v5

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p7

    .line 1117
    invoke-virtual/range {v1 .. v8}, Lfxa;->c(ZLjava/lang/String;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1082
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 36
    return-void
.end method
