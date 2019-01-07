.class public final Ldnf;
.super Ljava/lang/Object;
.source "MdPreparser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldnf$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ldxc;

.field private f:Ldne;

.field private g:Lldm;

.field private h:Ldxb;

.field private i:Ldnb;


# direct methods
.method public constructor <init>(JLdne;)V
    .locals 5
    .param p1, "overloadTime"    # J
    .param p3, "cache"    # Ldne;

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldnf;->b:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "md-preparse"

    iput-object v0, p0, Ldnf;->c:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "md-bg-preparse"

    iput-object v0, p0, Ldnf;->d:Ljava/lang/String;

    .line 46
    new-instance v0, Ldxc;

    const-string/jumbo v1, "md-preparse"

    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v0, v1, v4, v2}, Ldxc;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v0, p0, Ldnf;->e:Ldxc;

    .line 47
    iput-object p3, p0, Ldnf;->f:Ldne;

    .line 48
    invoke-static {p3}, Ldna;->a(Ldne;)Lldm;

    move-result-object v0

    iput-object v0, p0, Ldnf;->g:Lldm;

    .line 49
    new-instance v0, Ldxb;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Ldxb;-><init>(J)V

    iput-object v0, p0, Ldnf;->h:Ldxb;

    .line 50
    new-instance v0, Ldnb;

    new-instance v1, Ldxc;

    const-string/jumbo v2, "md-bg-preparse"

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v1, v2, v4, v3}, Ldxc;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    invoke-direct {v0, v1, p3}, Ldnb;-><init>(Ldxc;Ldne;)V

    iput-object v0, p0, Ldnf;->i:Ldnb;

    .line 51
    return-void
.end method

.method static synthetic a(Ldnf;Ljava/util/List;Ldnf$a;)V
    .locals 11
    .param p0, "x0"    # Ldnf;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ldnf$a;

    .prologue
    .line 34
    .line 1091
    iget-object v0, p0, Ldnf;->h:Ldxb;

    .line 2022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ldxb;->b:J

    .line 1093
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_b

    .line 1094
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1095
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1097
    const/4 v3, 0x0

    .line 1098
    const/4 v2, 0x0

    .line 1099
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v5, 0x4b0

    if-ne v1, v5, :cond_2

    .line 1100
    invoke-static {v0}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;

    move-result-object v2

    .line 1102
    invoke-static {v0}, Ldkc;->r(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "before preload:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 1118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1119
    iget-object v5, p0, Ldnf;->f:Ldne;

    .line 2053
    iget-object v5, v5, Ldne;->a:Ldnc;

    .line 1119
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ldnc;->a(J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1122
    if-nez v3, :cond_0

    .line 1123
    const-string/jumbo v3, ""

    .line 1125
    :cond_0
    new-instance v5, Ldnh;

    invoke-direct {v5}, Ldnh;-><init>()V

    .line 1126
    iput-object v3, v5, Ldnh;->a:Ljava/lang/String;

    .line 1127
    iput-object v2, v5, Ldnh;->b:Ljava/lang/String;

    .line 1128
    iput-object v1, v5, Ldnh;->c:Ljava/lang/String;

    .line 1129
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v5, Ldnh;->d:Ljava/util/Map;

    .line 1130
    iget-object v1, p0, Ldnf;->h:Ldxb;

    .line 3026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Ldxb;->b:J

    sub-long/2addr v6, v8

    iget-wide v8, v1, Ldxb;->a:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    const/4 v1, 0x1

    .line 1130
    :goto_2
    if-eqz v1, :cond_8

    .line 1132
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "is over process: index"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v6, ",text:"

    aput-object v6, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 1133
    iget-object v1, p0, Ldnf;->i:Ldnb;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    .line 3029
    iget-boolean v0, v1, Ldnb;->c:Z

    .line 3032
    iget-object v0, v1, Ldnb;->a:Ldxc;

    new-instance v6, Ldnb$1;

    invoke-direct {v6, v1, v2, v3, v5}, Ldnb$1;-><init>(Ldnb;JLdnh;)V

    invoke-virtual {v0, v6}, Ldxc;->a(Ljava/lang/Runnable;)V

    .line 1093
    :cond_1
    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_0

    .line 1103
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v5, 0x4b1

    if-ne v1, v5, :cond_3

    .line 1104
    invoke-static {v0}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 1105
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v5, 0x4b2

    if-ne v1, v5, :cond_4

    .line 1106
    invoke-static {v0}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 1107
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v5, 0x4b4

    if-ne v1, v5, :cond_5

    .line 1108
    invoke-static {v0}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 1109
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v5, 0x578

    if-ne v1, v5, :cond_6

    .line 1110
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 1111
    :cond_6
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v5, 0x4b3

    if-ne v1, v5, :cond_1

    .line 1112
    invoke-static {v0}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 3026
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1137
    :cond_8
    iget-object v1, p0, Ldnf;->g:Lldm;

    iget-object v2, p0, Ldnf;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v5}, Ldnh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v6, v7, v3}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v1

    .line 1138
    if-eqz v1, :cond_9

    .line 1139
    iget-object v2, p0, Ldnf;->f:Ldne;

    .line 4053
    iget-object v2, v2, Ldne;->a:Ldnc;

    .line 1139
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v1}, Ldnc;->a(JLjava/lang/Object;)V

    .line 1141
    :cond_9
    iget-object v1, p0, Ldnf;->g:Lldm;

    iget-object v2, p0, Ldnf;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v5}, Ldnh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v6, v7, v3}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v1

    .line 1142
    if-eqz v1, :cond_a

    .line 1143
    iget-object v2, p0, Ldnf;->f:Ldne;

    .line 4058
    iget-object v2, v2, Ldne;->b:Ldnc;

    .line 1143
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v1}, Ldnc;->a(JLjava/lang/Object;)V

    .line 1145
    :cond_a
    iget-object v1, p0, Ldnf;->g:Lldm;

    iget-object v2, p0, Ldnf;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v5}, Ldnh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v6, v7, v3}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v1

    .line 1146
    if-eqz v1, :cond_1

    .line 1147
    iget-object v2, p0, Ldnf;->f:Ldne;

    .line 4063
    iget-object v2, v2, Ldne;->c:Ldnc;

    .line 1147
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v1}, Ldnc;->a(JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 1151
    :cond_b
    invoke-virtual {p0, p2}, Ldnf;->a(Ldnf$a;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldnf;->a:Z

    .line 172
    iget-object v0, p0, Ldnf;->e:Ldxc;

    invoke-virtual {v0}, Ldxc;->a()V

    .line 174
    return-void
.end method

.method a(Ldnf$a;)V
    .locals 2
    .param p1, "onLoadResult"    # Ldnf$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0}, Lhcv;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 159
    invoke-interface {p1}, Ldnf$a;->a()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldnf$2;

    invoke-direct {v1, p0, p1}, Ldnf$2;-><init>(Ldnf;Ldnf$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ldnf$a;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "onLoadResult"    # Ldnf$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-boolean v0, p0, Ldnf;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0, p2}, Ldnf;->a(Ldnf$a;)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Ldnf;->e:Ldxc;

    .line 1062
    new-instance v1, Ldnf$1;

    invoke-direct {v1, p0, p2, p1}, Ldnf$1;-><init>(Ldnf;Ldnf$a;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0, v1}, Ldxc;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
