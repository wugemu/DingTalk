.class final Lewr$4;
.super Ljava/lang/Object;
.source "TeleConfVoipHelper.java"

# interfaces
.implements Liec$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewr;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "beSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 264
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lewr;->a(Z)V

    .line 265
    const-string/jumbo v1, "tele_conf"

    const-string/jumbo v2, "voip_call"

    const-string/jumbo v3, "Init failed."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {}, Lewr;->d()Z

    move-result v0

    .line 270
    .local v0, "registered":Z
    if-nez v0, :cond_1

    .line 272
    invoke-static {}, Liec;->a()V

    .line 273
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lewr;->a(Z)V

    .line 274
    const-string/jumbo v1, "tele_conf"

    const-string/jumbo v2, "voip_call"

    const-string/jumbo v3, "Register user failed."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {v3}, Lewr;->b(Z)Z

    .line 278
    invoke-static {}, Lewr;->a()Lewr;

    move-result-object v1

    invoke-virtual {v1, v3}, Lewr;->a(Z)V

    .line 279
    const-string/jumbo v1, "tele_conf"

    const-string/jumbo v2, "voip_call"

    const-string/jumbo v3, "Set incoming listener"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Lewr$4$1;

    invoke-direct {v1, p0}, Lewr$4$1;-><init>(Lewr$4;)V

    invoke-static {v1}, Liec;->a(Lied$g;)V

    .line 368
    new-instance v1, Lewr$4$2;

    invoke-direct {v1, p0}, Lewr$4$2;-><init>(Lewr$4;)V

    invoke-static {v1}, Liec;->a(Lied$i;)V

    goto :goto_0
.end method
