.class public Ldjo;
.super Ljava/lang/Object;
.source "EmotionSendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjo$a;
    }
.end annotation


# static fields
.field private static a:Ldjo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a()Ldjo;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Ldjo;->a:Ldjo;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Ldjo;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Ldjo;->a:Ldjo;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ldjo;

    invoke-direct {v0}, Ldjo;-><init>()V

    sput-object v0, Ldjo;->a:Ldjo;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Ldjo;->a:Ldjo;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldjo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Ldjo;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ldjo$a;
    .param p9, "x8"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p9}, Ldjo;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V
    .locals 11
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "emotionPackageId"    # Ljava/lang/String;
    .param p3, "emotionId"    # J
    .param p5, "emotionType"    # I
    .param p6, "emotionMediaId"    # Ljava/lang/String;
    .param p7, "emotionAuthMediaId"    # Ljava/lang/String;
    .param p8, "sendDialogListener"    # Ldjo$a;
    .param p9, "appendText"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v2, Ldiz;

    invoke-direct {v2, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 130
    .local v2, "chatMessageSender":Ldiz;
    new-instance v3, Ldjo$4;

    move-object/from16 v0, p9

    invoke-direct {v3, p0, v0, p1}, Ldjo$4;-><init>(Ldjo;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2131
    iput-object v3, v2, Ldiz;->b:Ldiz$a;

    .line 2205
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Ldiz;->a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ILdcu;)Z

    .line 151
    if-eqz p8, :cond_0

    .line 152
    invoke-interface/range {p8 .. p8}, Ldjo$a;->a()V

    .line 154
    :cond_0
    return-void
.end method
