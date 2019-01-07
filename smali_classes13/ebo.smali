.class public final Lebo;
.super Ljava/lang/Object;
.source "VideoEncode.java"


# instance fields
.field public a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/alibaba/wukong/im/Message;

.field public e:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcma;)V
    .locals 1
    .param p1, "inputUrl"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lebo;->f:Z

    .line 57
    iput-object p1, p0, Lebo;->b:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lebo;->e:Lcma;

    .line 59
    iput-object p2, p0, Lebo;->d:Lcom/alibaba/wukong/im/Message;

    .line 60
    return-void
.end method

.method static a(Lcom/alibaba/wukong/im/Message;)J
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    .line 283
    .local v0, "duration":J
    if-eqz p0, :cond_0

    .line 284
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 285
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v3, v2, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v3, :cond_1

    .line 286
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .end local v2    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->duration()J

    move-result-wide v0

    .line 291
    :cond_0
    :goto_0
    return-wide v0

    .line 287
    .restart local v2    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_1
    instance-of v3, v2, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    if-eqz v3, :cond_0

    .line 288
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    .end local v2    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->duration()J

    move-result-wide v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)J
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-wide v2

    .line 273
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lebo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "tpffmpeg"

    new-instance v2, Lebo$1;

    invoke-direct {v2, p0}, Lebo$1;-><init>(Lebo;)V

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    goto :goto_0
.end method
