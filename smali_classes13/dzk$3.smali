.class final Ldzk$3;
.super Ljava/lang/Object;
.source "VoiceRecordImpl.java"

# interfaces
.implements Lciu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldzk;


# direct methods
.method constructor <init>(Ldzk;)V
    .locals 0
    .param p1, "this$0"    # Ldzk;

    .prologue
    .line 351
    iput-object p1, p0, Ldzk$3;->a:Ldzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lciu$a;)V
    .locals 4
    .param p1, "newStatus"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "newStatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, "VoiceRecordImpl"

    .line 1048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Ldzk$3;->a:Ldzk;

    iget-object v1, p0, Ldzk$3;->a:Ldzk;

    iget-wide v2, v1, Ldzk;->b:J

    .line 1205
    invoke-virtual {v0, v2, v3}, Ldzk;->b(J)Z

    .line 358
    :cond_0
    return-void
.end method

.method public final b(Lciu$a;)V
    .locals 1
    .param p1, "oldInfo"    # Lciu$a;

    .prologue
    .line 362
    iget-object v0, p0, Ldzk$3;->a:Ldzk;

    iget-object v0, v0, Ldzk;->d:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldzk$3;->a:Ldzk;

    iget-object v0, v0, Ldzk;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lciu;->a(Lciu$a;)Z

    .line 365
    :cond_0
    return-void
.end method
