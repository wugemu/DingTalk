.class public Ldlw;
.super Ldlv;
.source "MultiToTaskEncryptFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlv",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Ldlw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldlw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ldlv;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ldlw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ldlw;Ldlp;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Ldlw;
    .param p1, "x1"    # Ldlp;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    .line 1087
    iget-object v0, p1, Ldlp;->c:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1088
    if-eqz v0, :cond_0

    .line 1089
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 1097
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    new-instance v1, Ldlw$2;

    invoke-direct {v1, p0, p1}, Ldlw$2;-><init>(Ldlw;Ldlp;)V

    invoke-virtual {v0, p2, v1}, Lify;->a(Ljava/lang/String;Lifv;)V

    .line 1090
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p1, Ldlp;->a:Landroid/app/Activity;

    iget-object v2, p1, Ldlp;->b:Lcom/alibaba/wukong/im/Conversation;

    new-instance v3, Ldlw$3;

    invoke-direct {v3, p0, p1}, Ldlw$3;-><init>(Ldlw;Ldlp;)V

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ldlm;)V
    .locals 4
    .param p1, "params"    # Ldlm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Ldlm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Ldlw;->b(Ldlm;)V

    goto :goto_0

    .line 46
    :cond_1
    instance-of v1, p1, Ldlp;

    if-nez v1, :cond_2

    .line 47
    const-string/jumbo v1, "Params must be MultiToTaskSingleParams"

    invoke-static {p1, v1}, Ldlw;->a(Ldlm;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 51
    check-cast v0, Ldlp;

    .line 1059
    .local v0, "multiToTaskSingleParams":Ldlp;
    iget-object v1, v0, Ldlp;->c:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 1060
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    new-instance v3, Ldlw$1;

    invoke-direct {v3, p0, v0}, Ldlw$1;-><init>(Ldlw;Ldlp;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    goto :goto_0
.end method
