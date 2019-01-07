.class final Lhou$1;
.super Ljava/lang/Object;
.source "RuntimeNavigator.java"

# interfaces
.implements Lhlt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lhou$1;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lhou$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlt$b;)V
    .locals 3
    .param p1, "openMiniResult"    # Lhlt$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    if-eqz p1, :cond_2

    .line 81
    iget v1, p1, Lhlt$b;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 82
    iget-object v0, p1, Lhlt$b;->b:Ljava/lang/String;

    .line 83
    .local v0, "fallbackUrl":Ljava/lang/String;
    iget-object v1, p0, Lhou$1;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lhou$1;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lhou$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lhou$1;->a:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 91
    .end local v0    # "fallbackUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lhou$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lhou$1;->a:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
