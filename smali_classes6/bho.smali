.class public final Lbho;
.super Ljava/lang/Object;
.source "ConversationNameEvent.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbho$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field private d:Lbho$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLbho$a;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isFromTelConf"    # Z
    .param p3, "conversationNameEventCallback"    # Lbho$a;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lbho;->b:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lbho;->c:Z

    .line 29
    iput-object p3, p0, Lbho;->d:Lbho$a;

    .line 30
    return-void
.end method

.method static synthetic a(Lbho;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbho;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbho;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lbho;->d:Lbho$a;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbho$2;

    invoke-direct {v1, p0, p1}, Lbho$2;-><init>(Lbho;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lbho;)Z
    .locals 1
    .param p0, "x0"    # Lbho;

    .prologue
    .line 19
    iget-boolean v0, p0, Lbho;->a:Z

    return v0
.end method

.method static synthetic b(Lbho;)V
    .locals 0
    .param p0, "x0"    # Lbho;

    .prologue
    .line 19
    invoke-virtual {p0}, Lbho;->a()V

    return-void
.end method

.method static synthetic c(Lbho;)Lbho$a;
    .locals 1
    .param p0, "x0"    # Lbho;

    .prologue
    .line 19
    iget-object v0, p0, Lbho;->d:Lbho$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lbho;->d:Lbho$a;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbho$3;

    invoke-direct {v1, p0}, Lbho$3;-><init>(Lbho;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-boolean v0, p0, Lbho;->a:Z

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lbho;->a()V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1034
    iget-boolean v0, p0, Lbho;->a:Z

    if-nez v0, :cond_0

    .line 1037
    iget-boolean v0, p0, Lbho;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1038
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_conversation_title_tel_conf:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbho;->a(Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-boolean v0, p0, Lbho;->c:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1040
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbho;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1042
    :cond_2
    invoke-virtual {p0}, Lbho;->a()V

    goto :goto_0
.end method
