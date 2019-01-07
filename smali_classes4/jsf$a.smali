.class final Ljsf$a;
.super Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;
.source "WXAppInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Ljsf;


# direct methods
.method private constructor <init>(Ljsf;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Ljsf$a;->b:Ljsf;

    invoke-direct {p0, p1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;-><init>(Lcom/taobao/windmill/rt/app/AbstractAppInstance;)V

    return-void
.end method

.method synthetic constructor <init>(Ljsf;B)V
    .locals 0
    .param p1, "x0"    # Ljsf;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Ljsf$a;-><init>(Ljsf;)V

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/rt/app/AbstractAppInstance$a;->a(I[Ljava/lang/String;[I)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "actionRequestPermissionsResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string/jumbo v1, "permissions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "grantResults"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Ljsf$a;->b:Ljsf;

    invoke-static {v1}, Ljsf;->b(Ljsf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 284
    return-void
.end method
