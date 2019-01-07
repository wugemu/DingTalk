.class final Lfxn$1;
.super Ljava/lang/Object;
.source "UserDeviceIdentifierHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxn;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lfxn;


# direct methods
.method constructor <init>(Lfxn;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lfxn;

    .prologue
    .line 64
    iput-object p1, p0, Lfxn$1;->b:Lfxn;

    iput-object p2, p0, Lfxn$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 67
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v0

    .line 68
    .local v0, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 69
    iget-object v3, p0, Lfxn$1;->b:Lfxn;

    invoke-static {v3}, Lfxn;->a(Lfxn;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "key_upload_device_identifier"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, "uploaded":Z
    if-nez v2, :cond_0

    .line 71
    iget-object v3, p0, Lfxn$1;->b:Lfxn;

    iget-object v4, p0, Lfxn$1;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lfxn;->a(Lfxn;Landroid/content/Context;)V

    .line 74
    .end local v2    # "uploaded":Z
    :cond_0
    return-void
.end method
