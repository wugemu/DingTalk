.class public final Lfvn;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "FriendHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 141
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 145
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 155
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 156
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 156
    :catch_2
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 156
    :catch_4
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 156
    :catch_6
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 155
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 158
    :goto_1
    throw v4

    .line 156
    :catch_7
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 36
    check-cast p1, Lclb;

    .line 1050
    if-eqz p1, :cond_4

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1051
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1053
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 1055
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2076
    :pswitch_0
    const-class v2, Lcds;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lfvn;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_0

    .line 2078
    check-cast v0, Lcds;

    .line 2079
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->fromIdl(Lcds;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    move-result-object v0

    .line 2080
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    .line 3067
    sget-object v3, Lfnl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lfmz;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 3068
    check-cast v0, Lfmy;

    .line 2082
    invoke-interface {v0, v2}, Lfmy;->a(Ljava/util/List;)I

    goto :goto_0

    .line 1087
    :pswitch_1
    const-class v2, Lcdp;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lfvn;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1088
    if-eqz v0, :cond_0

    .line 1089
    check-cast v0, Lcdp;

    .line 1090
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->fromIdl(Lcdp;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    move-result-object v0

    .line 1091
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1092
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->e()Lfmp;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-interface {v2, v4, v5}, Lfmp;->a(J)I

    .line 1093
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->initiator:Z

    if-eqz v2, :cond_1

    .line 1094
    invoke-static {}, Lok;->a()Lok;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v8, v4}, Lok;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 1096
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_friend_request_status_changed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v3, "user_id"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1098
    const-string/jumbo v0, "friend_request_status"

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->INTRODUCE:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1101
    :cond_2
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->e()Lfmp;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->showMobile:Z

    invoke-interface {v2, v3, v4}, Lfmp;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I

    .line 1102
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_friend_request_status_changed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v3, "user_id"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1104
    const-string/jumbo v0, "friend_request_status"

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 3111
    :pswitch_2
    const-class v2, Lfpx;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lfvn;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 3112
    if-eqz v0, :cond_0

    .line 3113
    check-cast v0, Lfpx;

    .line 3114
    invoke-static {v0}, Lcom/alibaba/android/user/model/PhonebookObject;->fromIdl(Lfpx;)Lcom/alibaba/android/user/model/PhonebookObject;

    move-result-object v0

    .line 3115
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->b()Lfmr;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    invoke-interface {v2, v3}, Lfmr;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v2

    .line 3116
    if-eqz v2, :cond_0

    .line 3117
    iget-boolean v3, v0, Lcom/alibaba/android/user/model/PhonebookObject;->isDelete:Z

    if-eqz v3, :cond_3

    .line 3118
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 3119
    iput v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 3120
    const-string/jumbo v0, "none"

    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 3126
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3127
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3128
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->b()Lfmr;

    move-result-object v2

    invoke-interface {v2, v0}, Lfmr;->c(Ljava/util/List;)I

    goto/16 :goto_0

    .line 3122
    :cond_3
    iget-wide v4, v0, Lcom/alibaba/android/user/model/PhonebookObject;->uid:J

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 3123
    iget v3, v0, Lcom/alibaba/android/user/model/PhonebookObject;->tag:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 3124
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v3

    iget-wide v4, v0, Lcom/alibaba/android/user/model/PhonebookObject;->uid:J

    iget v0, v0, Lcom/alibaba/android/user/model/PhonebookObject;->tag:I

    int-to-long v6, v0

    invoke-interface {v3, v4, v5, v6, v7}, Lfac;->a(JJ)V

    goto :goto_1

    .line 1072
    :cond_4
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 36
    return-void

    .line 1055
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
