.class final Lecg$2;
.super Ljava/lang/Object;
.source "FullScreenVoiceRecordDialog.java"

# interfaces
.implements Lciu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lecg;


# direct methods
.method constructor <init>(Lecg;)V
    .locals 0
    .param p1, "this$0"    # Lecg;

    .prologue
    .line 308
    iput-object p1, p0, Lecg$2;->a:Lecg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lciu$a;)V
    .locals 2
    .param p1, "newStatus"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 311
    invoke-static {}, Lecg;->c()Ljava/lang/String;

    move-result-object v0

    .line 1048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lecg$2;->a:Lecg;

    invoke-virtual {v0}, Lecg;->b()V

    .line 314
    :cond_0
    return-void
.end method

.method public final b(Lciu$a;)V
    .locals 1
    .param p1, "oldInfo"    # Lciu$a;

    .prologue
    .line 318
    iget-object v0, p0, Lecg$2;->a:Lecg;

    invoke-static {v0}, Lecg;->b(Lecg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecg$2;->a:Lecg;

    invoke-static {v0}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lciu;->a(Lciu$a;)Z

    .line 321
    :cond_0
    return-void
.end method
