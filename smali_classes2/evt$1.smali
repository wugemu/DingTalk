.class final Levt$1;
.super Ljava/lang/Object;
.source "TeleAudioFocusListener.java"

# interfaces
.implements Lciu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levt;


# direct methods
.method constructor <init>(Levt;)V
    .locals 0
    .param p1, "this$0"    # Levt;

    .prologue
    .line 33
    iput-object p1, p0, Levt$1;->a:Levt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lciu$a;)V
    .locals 2
    .param p1, "newStatus"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Levt;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "New audio focus name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Lciu$a;)V
    .locals 2
    .param p1, "oldInfo"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 44
    invoke-static {}, Levt;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "New audio focus name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lewr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lciu;->a(Lciu$a;)Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Levt$1;->a:Levt;

    invoke-static {v0}, Levt;->a(Levt;)V

    goto :goto_0
.end method
